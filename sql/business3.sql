SELECT
    p.product_name,
    SUM(oi.revenue) AS total_revenue,
    SUM(oi.profit) AS total_profit,
    ROUND(
        100.0 * SUM(oi.profit)
        / NULLIF(SUM(oi.revenue), 0),
        2
    ) AS profit_margin_pct
FROM public.products AS p
JOIN public.order_items AS oi
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY profit_margin_pct DESC NULLS LAST;