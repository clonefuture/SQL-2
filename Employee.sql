
create table if not exists Employee (
	IdEmployee serial primary key,
	IdHeader int references Employee(IdEmployee),
	Employee_name text not null,
	Department text not null
);

