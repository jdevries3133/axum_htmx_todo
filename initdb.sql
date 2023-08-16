create extension if not exists "uuid-ossp";

-- Ensure the database and schema names here match the databaes and schema
-- name in the `.env` file.
create database todo;
create schema todo;
\c todo;


create table item(
    id serial primary key,
    title varchar(255) not null,
    is_completed boolean not null default false
);

insert into item (title, is_completed) values
    ('do the thing', false),
    ('and the other thing is done', true)
;
