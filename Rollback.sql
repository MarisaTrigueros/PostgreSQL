
BEGIN;
DELETE FROM books WHERE book_id = '103';
COMMIT;

ROLLBACK;
