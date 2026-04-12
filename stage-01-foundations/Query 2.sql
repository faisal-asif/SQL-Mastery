--To see how many orders were delivered late from the estimated given time

SELECT [order_id]
      ,[order_purchase_timestamp]
      ,[order_delivered_carrier_date]
      ,[order_delivered_customer_date]
      ,[order_estimated_delivery_date]
  FROM [ecommerce].[dbo].[orders_dataset]

  where order_delivered_customer_date > order_estimated_delivery_date
  order by order_purchase_timestamp desc
