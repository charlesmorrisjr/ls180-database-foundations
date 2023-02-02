select distinct c.* from customers c
inner join customers_services cs
        on c.id = cs.customer_id;