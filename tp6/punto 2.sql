SELECT city
FROM customer_list c
JOIN (
    SELECT r.customer_id
    FROM rental r
    GROUP BY r.customer_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
) r ON c.ID = r.customer_id;