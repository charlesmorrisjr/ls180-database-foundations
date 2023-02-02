create table devices (
  id serial primary key,
  name text not null,
  created_at timestamp default now()
);

create table parts (
  id serial primary key,
  part_number integer unique not null,
  device_id integer references devices (id)
);