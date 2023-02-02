select sum(s.price) as gross from services s
inner join customers_services cs
       on s.id = cs.service_id