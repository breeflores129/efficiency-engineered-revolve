-- *** API Table Insertion ***

CREATE DATABASE RevolveJob;

SHOW DATABASES;

-- Activate the database
USE RevolveJob;

-- Create schema
CREATE SCHEMA sql_project;

SHOW SCHEMAS;

-- Create tables in sql_project schema
CREATE TABLE hm_Categories (
  Category_ID int,
  CategoryName varchar(255),
  inserted_at timestamp default current_timestamp
);

CREATE TABLE hm_Product_Details (
  Category_ID int,
  ProductName varchar(255),
  WhitePrice decimal(10,2),
  Color varchar(50),
  inserted_at timestamp default current_timestamp
);


SHOW TABLES;

-- Add the ability for the admin user to set session values (max_allowed_packet) to allow mysqlimport to run
GRANT SESSION_VARIABLES_ADMIN ON *.* TO 'admin'@'%';

-- Confirm all rows loaded
SELECT COUNT(ProductName)
FROM hm_Product_Details;


-- Preview data
SELECT *
FROM hm_Product_Details
LIMIT 10;



