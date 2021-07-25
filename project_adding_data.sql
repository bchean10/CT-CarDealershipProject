INSERT INTO car(
    made,
    model,
    year,
    VIN,
    sales_type,
    salesperson_id
)
VALUES
('Honda', 'Civic', '2015', 25009980, 'USED', 3),
('Honda', 'Accord', '2020', 25009985, 'NEW', 5),
('Honda', 'CRV', '2019', 25009982, 'USED', 4),
('Honda', 'Accord', '2020', 25009989, 'NEW', 3),
('Honda', 'Civic', '2018', 25009988, 'USED', 5);

SELECT* FROM car

INSERT INTO mechanic(
    first_name,
    last_name
)
VALUES
('Bob', 'Fixer'),
('Dan', 'Wrecker'),
('Steve', 'Changer'),
('John', 'Whatever'),
('Gavin', 'Oil');

SELECT * FROM mechanic

INSERT INTO salesperson(
    first_name,
    last_name
)
VALUES
('Bob', 'Seller'),
('Steve', 'Maker'),
('John', 'Doitall');

UPDATE salesperson
SET invoice_id = 3 
WHERE salesperson_id = 5;

INSERT INTO salesperson(
    first_name,
    last_name,
    invoice_id
)
VALUES
('Bob', 'Seller', 4),
('John', 'Doitall', 5);

SELECT * FROM salesperson 
-- how to reuse the same salesperson_id for different invoices? Is this modified in creation of table?

INSERT INTO invoice(
    amount,
    car_id
)
VALUES
(6158.56, 4),
(21357.66, 5),
(11486.13, 6),
(20998.46, 7),
(9642.56, 8);

SELECT * FROM invoice

INSERT INTO customer(
    first_name,
    last_name,
    amount,
    car_id,
    invoice_id,
    service_id,
    salesperson_id
)
VALUES
('Benny', 'Chean', 1, 4, 1, NULL, 3),
('John', 'Ranger', 1, 5, 2, NULL, 4),
('Ace', 'Red', 1, 6, 3, NULL, 5),
('Josh', 'Blue', 1, 7, 4, NULL, 6),
('Chris', 'Yellow', 1, 8, 5, NULL, 7);

SELECT* FROM customer

INSERT INTO service(
    descriptions,
    replacement_parts,
    parts_description,
    customer_id,
    car_id,
    mechanic_id
)
VALUES
('Oil change', FALSE, 'N/A', 1, 4, 5),
('Engine failure', TRUE, 'New Engine', 3, 6, 4),
('Bumper needs replacement', TRUE, 'New bumper', 5, 8, 2);

SELECT* FROM service

UPDATE customer
SET service_id = 1 
WHERE customer_id = 1;

UPDATE customer
SET service_id = 2 
WHERE customer_id = 3;

UPDATE customer
SET service_id = 3 
WHERE customer_id = 5;

SELECT * FROM customer