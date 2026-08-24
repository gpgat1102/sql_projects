-- Analysing motorcycle part sales

SELECT 
	product_line AS product_line
	,CASE
		WHEN EXTRACT(MONTH FROM date) = 6 THEN 'June'
		WHEN EXTRACT(MONTH FROM date) = 7 THEN 'July'
		WHEN EXTRACT(MONTH FROM date) = 8 THEN 'August'
	END AS month -- alpha month name
	,warehouse AS warehouse
	,(SUM(total) - SUM(payment_fee)) AS net_revenue -- computation
FROM sales -- sales table
WHERE 1=1
	AND client_type = 'Wholesale' -- wholesale client only
GROUP BY 1,2,3,EXTRACT(MONTH from date)
ORDER BY 1,EXTRACT(MONTH from date) ASC, 4 DESC -- based on query specification;