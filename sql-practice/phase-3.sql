.mode box

DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS coffee_orders;

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(40) NOT NULL,
    phone NUMERIC(10, 0) UNIQUE,
    email VARCHAR(255) UNIQUE,
    points INTEGER NOT NULL DEFAULT 5,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE coffee_orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    is_redeemed BOOLEAN DEFAULT 0,
    ordered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO customers
(name, phone)
VALUES
    ('Rachel', 1111111111);


UPDATE customers
    SET points = 6
    WHERE name = 'Rachel';


INSERT INTO coffee_orders
(ordered_at)
VALUES
    (CURRENT_TIMESTAMP);


INSERT INTO customers
(name, phone, email)
VALUES
    ('Monica', 2222222222, 'monica@friends.show'),
    ('Phoebe', 3333333333, 'phoebe@friends.show');

UPDATE customers
    SET points = 8
    WHERE name = 'Phoebe';

--ASK IF YOU CAN MULTIPLY THIS

INSERT INTO coffee_orders
(ordered_at)
VALUES
    (CURRENT_TIMESTAMP);

INSERT INTO coffee_orders
(ordered_at)
VALUES
    (CURRENT_TIMESTAMP);

INSERT INTO coffee_orders
(ordered_at)
VALUES
    (CURRENT_TIMESTAMP);


UPDATE customers
    SET points = 10
    WHERE name = 'Rachel';

INSERT INTO coffee_orders
(ordered_at)
VALUES
    (CURRENT_TIMESTAMP);

INSERT INTO coffee_orders
(ordered_at)
VALUES
    (CURRENT_TIMESTAMP);

INSERT INTO coffee_orders
(ordered_at)
VALUES
    (CURRENT_TIMESTAMP);

INSERT INTO coffee_orders
(ordered_at)
VALUES
    (CURRENT_TIMESTAMP);

UPDATE customers
    SET points = 9
    WHERE name = 'Monica';

INSERT INTO coffee_orders
(ordered_at)
VALUES
    (CURRENT_TIMESTAMP);

INSERT INTO coffee_orders
(ordered_at)
VALUES
    (CURRENT_TIMESTAMP);

INSERT INTO coffee_orders
(ordered_at)
VALUES
    (CURRENT_TIMESTAMP);

INSERT INTO coffee_orders
(ordered_at)
VALUES
    (CURRENT_TIMESTAMP);

SELECT points FROM customers
    WHERE name = 'Monica';



SELECT * FROM customers;
SELECT * FROM coffee_orders;
