select part_number, device_id from parts
where device_id is not null;

select part_number, device_id from parts
where device_id is null;