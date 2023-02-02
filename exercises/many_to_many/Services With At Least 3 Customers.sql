select s.description, count(s.id)
from services s
left join customers_services cs
       on s.id = cs.service_id
group by s.description
having count(s.id) >= 3;