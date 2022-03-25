CREATE TABLE Authors(
	author_id serial,
	firstName varchar(20),
	lastName varchar(20),
	PRIMARY KEY(author_id)
);

CREATE TABLE Books(
	books_id serial,
	author_id integer,
	title varchar(20),
	genre varchar(20),
	note integer,
	CHECK (genre IN ('Fiction-adulte', 'Non-fiction-adulte', 'Fiction-jeunesse', 'Non-fiction-jeunesse') ),
	CHECK ( note BETWEEN 1 AND 10 ),
	PRIMARY KEY(books_id),
	FOREIGN KEY(author_id) REFERENCES Authors(author_id) ON UPDATE CASCADE ON DELETE CASCADE
);
