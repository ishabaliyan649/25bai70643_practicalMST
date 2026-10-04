-- SET SQL_SAFE_UPDATES = 0;
-- Create a Banking Management System using Customer and Account tables.
-- Create Customer and Account tables with suitable attributes.
-- Apply appropriate Primary Key and Foreign Key constraints.
-- Apply suitable NOT NULL, UNIQUE, DEFAULT, and CHECK constraints.
-- Insert at least 5 customers and 5 account records.
-- Display accounts having a balance greater than a given amount.
-- Display accounts in descending order of their balance.
-- Calculate the total balance of all accounts using an aggregate function.
-- Find the maximum and minimum account balance.
-- Update the balance of a particular account.
-- Delete an account based on a suitable condition.
-- Display the final account records.-- 
CREATE DATABASE banking_management_system;
USE banking_management_system;
CREATE TABLE Accounts(
customer_id INT PRIMARY KEY,
account_balance DECIMAL(10,2) DEFAULT 10000
);
CREATE TABLE Customers(
s_no INT,
customer_id INT UNIQUE,
name VARCHAR(50) NOT NULL,
age INT CHECK (age>=18),
FOREIGN KEY(customer_id) REFERENCES Accounts(customer_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);
INSERT INTO Accounts(customer_id, account_balance)
VALUES
(121, 49689000 ),
(354, 65449000 ),
(679, 75886900 ),
(163, 65689000 ),
(557, 34689000 );
INSERT INTO Customers(s_no,customer_id,name , age)
VALUES 
(1,121, 'Shreya Sharma', 24 ),
(2,354, 'Rahul Singh', 37 ),
(3,679, 'Priya Rajput', 42 ),
(4,163, 'Amanpreet Panwar', 23 ),
(5,557, 'Akhil Yadav', 33 );

SELECT * FROM Customers;
SELECT * FROM Accounts;

SELECT * FROM Accounts 
WHERE account_balance > 50000000;

SELECT * FROM Accounts 
ORDER BY account_balance DESC;

SELECT SUM(account_balance) AS total_balance FROM Accounts; 

SELECT MAX(account_balance) AS maximum_balance FROM Accounts; 

SELECT MIN(account_balance) AS minimum_balance FROM Accounts; 

UPDATE Accounts
SET account_balance = 54689000
WHERE customer_id = 557;
SELECT * FROM Accounts;

DELETE FROM Accounts
WHERE account_balance<50000000;
SELECT * FROM Accounts;

DROP DATABASE banking_management_system;