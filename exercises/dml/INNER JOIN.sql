select devices.name, parts.part_number from devices
inner join parts on devices.id = parts.device_id;