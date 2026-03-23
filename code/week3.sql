/*
[Entities / 개체]
- User

[Properties / 속성]
- id 			(VARCHAR(30))
- nickname 		(VARCHAR(30))
- job			(VARCHAR(30))
- level			(NUMERIC)
- server		(VARCHAR(20))
*/

CREATE TABLE user_manage (
	id varchar(30),
	nickname varchar(30),
	job varchar(30),
	level numeric,
	server varchar(20)
);

INSERT INTO user_manage (id, nickname, job, level, server)
VALUES
	('abcd123', '딸기', '마법사', 50, 'Asia'),
	('knut000', '교통대불주먹', '전사', 98, 'Asia'),
	('qwer789', 'happy', '힐러', 26, 'America'),
	('zxcv159', '부캐키우는중', '도적', 39, 'Europe'),
	('wasd777', 'headkiller', '궁수', 74, 'America');

SELECT * FROM user_manage;

SELECT * FROM user_manage ORDER BY level DESC;

SELECT nickname, job, level FROM user_manage WHERE server LIKE 'A%';