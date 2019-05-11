CREATE DATABASE books_stock;

\connect books_stock;

\ir language/languages.sql;

\ir user/users.sql;
\ir user/user_comments.sql;

\ir book/books.sql;
\ir book/book_resources.sql;
\ir book/book_user_comments.sql;
\ir book/book_comments.sql;

\ir author/authors.sql;
\ir author/author_books.sql;

\ir static_data.sql;
