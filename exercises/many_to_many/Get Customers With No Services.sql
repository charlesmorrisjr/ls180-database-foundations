select distinct c.* from customers c
left join customers_services cs
        on c.id = cs.customer_id
where cs.service_id is null;

-- Further Exploration
select distinct c.*, s.* from customers c
left join customers_services cs
        on c.id = cs.customer_id
full join services s
        on cs.service_id = s.id
where cs.service_id is null or cs.customer_id is null;