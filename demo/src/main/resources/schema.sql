create schema IF NOT EXISTS my_schema;

create TABLE IF NOT EXISTS my_schema.customers
(
    id           SERIAL PRIMARY KEY not null,
    name         text               not null,
    surname      text               not null,
    age          int                not null,
    phone_number int
);


INSERT INTO my_schema.customers(name, surname, age, phone_number)
VALUES ('alexey', 'alexin', 40, 7777777),
       ('ivan', 'karasik', 50, 98989989),
       ('pavel', 'durov', 41, 181881818),
       ('ALEXEY', 'malkov', 31, 998999898);

create TABLE IF NOT EXISTS my_schema.orders
(
    id           SERIAL PRIMARY KEY not null,
    date         text               not null,
    customer_id  int,
    product_name text               not null,
    amount       int                not null,
    FOREIGN KEY (customer_id) references my_schema.customers (id)
);

INSERT INTO my_schema.orders (date, customer_id, product_name, amount)
VALUES ('12.06.2020', 2, 'Cucumber', 20),
       ('17.07.2021', 1, 'apple', 55),
       ('18.09.2024', 4, 'orange', 5);
