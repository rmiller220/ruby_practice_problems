# Problem 1: Combine Two Tables
# Table: Person

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | personId    | int     |
# | lastName    | varchar |
# | firstName   | varchar |
# +-------------+---------+
# personId is the primary key column for this table.
# This table contains information about the ID of some persons and their first and last names.
 

# Table: Address

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | addressId   | int     |
# | personId    | int     |
# | city        | varchar |
# | state       | varchar |
# +-------------+---------+
# addressId is the primary key column for this table.
# Each row of this table contains information about the city and state of one person with ID = PersonId.
 

# Write an SQL query to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.

# Return the result table in any order.

# The query result format is in the following example.

 

# Example 1:

# Input: 
# Person table:
# +----------+----------+-----------+
# | personId | lastName | firstName |
# +----------+----------+-----------+
# | 1        | Wang     | Allen     |
# | 2        | Alice    | Bob       |
# +----------+----------+-----------+
# Address table:
# +-----------+----------+---------------+------------+
# | addressId | personId | city          | state      |
# +-----------+----------+---------------+------------+
# | 1         | 2        | New York City | New York   |
# | 2         | 3        | Leetcode      | California |
# +-----------+----------+---------------+------------+
# Output: 
# +-----------+----------+---------------+----------+
# | firstName | lastName | city          | state    |
# +-----------+----------+---------------+----------+
# | Allen     | Wang     | Null          | Null     |
# | Bob       | Alice    | New York City | New York |
# +-----------+----------+---------------+----------+
# Explanation: 
# There is no address in the address table for the personId = 1 so we return null in their city and state.
# addressId = 1 contains information about the address of personId = 2.

SELECT Person.firstName, Person.lastName, Address.city, Address.state 
FROM Person 
LEFT JOIN Address ON Person.personID=Address.personID;


# Problem 2: Employees Earning More Than Their Managers
# Table: Employee

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | id          | int     |
# | name        | varchar |
# | salary      | int     |
# | managerId   | int     |
# +-------------+---------+
# id is the primary key (column with unique values) for this table.
# Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
 

# Write a solution to find the employees who earn more than their managers.

# Return the result table in any order.

# The result format is in the following example.

 

# Example 1:

# Input: 
# Employee table:
# +----+-------+--------+-----------+
# | id | name  | salary | managerId |
# +----+-------+--------+-----------+
# | 1  | Joe   | 70000  | 3         |
# | 2  | Henry | 80000  | 4         |
# | 3  | Sam   | 60000  | Null      |
# | 4  | Max   | 90000  | Null      |
# +----+-------+--------+-----------+
# Output: 
# +----------+
# | Employee |
# +----------+
# | Joe      |
# +----------+
# Explanation: Joe is the only employee who earns more than his manager.

SELECT e2.name as Employee
FROM employee e1
INNER JOIN employee e2 ON e1.id = e2.managerID
WHERE
e1.salary < e2.salary

# Problem 3: Duplicate Emails
# Table: Person

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | id          | int     |
# | email       | varchar |
# +-------------+---------+
# id is the primary key (column with unique values) for this table.
# Each row of this table contains an email. The emails will not contain uppercase letters.
 

# Write a solution to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.

# Return the result table in any order.

# The result format is in the following example.

 

# Example 1:

# Input: 
# Person table:
# +----+---------+
# | id | email   |
# +----+---------+
# | 1  | a@b.com |
# | 2  | c@d.com |
# | 3  | a@b.com |
# +----+---------+
# Output: 
# +---------+
# | Email   |
# +---------+
# | a@b.com |
# +---------+
# Explanation: a@b.com is repeated two times.

SELECT email FROM Person 
GROUP BY email
HAVING COUNT(email) > 1


Problem 4: Customers Who Never Order
# Table: Customers

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | id          | int     |
# | name        | varchar |
# +-------------+---------+
# id is the primary key (column with unique values) for this table.
# Each row of this table indicates the ID and name of a customer.
 

# Table: Orders

# +-------------+------+
# | Column Name | Type |
# +-------------+------+
# | id          | int  |
# | customerId  | int  |
# +-------------+------+
# id is the primary key (column with unique values) for this table.
# customerId is a foreign key (reference columns) of the ID from the Customers table.
# Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
 

# Write a solution to find all customers who never order anything.

# Return the result table in any order.

# The result format is in the following example.

 

# Example 1:

# Input: 
# Customers table:
# +----+-------+
# | id | name  |
# +----+-------+
# | 1  | Joe   |
# | 2  | Henry |
# | 3  | Sam   |
# | 4  | Max   |
# +----+-------+
# Orders table:
# +----+------------+
# | id | customerId |
# +----+------------+
# | 1  | 3          |
# | 2  | 1          |
# +----+------------+
# Output: 
# +-----------+
# | Customers |
# +-----------+
# | Henry     |
# | Max       |
# +-----------+

SELECT name as Customers FROM Customers
LEFT JOIN Orders ON Customers.id=Orders.customerId
WHERE Orders.customerId IS NULL

