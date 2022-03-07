-- Add data to Customer table
INSERT INTO customer(
	first_name,
	last_name,
	email,
	membership
) VALUES (NULL, NULL, NULL, false), 
         (NULL, NULL, NULL, false),
         ('Zambak', 'Erik', 'zambak@gmail.com', true),
         (NULL, NULL, NULL, false),
         ('Lilo', 'Can', 'lilocan@gmail.com',true),
         ( 'Foxy', 'Cleopatra', 'Cleopatra@gmail.com',true);

SELECT * FROM customer

-- Data for movie table 

INSERT INTO movies(
	movie_name,
	movie_lenght,
	movie_date,
	movie_time,
	movie_hall
) VALUES ('In the Mood for Love','1:36:00', '03.15.2022', '13:00', 'Salon-1'),
		 ('Ashes of Time','1:40:00', '03.15.2022', '15:00', 'Salon-2'),
	     ('Days of Being Wild', '1:34:00', '03.15.2022', '16:00', 'Salon-1'),
	     ('Happy Together', '1:36:00', '03.15.2022', '22:00', 'Salon-2'),
	     ('Fallen Angels', '1:39:00', '03.15.2022', '19:00', 'Salon-1'),
	     ('Chungking Express', '1:42:00', '03.15.2022', '15:00', 'Salon-4'),
	     ('2046', '2:09:00', '03.15.2022', '10:00', 'Salon-3');

SELECT * FROM movies

-- tickets 
INSERT INTO tickets(
	movie_id, 
	paid_amount,
	customer_id
) VALUES (1, 25.00, 3),
		 (1, 50.00, 4);

SELECT *FROM tickets 

-- insetr data in concessions table 
INSERT INTO concessions VALUES (1, 'Small Popcorn', 15.00, 1, 3) -- bunu datatime olanla yapamadim
INSERT INTO concessions VALUES (2, 'Small Coke', 10.00, 1, 3),
							   (3, 'Heineken', 20.00, 2, 1);
							   
SELECT *FROM concessions  