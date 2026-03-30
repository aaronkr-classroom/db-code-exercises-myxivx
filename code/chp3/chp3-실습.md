STEP 1 : 시스템 선택
- 온라인 쇼핑몰


STEP 2 : 요구사항 작성

- 사용자 : 회원, 관리자
- 요구사항
1. 관리자는 회원의 정보를 저장할 수 있다.
2. 관리자는 상품의 정보를 저장할 수 있다.
3. 회원은 상품을 주문할 수 있다.
4. 주문 내역에는 주문한 회원과 상품 정보가 포함된다.
5. 관리자는 상품의 재고 수량을 관리할 수 있다.
6. 관리자는 회원별 주문 내역을 조회할 수 있다.


STEP 3 : 데이터 설계

[Entities]
- Customer
- Product

[Customer Properties]
- customer_id 	(BIGSERIAL)
- name 		(VARCHAR(20))
- phone		(VARCHAR(30))
- address		(VARCHAR(50))
- point		(NUMERIC)

[Product Properties]
- product_id 	(BIGSERIAL)
- product_name 	(VARCHAR(30))
- price		(NUMERIC)
- stock		(NUMERIC)


STEP 4 : SQL 작성

CREATE TABLE customer (
	customer_id BIGSERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	phone VARCHAR(20),
	address VARCHAR(50),
	point NUMERIC
);

CREATE TABLE product (
	product_id BIGSERIAL PRIMARY KEY,
	product_name VARCHAR(30) NOT NULL,
	price NUMERIC,
	stock NUMERIC
);

INSERT INTO customer (name, phone, address, point) 
VALUES
	('홍길동', '010-1111-1111', '충주시 대소원면', 500),
	('이순신', '010-2222-2222', '충주시 대소원면', 200);

INSERT INTO product (product_name, price, stock)
VALUES
	('사과', 2000, 30),
	('오렌지', 3500, 55),
	('바나나', 2500, 23),
	('수박', 10000, 16);

SELECT * FROM customer WHERE point > 300;
SELECT * FROM product WHERE stock > 20 ORDER BY price desc;
