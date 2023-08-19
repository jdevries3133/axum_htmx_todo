use super::models;
use anyhow::Result;
use sqlx::{postgres::PgPool, query, query_as};

pub async fn get_items(
    db: &PgPool,
    offset: Option<i64>,
) -> Result<Vec<models::Item>> {
    struct QRes {
        id: i32,
        title: String,
        is_completed: bool,
    }
    let res = query_as!(
        QRes,
        "select id, title, is_completed from item limit 10 offset $1",
        offset.unwrap_or(0)
    )
    .fetch_all(db)
    .await?;

    Ok(res
        .iter()
        .map(|i| models::Item {
            id: Some(i.id),
            title: i.title.to_owned(),
            is_completed: i.is_completed,
        })
        .collect())
}

pub async fn save_item(
    db: &PgPool,
    mut item: models::Item,
) -> Result<models::Item> {
    struct QRes {
        id: i32,
    }
    if let Some(id) = item.id {
        query!(
            "
            update item
            set
                title = $1,
                is_completed = $2
            where id = $3
            ",
            item.title,
            item.is_completed,
            id
        )
        .fetch_one(db)
        .await?;
        Ok(item)
    } else {
        let res = query_as!(
            QRes,
            "
        insert into item (title, is_completed) values ($1, $2)
        returning id
        ",
            item.title,
            item.is_completed
        )
        .fetch_one(db)
        .await?;

        item.id = Some(res.id);

        Ok(item)
    }
}
