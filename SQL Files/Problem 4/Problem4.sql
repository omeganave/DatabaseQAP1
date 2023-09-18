create table customer (
	customer_id serial primary key,
	first_name varchar ( 35 ) not null,
	last_name varchar ( 35 ) not null,
	email varchar ( 255 ) unique not null,
	phone_number varchar ( 10 ) unique not null,
	address varchar ( 50 ) not null,
	city varchar ( 85 ) not null,
	province varchar ( 2 ) not null,
	postal_code varchar ( 6 ) not null,
	created_on timestamp not null,
	last_updated timestamp
);

create table orders (
	-- Obviously a lot of this information would be stored in a seperate table,
	-- but this example is using only two tables.
	order_id serial primary key,
	customer_id int not null,
	information varchar ( 250 ) not null,
	number_of_items int not null,
	total_price numeric (6, 2) not null,
	order_date timestamp not null,
	foreign key (customer_id)
		references customer (customer_id)
);