ALTER TABLE Authors
ADD author_sum_rating integer DEFAULT 0;

CREATE OR REPLACE FUNCTION change_rating()
  RETURNS TRIGGER AS $$
BEGIN

      IF New.note <> 0 THEN

        UPDATE Authors
          SET author_sum_rating = (
              SELECT SUM(note) FROM Books
          );

      END IF;

      RETURN NULL;

END ;
$$ LANGUAGE plpgsql;

CREATE TRIGGER change_rating_trigger
AFTER UPDATE ON Books
FOR EACH ROW
EXECUTE PROCEDURE change_rating();
