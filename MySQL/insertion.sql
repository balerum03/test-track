INSERT INTO Customers (customer_name, customer_RFC, phone_number)
VALUES ('Adan Fernandez Bonilla', '1234567890123', '3315403921');

INSERT INTO Customers (customer_name, customer_RFC, phone_number)
VALUES ('Jose Avila Lopez', '1234567890551', '3315403922');

INSERT INTO products (product_name, product_price)
VALUES ('sala',10000);

INSERT INTO products (product_name, product_price)
VALUES ('comedor',5000);

INSERT INTO products (product_name, product_price)
VALUES ('cocina integral',50000);

INSERT INTO Services (service_name, service_price)
VALUES ('installation', 1000);

INSERT INTO Services (service_name, service_price)
VALUES('cleaning', 500);

INSERT INTO Bills (customer_id, order_date, bill_total)
VALUES (1, 'may-3rd-2021', 66000);

INSERT INTO Orders (bill_id, product_id, product_amount, service_id, service_amount)
VALUES(1,3,1,1,1);

INSERT INTO Orders (bill_id, product_id, product_amount, service_id, service_amount)
VALUES(1,1,1,NULL,NULL);

INSERT INTO Orders (bill_id, product_id, product_amount, service_id, service_amount)
VALUES(1,2,1,NULL,NULL);