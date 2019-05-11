CREATE TABLE authors
(
    id          serial  PRIMARY KEY,
    first_name  text    NOT NULL CHECK (trim(first_name) != ''),
    last_name   text    NOT NULL CHECK (trim(first_name) != ''),
    middle_name text,
    active      boolean DEFAULT true NOT NULL
);
