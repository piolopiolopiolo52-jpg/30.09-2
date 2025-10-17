SELECT 
    name,
    CASE 
        WHEN total_spent > 50000 
             AND last_purchase_date >= DATE('now', '-60 day') THEN 'VIP'
        WHEN last_purchase_date < DATE('now', '-180 day') THEN 'Удержание'
        ELSE 'Обычный'
    END AS client_status
FROM Clients;
