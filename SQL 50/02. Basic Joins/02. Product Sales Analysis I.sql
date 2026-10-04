SELECT pr.product_name, sl.year, sl.price
FROM Sales sl INNER JOIN Product pr
ON pr.product_id = sl.product_id
