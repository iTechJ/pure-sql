CREATE FUNCTION new_books_in_interval(vStartDate date, vEndDate date) RETURNS setof integer AS $$
    SELECT id
      FROM books
     WHERE first_published_date BETWEEN vStartDate AND vEndDate
$$ LANGUAGE SQL STRICT STABLE;


-- Usage example
SELECT b.title
  FROM books b
  JOIN new_books_in_interval('2017-01-01'::date, '2019-12-31'::date) nb(id)
    ON b.id = nb.id;
