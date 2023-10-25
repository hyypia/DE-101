select round(sum(sales), 2) total_sales,
round(sum(profit), 2) total_profit,
round(sum(profit) / sum(sales) * 100, 2) profit_ratio,
round(sum(profit) / count(distinct order_id), 2) profit_per_order ,
round(sum(sales) / count(distinct customer_id), 2) sales_per_customer,
round(avg(discount), 2) avg_discount 
from orders o;