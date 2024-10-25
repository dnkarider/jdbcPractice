SELECT product_name
FROM my_schema.customers
         JOIN my_schema.orders ON my_schema.orders.customer_id = my_schema.customers.id
WHERE name = :name;