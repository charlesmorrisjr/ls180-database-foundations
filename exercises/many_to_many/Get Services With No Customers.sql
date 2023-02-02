select s.description from customers_services cs
right join services s
        on s.id = cs.service_id
where cs.customer_id is null;
