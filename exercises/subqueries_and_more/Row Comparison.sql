-- select * from items where name = 'Painting';
select id from items
where row('Painting', 100.00, 250.00) = 
  row(name, initial_price, sales_price);