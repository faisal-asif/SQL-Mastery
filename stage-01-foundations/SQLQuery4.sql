-- The total reviews of the category that are below 3 Rating and atleast have 100+ reviews

SELECT
	review_score,
	count(review_score) as total_reviews

FROM [dbo].[order_reviews_dataset]

WHERE
	review_score < 3

GROUP BY
	review_score

HAVING
	count(review_score) >= 100

ORDER BY
	review_score asc

