SELECT 
    EXTRACT(YEAR FROM c.signup_date) AS signup_year, -- or YEAR(c.signup_date) , or DATE_PART(c.signup_date)
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_amount_spent

FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY EXTRACT(YEAR FROM c.signup_date)
ORDER BY signup_year;