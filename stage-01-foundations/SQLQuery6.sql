-- Orders with more than 3 orders purchased in a single order.

SELECT  [order_id]
      ,COUNT(order_id) as [total_item]
      
  FROM [ecommerce].[dbo].[olist_order_items_dataset]

  GROUP BY
    (order_id)

  HAVING
    count(order_id) >= 3

