select
	segment,
	extract(month from order_date) order_month,
	round(sum(sales), 2)
from orders o 
group by 
	segment,
	order_month
order by
	order_month,
	segment;
	
select
	category,
	extract(month from order_date) order_month,
	round(sum(sales), 2)
from orders o 
group by 
	category,
	order_month
order by
	order_month;