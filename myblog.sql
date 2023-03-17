
SELECT *
FROM board
WHERE id = 6;

INSERT INTO board(title, content, userId)
VALUES ('테스트글1', '테스트 내용', 1);

SELECT * FROM user
WHERE username = '이춘향';
desc user;
INSERT INTO user(username, password, email, address, userRole, createDate)
VALUES (?, ?, ?, ?, ?, now());

DELETE FROM user WHERE username = '' AND password = '';

UPDATE user
SET password = '1354', email = 'c@naver.con', address = '부산시 서구'
WHERE username = '티모';
