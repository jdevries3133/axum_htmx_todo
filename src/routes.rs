use super::{
    components, components::Component, db_ops, errors::ServerError, models,
    AppState,
};
use anyhow::Result;
use axum::{
    extract::{Query, State},
    response::IntoResponse,
    Form,
};
use serde::Deserialize;

pub async fn root() -> impl IntoResponse {
    components::Page {
        title: "ToDo App".to_string(),
        children: Box::new(components::TodoHome {}),
    }
    .render()
}

#[derive(Deserialize)]
pub struct ListParams {
    pub page: Option<i64>,
}
pub async fn list_todos(
    State(AppState { db }): State<AppState>,
    Query(ListParams { page }): Query<ListParams>,
) -> Result<impl IntoResponse, ServerError> {
    let todos = db_ops::get_items(&db, page).await?;

    Ok(components::ItemList { items: todos }.render())
}

#[derive(Deserialize)]
pub struct CreateForm {
    title: String,
}
pub async fn create_todo(
    State(AppState { db }): State<AppState>,
    Form(CreateForm { title }): Form<CreateForm>,
) -> Result<impl IntoResponse, ServerError> {
    let item = db_ops::save_item(
        &db,
        models::Item {
            id: None,
            title,
            is_completed: false,
        },
    )
    .await?;

    Ok(components::Item { item }.render())
}
