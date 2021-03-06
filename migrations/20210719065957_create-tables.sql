-- Add migration script here
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

create table users (
    id uuid default uuid_generate_v4() primary key,
    name varchar not null unique,
    email varchar not null unique,
    password varchar not null,
    bio varchar null,
    image varchar null,
    created_at timestamp not null default current_timestamp,
    updated_at timestamp not null default current_timestamp
);
