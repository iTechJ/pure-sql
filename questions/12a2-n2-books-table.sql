CREATE TABLE books
(
    title        text     PRIMARY KEY CHECK (trim(title) != ''),
    description  text,
    author_1     text     NOT NULL,
    author_2     text
);
