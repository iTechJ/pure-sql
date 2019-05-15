CREATE TABLE book_resources
(
    id            serial    PRIMARY KEY,
    book_id       integer   NOT NULL REFERENCES books (id),
    language_code char(2)   NOT NULL REFERENCES languages (code),
    url           text      NOT NULL UNIQUE CHECK (trim(url) != '')
);

CREATE INDEX book_resource_book_id_idx ON book_resources (book_id);
