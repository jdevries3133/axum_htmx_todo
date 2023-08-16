use super::{
    components, components::Component, db_ops, errors::ServerError, AppState,
};
use anyhow::Result;
use axum::{
    extract::{Query, State},
    response::IntoResponse,
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

    Ok(components::ItemList {
        items: todos
    }.render())
}
