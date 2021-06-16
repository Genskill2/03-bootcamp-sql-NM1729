CREATE TABLE publisher (
	id integer primary key,
	name text,
	country text
);

CREATE TABLE books (
	id integer primary key,
	title text,
	publisher serial,
	FOREIGN KEY (publisher) REFERENCES publisher(id)		
);

CREATE TABLE subjects (
	id integer primary key,
	name text
);

CREATE TABLE books_subjects (
	book serial,
	subject serial,
	FOREIGN KEY (book) REFERENCES books(id)
	FOREIGN KEY (subject) REFERENCES subjects(id)
);
