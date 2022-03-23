select * from movie_theater 

-- Insert theater
insert into movie_theater(
	theater_name,
	address
) values (
	'The good theater',
	'123 Fake St.'
), (
	'The Better Theater',
	'321 Real St.'
)

-- Insert movies
insert into movie(
	movie_name
) values (
	'I''m the shark bait!'
), (
	'The Toad War'
)

select * from movie

-- Insert show times
insert into show_time(
	movie_time,
	theater_id,
	movie_id
) values ('04:00', 1,	1), 
		 ('04:15', 1,	1)
		 
insert into show_time(movie_time, theater_id, movie_id)
			values	 ('04:00', 2, 1),
					 ('04:45', 2, 1),
					 ('03:15', 1, 2),
					 ('03:55', 1, 2),
					 ('04:15', 1, 2),
					 ('03:45', 2, 2),
					 ('05:15', 2, 2),
					 ('06:45', 2, 2)
					 
select * from show_time order by theater_id

-- Insert into concession 
insert into concession(item_name, price)
				values('SM Popcorn', 04.99),
					  ('MD Popcorn', 05.99),
					  ('LG Popcorn', 06.99),
					  ('Junior Mints', 03.99),
					  ('Crunch Bites', 02.50),
					  ('Lg Pop', 06.99)

select * from concession

-- Insert into customer 
insert into customer(first_name, last_name)
			  values('Nathan', 'Perrine'),
			  		('Bobbert', 'Blobbert')
			  		
-- Forgot addresses
update customer 
set address = '111 Fake St.'
where customer_id = 1

update customer 
set address = '999 Real St.'
where customer_id = 2

select * from customer

-- Ticket
insert into ticket(theater_id, customer_id, movie_id, show_time_id)
			values(1, 1, 1, 1), 
				  (1, 2, 2, 8)
				  
select * from ticket 

-- Orders
insert into order_(customer_id, ticket_id, concession_id)
			values(1, 1, 1), 
				  (1, 1, 4)
				  
select * from order_

-- order concessions
insert into order_concession(order_id, concession_id)
					  values(1, 1),
					  		(1, 4),
					  		(1, 6)
					  		
select * from order_concession