INSERT INTO "select 
	extract (month from order_date) as month,
	sum(after_discount) as ""transaction value""
from
	order_detail
where  
	extract (year from order_date) = 2021
and
	is_valid = 1
group by
	month
order by
	""transaction value"" desc
limit
	1
" ("month","transaction value") VALUES
	 (8,227862744);
