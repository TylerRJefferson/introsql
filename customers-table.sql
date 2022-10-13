CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	first_name varchar(20) NOT NULL,
	last_name varchar(30) NOT NULL,
	email varchar(255) NOT NULL,
	phone varchar(10) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP NULL
)
-- DROP TABLE customers

