CREATE TABLE book_user_comments
(
    book_id         integer NOT NULL REFERENCES books (id),
    user_comment_id integer NOT NULL REFERENCES user_comments (id),
    rating          integer CHECK (rating > 0 AND rating <= 5),

    PRIMARY KEY (book_id, user_comment_id)
);
