/* 
Using NULLIF to safely handle potential divide-by-zero exceptions.
Multiplying by 1.0 for implicit decimal conversion to prevent integer division loss.
*/
SELECT 
    pr.product_id,
    ISNULL(ROUND(SUM(pr.price * sld.units) * 1.0 / NULLIF(SUM(sld.units), 0), 2), 0.00) [average_price]
FROM Prices pr LEFT OUTER JOIN UnitsSold sld
ON pr.product_id = sld.product_id and sld.purchase_date BETWEEN pr.start_date AND pr.end_date
GROUP BY pr.product_id
