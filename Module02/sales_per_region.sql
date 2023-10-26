select 
	region,
	round(sum(sales), 2) sales
from orders o
group by region
order by sales desc;