CREATE TRIGGER check_book_rating_trigger
BEFORE UPDATE ON Books
FOR EACH ROW
EXECUTE check_book_rating();
