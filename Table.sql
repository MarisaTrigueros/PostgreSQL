create table Books(
	book_id serial primary key,
	title varchar(50) not null,
	author varchar(50) not null,
	genre varchar(50) not null,
	publihsed_year int not null,
	isbn varchar(32) not null,
	price numeric (10, 2) not null /*10000000.99*/,
	rating numeric (3, 1) check (rating <=100) not null,
	stock_count int  check(stock_count > 0) not null
);

