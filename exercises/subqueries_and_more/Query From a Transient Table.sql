select max(bid_count) from
(select count(bidder_id) as bid_count from bids group by bidder_id) as new_table;
