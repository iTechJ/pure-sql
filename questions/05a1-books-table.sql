CREATE TABLE books
(
    id                     serial   PRIMARY KEY,
    original_language_code char(2)  NOT NULL,
    title                  text     NOT NULL CHECK (trim(title) != ''),
    description            text,
    first_published_date   date
);
