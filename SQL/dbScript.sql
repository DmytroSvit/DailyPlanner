create table users(
	user_id serial,
	username varchar ( 20 ) UNIQUE NOT NULL,
	user_password varchar ( 40 ) NOT NULL,
	email varchar ( 255 ) PRIMARY KEY,
	premium boolean
);
	
create table activities(
	activity_name varchar ( 20 ) NOT NULL,
	color varchar ( 20 ) PRIMARY KEY
);

create domain done as integer
	check (value >= 0 and value <= 2); 

create table tasks(
	task_name varchar ( 40 ) NOT NULL,
	time_from time NOT NULL,
    time_to time NOT NULL,
	task_id serial PRIMARY KEY,
	color varchar(20) NOT NULL,
	email varchar (255) NOT NULL,
	creation_date date NOT NULL,
	status done NOT NULL,
	foreign key (color)
		references activities (color),
	foreign key (email)
		references users(email)
);