/* Determining the number of warehouses in West Virginia */
SELECT COUNT(*) AS num_warehouses_wv
FROM warehouse
WHERE w_state = 'WV';

/* Square feet of warehouse space */
SELECT SUM(w_warehouse_sq_ft) AS warehouse_total_sf
FROM warehouse;

/* Active marketing campaigns */
SELECT COUNT(*) AS completed_promotions
FROM promotion
WHERE p_discount_active = 'Y';

/* Carriers that ship our products */
SELECT DISTINCT sm_carrier
FROM ship_mode
ORDER BY sm_carrier;

/* Finding most expensive product */
SELECT MAX(i_current_price) AS most_expensive_product
FROM item;

/* Average price of products */
SELECT ROUND(AVG(i_current_price), 2) AS average_product_price
FROM item;

/* Counting products in each category */
SELECT i_class, COUNT(*) AS num_products
FROM item
GROUP BY i_class
ORDER BY num_products DESC;