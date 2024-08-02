BEGIN;
DELETE FROM books WHERE book_id = '101';
COMMIT;

-- SELECT * FROM books WHERE book_id = '101' , esto sirve para comprobar si existe o no después de la eliminación
