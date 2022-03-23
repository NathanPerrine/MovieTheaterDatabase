-- Create movie theater table
create table movie_theater(
	theater_id serial primary key,
	theater_name VARCHAR(50),
	address VARCHAR(50)
)

-- Create Movie Table
create table movie(
	movie_id serial primary key,
	movie_name VARCHAR(50)
)

-- Create Show Times
create table show_time(
	show_time_id SERIAl primary key,
	theater_id int not null,
	foreign key(theater_id) references movie_theater(theater_id),
	movie_id int not null ,
	foreign key(movie_id) references movie(movie_id)
)

--Forgot to add the movie time
alter table show_time
add column movie_time TIME

-- Create customer table
create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(100)

select * from customer
	
-- Create order table 
-- add ticket and concession after creating those tables
create table order_(
	order_id serial primary key,
	customer_id int,
	foreign key(customer_id) references customer(customer_id)
)

alter table order_
alter column customer_id set not null


alter table order_ 
	add concession_id int,
	add foreign key(concession_id) references concession(concession_id),
	add ticket_id int,
	add foreign key(ticket_id) references ticket(ticket_id)

select * from order_	
	
--create concesssion table 
create table concession(
	concession_id SERIAL primary key,
	item_name VARCHAR(50),
	price NUMERIC(5,2)
)

-- create ticket table 
create table ticket(
	ticket_id SERIAL primary key,
	theater_id int,
	foreign key(theater_id) references movie_theater(theater_id),
	customer_id int,
	foreign key(customer_id) references customer(customer_id),
	movie_id int,
	foreign key(movie_id) references movie(movie_id),
	show_time_id int,
	foreign key(show_time_id) references show_time(show_time_id)
)

alter table ticket
alter column theater_id set not null,
alter column customer_id set not null,
alter column movie_id set not null,
alter column show_time_id set not null

-- create order concessions
create table order_concession(
	ord_con_id serial primary key,
	order_id INT,
	foreign key(order_id) references order_(order_id),
	concession_id INT,
	foreign key(concession_id) references concession(concession_id)
)

alter table order_concession 
alter column order_id set not null, 
alter column concession_id set not null

