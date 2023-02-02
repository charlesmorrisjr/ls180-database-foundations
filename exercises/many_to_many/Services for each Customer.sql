select c.name,
       string_agg(s.description, ', ') as services
from customers c
left join customers_services cs
       on c.id = cs.customer_id
left join services s
       on s.id = cs.service_id
group by c.id;