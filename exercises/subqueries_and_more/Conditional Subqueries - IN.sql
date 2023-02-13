select name as "Bid on Items" from items
where items.id in (select item_id from bids);