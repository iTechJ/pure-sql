PREPARE insert_simple_book (char(2), text) AS
    INSERT INTO books(original_language_code, title)
    VALUES($1, $2);

EXECUTE insert_simple_book('RU', 'Как пасти котов');
EXECUTE insert_simple_book('BY', 'Спадчына');

DEALLOCATE insert_simple_book;
