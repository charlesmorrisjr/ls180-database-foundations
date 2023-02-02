select devices.name, count(parts.part_number) from devices
left outer join parts on devices.id = parts.device_id
group by devices.name;