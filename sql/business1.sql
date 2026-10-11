SELECT
    c.customer_id,
    c.name,
    SUM(oi.revenue) AS total_revenue
FROM public.customers AS c
JOIN public.orders AS o
    ON c.customer_id = o.customer_id
JOIN public.order_items AS oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.name
ORDER BY total_revenue DESC;