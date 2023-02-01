create table stars (
  id serial primary key,
  name varchar(25) unique not null,
  distance integer not null check (distance > 0),
  spectral_type char(1),
  companions integer not null check (companions >= 0)
);

create table planets (
  id serial primary key,
  designation char(1) unique,
  mass integer
);