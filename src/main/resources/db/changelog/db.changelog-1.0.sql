--liquibase formatted sql

--changeset urgmaker:1
CREATE TABLE users
(
    id       UUID DEFAULT gen_random_uuid() PRIMARY KEY NOT NULL,
    username VARCHAR(100)                               NOT NULL,
    password VARCHAR(100)                               NOT NULL
);

CREATE UNIQUE INDEX idx_user_username ON users (username);