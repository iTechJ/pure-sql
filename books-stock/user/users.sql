CREATE TABLE users
(
    id         serial PRIMARY KEY,
    username   text   NOT NULL UNIQUE CHECK (username ~ '[\w\d\-_]{3}'),
    first_name text   NOT NULL CHECK (trim(first_name) != ''),
    last_name  text   NOT NULL CHECK (trim(first_name) != '')
);
