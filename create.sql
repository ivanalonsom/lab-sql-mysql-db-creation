
CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
	vin varchar(50) NOT NULL PRIMARY KEY,
	manufacturer varchar(30),
	model varchar(30),
	year DATE,
	color varchar(15)
);


DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
	customer_id varchar(20) NOT NULL PRIMARY KEY,
	name varchar(50),
	phone_number varchar(15),
	email varchar(80),
	address varchar(100),
	city varchar(40),
	state varchar(40),
	country varchar(40),	
	zip int CHECK (zip>0)
);


DROP TABLE IF EXISTS stores;

CREATE TABLE stores(
	store_id int NOT NULL PRIMARY KEY,
	address varchar(100),
	city varchar(50)
);


DROP TABLE IF EXISTS sales_person;

CREATE TABLE sales_person(
	staff_id int NOT NULL PRIMARY KEY,
	name varchar(50),
	store_id int NOT NULL,
	FOREIGN KEY (store_id) REFERENCES stores(store_id)
);


DROP TABLE IF EXISTS invoices;

CREATE TABLE invoices(
	inv_num int NOT NULL PRIMARY KEY,
	date DATE,
	vin varchar(50) NOT NULL,
	customer_id varchar(20) NOT NULL,
	staff_id int NOT NULL,
	FOREIGN KEY (vin) REFERENCES cars(vin),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (staff_id) REFERENCES sales_person(staff_id)
);