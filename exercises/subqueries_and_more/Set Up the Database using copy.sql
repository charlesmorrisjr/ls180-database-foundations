create table bidders (
  id serial primary key,
  name text not null
);

create table items (
  id serial primary key,
  name text not null,
  initial_price numeric(6, 2) not null check (initial_price between 0.01 and 1000.00),
  sales_price numeric(6, 2) check (sales_price between 0.01 and 1000.00)
);

create table bids (
  id serial primary key,
  bidder_id integer not null references bidders (id) on delete cascade,
  item_id integer not null references items (id) on delete cascade,
  amount numeric(6, 2) not null check (amount between 0.01 and 1000.00)
);

create index on bids (bidder_id, item_id);

\copy bidders from 'bidders.csv' with header csv
\copy items from 'items.csv' with header csv
\copy bids from 'bids.csv' with header csv