CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    amount INT,
    car_id INT NOT NULL,
    invoice_id INT NOT NULL,
    service_id INT,
    salesperson_id INT,
    FOREIGN KEY(car_id) REFERENCES car(car_id) ON DELETE CASCADE,
    FOREIGN KEY(invoice_id) REFERENCES invoice(invoice_id) ON DELETE CASCADE,
    FOREIGN KEY(service_id) REFERENCES service(service_id) ON DELETE CASCADE,
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id) ON DELETE CASCADE
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    amount NUMERIC(10,2),
    car_id INT NOT NULL,
    FOREIGN KEY(car_id) REFERENCES car(car_id) ON DELETE CASCADE
);

CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    invoice_id INT NOT NULL,
    FOREIGN KEY(invoice_id) REFERENCES invoice(invoice_id) ON DELETE CASCADE
);

CREATE TABLE service(
    service_id SERIAL PRIMARY KEY,
    descriptions VARCHAR(250),
    replacement_parts BOOLEAN,
    parts_description VARCHAR(250),
    customer_id INT NOT NULL,
    car_id INT NOT NULL,
    mechanic_id INT NOT NULL,
    FOREIGN KEY(car_id) REFERENCES car(car_id) ON DELETE CASCADE,
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id) ON DELETE CASCADE,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    made VARCHAR(220),
    model VARCHAR(220),
    year VARCHAR(4),
    VIN INT NOT NULL,
    sales_type BOOLEAN
    salesperson_id INT,
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id) ON DELETE CASCADE
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

ALTER TABLE car
ALTER COLUMN sales_type TYPE VARCHAR(20)

ALTER TABLE salesperson
ADD invoice_id INT 
