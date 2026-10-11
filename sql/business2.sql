SELECT
    p.product_name,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.revenue) AS total_revenue,
    SUM(oi.profit) AS total_profit
FROM public.products AS p
JOIN public.order_items AS oi
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;