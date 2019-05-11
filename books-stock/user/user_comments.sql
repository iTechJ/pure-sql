CREATE TABLE user_comments
(
    id         serial       PRIMARY KEY,
    user_id    integer      NOT NULL REFERENCES users (id),
    created_at timestamptz  DEFAULT now() NOT NULL,
    content    text         NOT NULL
);
