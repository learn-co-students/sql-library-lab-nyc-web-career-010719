INSERT INTO series
(title, author_id, subgenre_id)
VALUES
("Series 1", 1, 4),
("Series 2", 2, 4);

INSERT INTO books
(title, year, series_id)
VALUES
("Book 1", 1999, 1),
("Book 2", 2000, 1),
("Book 3", 1980, 1),
("Book 4", 2008, 2),
("Book 5", 1997, 2),
("Book 6", 2001, 2);


INSERT INTO characters
(name, species, motto, series_id, author_id)
VALUES
("char 1", "dog", "hi", 1, 1),
("char 2", "cat", "hi", 1, 2),
("char 3", "bird", "hi", 1, 1),
("char 4", "human", "hi", 1, 1),
("char 5", "fish", "hi", 2, 2),
("char 6", "dog", "hi", 2, 1),
("char 7", "cat", "hi", 2, 1),
("char 8", "human", "hi", 2, 2);

INSERT INTO subgenres
(name)
VALUES
("mystery"), ("science-fiction");

INSERT INTO authors
(name)
VALUES
("jack"), ("jill");

INSERT INTO character_books
(book_id, character_id)
VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 5),
(4, 6),
(5, 5),
(5, 6),
(6, 5),
(6, 6),
(6, 7),
(6, 8);
