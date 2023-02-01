alter table planets
alter column mass type numeric,
alter column mass set not null,
add check (mass > 0.0),
alter column designation set not null;