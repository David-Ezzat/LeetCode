SELECT vs.customer_id, COUNT(vs.customer_id) [count_no_trans]
FROM Visits vs left outer join Transactions trn
ON vs.visit_id = trn.visit_id 
WHERE amount IS NULL
GROUP BY vs.customer_id 
