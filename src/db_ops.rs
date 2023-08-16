use super::models;
use anyhow::Result;
use sqlx::{postgres::PgPool, query_as};

pub async fn get_items(
    pool: &PgPool,
    offset: Option<i64>,
) -> Result<Vec<models::Item>> {
    struct QRes {
        id: i32,
        title: String,
        is_completed: bool,
    }
    let res = sqlx::query_as!(
        QRes,
        "select id, title, is_completed from item limit 10 offset $1",
        offset.unwrap_or(0)
    )
    .fetch_all(pool)
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
