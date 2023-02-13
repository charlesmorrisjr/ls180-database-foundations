select name from bidders
where exists (select 1 from bids where bids.bidder_id = bidders.id);