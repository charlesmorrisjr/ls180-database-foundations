alter table stars
add check (spectral_type in ('O', 'B', 'A', 'F', 'G', 'K', 'M')),
alter column spectral_type set not null;
