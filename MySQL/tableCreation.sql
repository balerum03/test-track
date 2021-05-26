CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
    customer_name CHAR(50),
    customer_RFC CHAR(13),
    phone_number CHAR(10)
);

CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
    product_name CHAR(50),
    product_price DECIMAL(16,2)
);

CREATE TABLE Services (
    service_id INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
    service_name CHAR(50),
    service_price DECIMAL(16,2)
);

CREATE TABLE Bills (
	bill_id INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
    customer_id INTEGER,
    order_date CHAR(13),
    bill_total DECIMAL(16,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Orders (
	order_id INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
    bill_id INTEGER,
    product_id INTEGER,
    product_amount INTEGER,
    service_id INTEGER,
    service_amount INTEGER,
    FOREIGN KEY (bill_id) REFERENCES Bills(bill_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id)
);
