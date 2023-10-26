select 
	category,
	order_date,
	round(sum(sales), 2) sales_over_time
from orders o 
group by 
	category, 
	order_date
order by 
	category, 
	order_date; 
