use super::models;
use ammonia::clean;

mod private {
    /// All components must implement a sanitize method to sanitize inputs of type
    /// String or &str.
    ///
    /// As a general practice, the only inputs to a component that should be
    /// excluded from sanitization is a `dyn Component` (where a component receives
    /// another component as an input).
    ///
    /// In this case, the sanitization responsibility is deferred to that
    /// component's implementation.
    pub trait ComponentInternal {
        fn sanitize(&self) -> Self;
        // Hm, now this guy has to be able to mutate `self` as well, if we want to
        // be able to call render methods of i.e, `props.children` from within
        // this method... not great
        fn render_internal(sanitized: &Self) -> String;
    }
}

pub trait Component: private::ComponentInternal + Sized + Clone {
    // I would prefer this to take ownership of self, so that this becomes
    // sort of FnOnce type of thing... that would avoid always needing to
    // initialize components as mutable all over the place, but not a super
    // huge deal
    fn render(&self) -> String {
        let r = self.sanitize();
        Self::render_internal(&r)
    }
}

#[derive(Clone)]
pub struct Page<T>
where
    T: Component + Clone,
{
    pub title: String,
    pub children: Box<T>,
}

impl<T> Component for Page<T> where T: Component + Clone {}
impl<T> private::ComponentInternal for Page<T>
where
    T: Component,
{
    fn sanitize(&self) -> Page<T> {
        Page {
            title: clean(&self.title),
            children: self.children.clone(),
        }
    }
    fn render_internal(sanitized: &Page<T>) -> String {
        // note: we'll get a compiler error here until the tailwind build occurs.
        // Make sure you use `make build` in the Makefile to get both to happen
        // together
        let tailwind = include_str!("./tailwind.generated.css");
        format!(
            r#"
            <html>
                <head>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
                    <title>{title}</title>
                    <style>
                        {tailwind}
                    </style>
                </head>
                <body>
                    {body_html}
                    <script src="https://unpkg.com/htmx.org@1.9.3" integrity="sha384-lVb3Rd/Ca0AxaoZg5sACe8FJKF0tnUgR2Kd7ehUOG5GCcROv5uBIZsOqovBAcWua" crossorigin="anonymous"></script>
                </body>
            </html>
            "#,
            tailwind = tailwind,
            title = sanitized.title,
            body_html = sanitized.children.render()
        )
    }
}

#[derive(Default, Clone)]
pub struct TodoHome {}
impl Component for TodoHome {}
impl private::ComponentInternal for TodoHome {
    fn sanitize(&self) -> Self {
        TodoHome::default()
    }
    fn render_internal(_: &TodoHome) -> String {
        r#"
        <main class="flex items-center justify-center">
            <div class="max-w-md p-2 m-2 bg-indigo-50 rounded shadow">
                <h1 class="text-xl mb-4 text-center">Todo App</h1>
                <form class="flex flex-row" hx-post="/create-item">
                    <div class="flex items-center gap-2">
                        <label for="title">Add Item</label>
                        <input class="rounded" type="text" name="title" id="title" />
                    </div>
                    <button class="bg-blue-200 rounded shadow hover:shadow-none hover:bg-blue-300 hover:font-bold transition">Submit</button>
                </form>
                <div hx-get="/todo-items" hx-trigger="load">
                    Loading your todo list...
                </div>
            </div>
        </main>
        "#.to_string()
    }
}

#[derive(Clone)]
pub struct Item {
    item: models::Item,
}
impl Component for Item {}
impl private::ComponentInternal for Item {
    fn sanitize(&self) -> Self {
        Item {
            item: models::Item {
                title: clean(&self.item.title),
                id: self.item.id,
                is_completed: self.item.is_completed,
            },
        }
    }
    fn render_internal(sanitized: &Item) -> String {
        let checked_state = if sanitized.item.is_completed {
            "checked"
        } else {
            ""
        };
        format!(
            r#"
            {id:?} -- {title} -- {checked_state}
            "#,
            id = sanitized.item.id,
            title = sanitized.item.title,
            checked_state = checked_state
        )
    }
}

#[derive(Clone)]
pub struct ItemList {
    pub items: Vec<models::Item>,
}
impl Component for ItemList {}
impl private::ComponentInternal for ItemList {
    fn sanitize(&self) -> Self {
        // Item component will sanitize
        self.clone()
    }
    fn render_internal(sanitized: &ItemList) -> String {
        let mut items_clone = sanitized.items.clone();
        items_clone.sort_by_key(|i| i.is_completed);
        items_clone
            .iter()
            .map(|i| Item { item: i.clone() }.render())
            .collect::<Vec<String>>()
            .join("")
    }
}
