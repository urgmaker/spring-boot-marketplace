--liquibase formatted sql

--changeset urgmaker:2
INSERT INTO users(username, password)
VALUES ('admin', 'admin');