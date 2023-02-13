select items.name,
       (select count(bids.id) from bids where bids.item_id = items.id)
from items;