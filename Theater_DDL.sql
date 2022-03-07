-- Cretae customer table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	membership BOOLEAN
);

-- Create Movies table
CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(50),
	movie_lenght TIME,
	movie_date DATE,
	movie_time TIME ,
	move_hall VARCHAR(10)
);

ALTER TABLE movies 
RENAME COLUMN move_hall TO movie_hall;

ALTER TABLE movies
ALTER COLUMN movie_date TYPE DATE DEFAULT CURRENT_DATE;

-- cretae tickeys table, FK- moive_id, customer_id 
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id),
	paid_amount NUMERIC(4,2),
	ticket_day DATE DEFAULT CURRENT_DATE,
	ticket_time TIME DEFAULT CURRENT_TIMESTAMP,
	customer_id INTEGER NULL, 
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

-- Create Concessions table, FK- customer_id
CREATE TABLE concessions(
	con_id SERIAL PRIMARY KEY,
	item VARCHAR(15),
	item_price NUMERIC(4,2),
	quantity INTEGER,
	customer_id INTEGER NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);