insert into
	address (address, district, city_id, phone, postal_code)
values
	('1901 Elliot Place', 'Washington', 600, 1234567890, 47457);

insert into
	customer (store_id, first_name, last_name, address_id, active, email)
values
	(1, 'Frasier', 'Crane', 614, 1, 'frasier.crane@sakilacustomer.org'),
	(1, 'Niles', 'Crane', 614, 1, 'niles.crane@sakilacustomer.org'),
	(1, 'Martin', 'Crane', 614, 1, 'martin.crane@sakilacustomer.org');