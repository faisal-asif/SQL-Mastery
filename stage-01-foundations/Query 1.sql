-- To find the total count of each of the status of the orders and then order them by latest to oldest.

select
	order_status, count (order_status) as total_orders
from [dbo].[orders_dataset]
group by
	order_status
order by
	total_orders desc;