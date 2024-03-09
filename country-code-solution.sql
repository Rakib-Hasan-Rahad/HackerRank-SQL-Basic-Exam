WITH customer_country_codes AS (
    SELECT c.customer_id, c.name, CONCAT('+', cc.country_code, ' ', c.phone_number) AS formatted_phone
    FROM customers c
    LEFT JOIN country_codes cc ON c.country = cc.country
)
SELECT customer_id, name, formatted_phone
FROM customer_country_codes
ORDER BY customer_id;
