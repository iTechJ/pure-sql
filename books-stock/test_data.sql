INSERT INTO users (id, username, first_name, last_name)
VALUES
    (11, 'jake_black', 'Jake', 'Black'),
    (12, 'yilliam_petera', 'Yilliam', 'Petera'),
    (13, 'olga_corton', 'Olga', 'Corton');

INSERT INTO authors (id, first_name, last_name, middle_name)
VALUES
    (21, 'Jon', 'Duckett', 'Peter'),
    (22, 'Matt', 'Frisbie', NULL);

INSERT INTO books (id, original_language_code, title, description, first_published_date)
VALUES
    (31, 'EN', 'Web Design with HTML, CSS, JavaScript and jQuery', NULL, '2017-02-19'),
    (32, 'EN', 'HTML and CSS: Design and Build Websites', 'Introduces HTML and CSS in a way that makes them accessible to everyone — hobbyists, students, and professionals', NULL),
    (33, 'EN', 'Professional JavaScript for Web Developers', NULL, '2016-11-21'),
    (34, 'EN', 'Head First JavaScript Programming', 'This brain-friendly guide teaches you everything from JavaScript language fundamentals to advanced topics.', NULL);

INSERT INTO book_resources (book_id, language_code, url)
VALUES
    (31, 'DE', 'https://www.amazon.com/Web-Design-HTML-JavaScript-jQuery/dp/1118907442'),
    (33, 'EN', 'https://www.amazon.com/Professional-JavaScript-Developers-Matt-Frisbie/dp/1119366445'),
    (34, 'EN', 'https://www.amazon.com/Head-First-JavaScript-Programming-Brain-Friendly/dp/144934013X'),
    (34, 'RU', 'https://www.amazon.com/ru/Head-First-JavaScript-Programming-Brain-Friendly/dp/144934013X');

INSERT INTO user_comments (id, user_id, created_at, content)
VALUES
    (41, 11, DEFAULT, 'It is very good because it is easy to read and well organized.'),
    (42, 13, '2019-02-14T10:12:21+03:00', 'This set is fantastic! I’ve been teaching myself html, css and JavaScript and JQuery for the last month or so.');

INSERT INTO book_user_comments (book_id, user_comment_id, rating)
VALUES
    (32, 41, NULL),
    (32, 42, 5);

INSERT INTO book_comments (book_id, user_id, rating, created_at, content)
VALUES
    (34, 13, 1, '2018-03-08T15:02:49-07:00', 'I gave this book 1 star because of the outrageous number of errors. I spent an hour trying to make all the corrections.'),
    (34, 13, 4, '2018-11-09T21:10:43Z', 'The book has great information but the quality of the physical book is miserable.'),
    (33, 13, NULL, '2019-01-31T05:47:25-05:00', 'The content of the book is perhaps one of the better JavaScript books out there.');
