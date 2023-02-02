select sum(price) from services
inner join customers_services on services.id = customers_services.service_id
where price > 100;

select sum(price) from services
cross join customers
where price > 100;