create table flights.flights (
	id serial primary key,
	code text,
	price money,
	departure_date text,
	origin text,
	destination text,
	empty_seats int,
	plane_type text,
	total_seats int
);

insert into flights.flights (code, price, departure_date, origin, destination, empty_seats, plane_type, total_seats) 
	values ('ER38sd', 400, '2017/07/26', 'CLE', 'SFO', 0, 'Boeing 737', 150);

insert into flights.flights (code, price, departure_date, origin, destination, empty_seats, plane_type, total_seats) 
	values ('DK38gj', 400, '2017/08/26', 'LAX', 'SFO', 0, 'Boeing 737', 150);

insert into flights.flights (code, price, departure_date, origin, destination, empty_seats, plane_type, total_seats) 
	values ('FK30gh', 400, '2017/09/26', 'LAX', 'CLE', 0, 'Boeing 737', 150);

insert into flights.flights (code, price, departure_date, origin, destination, empty_seats, plane_type, total_seats) 
	values ('JD58fk', 150, '2017/07/22', 'CLE', 'SFO', 75, 'Boeing 787', 300);

insert into flights.flights (code, price, departure_date, origin, destination, empty_seats, plane_type, total_seats) 
	values ('EI15dp', 200, '2017/08/01', 'LAX', 'CLE', 100, 'Boeing 787', 300);

insert into flights.flights (code, price, departure_date, origin, destination, empty_seats, plane_type, total_seats) 
	values ('OF57gp', 500, '2017/09/15', 'CLE', 'SFO', 50, 'Boeing 787', 300);

select * from flights.flights;