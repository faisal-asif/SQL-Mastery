-- The Selling department needs the list of serious seller having the item sold greater than 50

SELECT 
       seller_id
      , count(seller_id) as total_item_sold 
  FROM [ecommerce].[dbo].[olist_order_items_dataset]

  
  GROUP BY seller_id
  HAVING count(seller_id) > 50  --Identifying seller with more then 50 items sold
  ORDER BY (total_item_sold) desc 
