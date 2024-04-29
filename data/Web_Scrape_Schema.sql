-- *** Web Scrape Table Insertion ***
SHOW DATABASES;

-- Connect to the database
USE RevolveJob;


SHOW SCHEMAS;
-- Make sure to select sql_project schema

-- Create tables in sql_project schema
CREATE TABLE revolve_Categories (
  Category_ID int,
  CategoryName varchar(255),
  inserted_at timestamp default current_timestamp
);

CREATE TABLE revolve_Product_Details (
  Category_ID int,
  ProductName varchar(255),
  Price decimal(10,2),
  Color varchar(50),
  inserted_at timestamp default current_timestamp
);

SHOW TABLES;

-- Add the ability for the admin user to set session values (max_allowed_packet) to allow mysqlimport to run
GRANT SESSION_VARIABLES_ADMIN ON *.* TO 'admin'@'%';

-- Confirm all rows loaded
SELECT COUNT(ProductName)
FROM revolve_Product_Details;


-- Preview data
SELECT *
FROM revolve_Product_Details
LIMIT 10;