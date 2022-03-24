
create table if not exists Genre (
	id serial primary key,
	Genre varchar(40) unique not null
);

create table if not exists Artist (
	id serial primary key,
	Artist_name varchar(80) unique not null
);

create table if not exists Album (
	id serial primary key,
	Album_title varchar(80) unique not null,
	Release_year int not null
);

create table if not exists Collection (
	id serial primary key,
	Collection_title varchar(40) not null,
	Release_year int not null
);

create table if not exists Track (
	id serial primary key,
	Track_title varchar(80) not null,
	Track_duration int check(Track_duration > 0) not null,
	Album_id int references Album(id) not null
);

create table if not exists Genre_Artist (
	Genre_id int references Genre(id) not null,
	Artist_id int references Artist(id) not null
);

create table if not exists Artist_Album (
	Artist_id int references Artist(id) not null,
	Album_id int references Album(id) not null
);

create table if not exists Collection_Track (
	Collection_id int references Collection(id) not null,
	Track_id int references Track(id) not null
);