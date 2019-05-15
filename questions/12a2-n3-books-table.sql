CREATE TABLE books
(
    id                            serial    PRIMARY KEY,
    title                         text      NOT NULL CHECK (trim(title) != ''),
    publisher                     text      NOT NULL,
    publisher_official_name       text      NOT NULL,
    publisher_registration_number text      NOT NULL
);
