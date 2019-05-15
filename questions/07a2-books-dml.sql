INSERT INTO books (original_language_code, title, description)
VALUES ('EN', 'Head First JavaScript Programming', 'This brain-friendly guide teaches you everything from JavaScript language fundamentals to advanced topics.');

INSERT INTO books (id, original_language_code, first_published_date, title, description)
VALUES
    (31, 'EN', '2017-02-19', 'Web Design with HTML, CSS, JavaScript and jQuery', NULL),
    (32, 'EN', NULL, 'HTML and CSS: Design and Build Websites', 'Introduces HTML and CSS in a way that makes them accessible to everyone — hobbyists, students, and professionals'),
    (33, 'EN', '2016-11-21'::date, 'Professional JavaScript for Web Developers', NULL);

UPDATE books
   SET first_published_date = '2014-04-09'
 WHERE id = 32;

DELETE FROM books
 WHERE first_published_date IS NULL;
