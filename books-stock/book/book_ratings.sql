CREATE VIEW book_ratings AS
    SELECT
        book_id,
        AVG(rating) AS rating
      FROM book_user_comments
     WHERE rating IS NOT NULL
     GROUP BY book_id;
