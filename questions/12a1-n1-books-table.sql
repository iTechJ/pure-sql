CREATE TABLE books
(
    title      text     NOT NULL CHECK (trim(title) != ''),
    authors    text
);

INSERT INTO books (title, authors)
VALUES
    ('HTML and CSS: Design and Build Websites', 'John Doe'),
    ('Professional JavaScript for Web Developers', 'Lina Brown'),
    ('HTML and CSS: Design and Build Websites', 'Jon Duckett, Matt Frisbie');
