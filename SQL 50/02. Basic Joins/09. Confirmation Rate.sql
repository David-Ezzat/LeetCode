SELECT 
    sgn.user_id,
    ROUND(
        CASE WHEN COUNT(conf.action) = 0 THEN 0.0
        ELSE (SUM(CASE WHEN conf.action = 'confirmed' THEN 1.0 ELSE 0.0 END) / COUNT(conf.action)) END, 2) [confirmation_rate]
FROM Signups sgn LEFT OUTER JOIN Confirmations conf
ON sgn.user_id = conf.user_id
GROUP BY sgn.user_id


