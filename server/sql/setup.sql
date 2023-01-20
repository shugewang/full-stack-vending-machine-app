DROP TABLE IF EXISTS vending.product;

CREATE TYPE product_type as ENUM ('drink', 'food');

CREATE TABLE vending.product (
    product_id VARCHAR(255) NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(255),
    price MONEY NOT NULL,
    quantity INTEGER NOT NULL,
    type PRODUCT_TYPE NOT NULL
);

INSERT INTO vending.product (product_id, name, description, price, quantity, type) VALUES ('001', 'Coke', 'fizzy drink', '0.45', 10, 'drink');
INSERT INTO vending.product (product_id, name, description, price, quantity, type) VALUES ('002', 'Pepsi', 'fizzy drink', '0.35', 10, 'drink');
INSERT INTO vending.product (product_id, name, description, price, quantity, type) VALUES ('003', 'Soda', 'fizzy drink', '0.25', 10, 'drink');
INSERT INTO vending.product (product_id, name, description, price, quantity, type) VALUES ('004', 'Chicken bites', 'snacky snack', '2.00', 5, 'food');