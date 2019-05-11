CREATE TABLE languages
(
    code char(2) PRIMARY KEY CHECK (code ~ '[A-Z]{2}'),
    name text    NOT NULL UNIQUE CHECK (trim(name) != '')
);
