CREATE TABLE Books (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	book_title TEXT,
	publcation_year INTEGER
);

CREATE TABLE People (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	adress TEXT
);

CREATE TABLE Autors (
	author_id INTEGER REFERENCES People(id),
	author_works INTEGER REFERENCES Books(id)
);

CREATE TABLE Lender (
	lender INTEGER REFERENCES People(id),
	lended_book INTEGER REFERENCES Books(id)
);

CREATE TABLE Lended (
	lended_book INTEGER REFERENCES Books(id),
	lended_date DATE,
	lended_due DATE
);

