CREATE TABLE user(
	id INT PRIMARY KEY
);


CREATE TABLE albums(
	userId INT,
    id INT PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    FOREIGN KEY (userId) REFERENCES user(id)
);

INSERT INTO user(id)
VALUES
	(1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8),
    (9),
    (10);

desc albums;
SELECT * FROM albums;

INSERT INTO albums(userId, id, title)
VALUES (1, 101, "ㅇㄹㅇㄹㄹ");

DELETE FROM albums WHERE id = '101';