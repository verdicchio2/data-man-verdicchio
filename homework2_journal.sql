CREATE TABLE people (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	adress TEXT
);

CREATE TABLE articles (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title TEXT,
	author INTEGER REFERENCES people(id),
	pages INTEGER
);

CREATE TABLE published (
	article INTEGER REFERENCES articles(id),
	pub_date DATE,
	vol INTEGER,
	issue INTEGER,
	issue TEXT
);

CREATE TABLE reviewed (
	article INTEGER REFERENCES articles(id),
	reviewer INTEGER REFERENCES people(id)
);

CREATE TABLE status (
	article INTEGER REFERENCES articles(id),
	submitted DATE,
	accepted DATE
);

