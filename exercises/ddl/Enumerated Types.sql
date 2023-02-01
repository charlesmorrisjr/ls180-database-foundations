alter table stars
drop constraint stars_spectral_type_check;

create type spectral_type_enum as enum ('O', 'B', 'A', 'F', 'G', 'K', 'M');

alter table stars
alter column spectral_type type spectral_type_enum
                           using spectral_type::spectral_type_enum;