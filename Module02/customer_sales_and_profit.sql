select 
	customer_id id,
	customer_name name,
	round(sum(sales), 2) sales,
	round(sum(profit), 2) profit,
	rank() over (order by round(sum(sales), 2) desc) rank
from orders o 
group by 
	id, 
	name;
