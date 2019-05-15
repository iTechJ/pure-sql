CREATE VIEW book_comments AS
    SELECT buc.book_id, uc.user_id, buc.rating, uc.created_at, uc.content
      FROM book_user_comments buc
      JOIN user_comments uc ON uc.id = buc.user_comment_id;

CREATE FUNCTION book_comments_crud_trigger() RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        RAISE NOTICE 'CRUD operations on book_comments are deprecated. Use user_comments and book_user_comments instead.';

        WITH user_comment AS (
            INSERT INTO user_comments (user_id, created_at, content)
            VALUES (new.user_id, new.created_at, new.content)
            RETURNING id
        )
        INSERT INTO book_user_comments (book_id, user_comment_id, rating)
        VALUES (new.book_id, (SELECT id FROM user_comment), new.rating);

        RETURN new;
    END IF;

    RETURN NULL;
END;
$$ LANGUAGE PLPGSQL;

CREATE TRIGGER book_comments_crud INSTEAD OF INSERT ON book_comments
    FOR EACH ROW EXECUTE PROCEDURE book_comments_crud_trigger();