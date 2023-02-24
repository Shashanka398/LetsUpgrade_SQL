
create database Letsupgradesql
use Letsupgradesql
create table salesperson
(
  salesman_id int not null,
  name varchar(30),
  city varchar(30),
  comission float
)
create table coustomers
(
customer_id int not null,
 cust_name varchar(30),
 city varchar(30),
 grade int,
salesman_id int,
Primary key(customer_id),
Foreign Key (salesman_id) REFERENCES  salesperson(salesman_id) 

)
select * from coustomers
select * from salesperson


/*From the following we can find  the salesperson and 
customer who reside in the same city. Return Salesman, cust_name and city*/
SELECT s.name as Salesman, c.cust_name, s.city
FROM salesperson s
INNER JOIN coustomers c ON s.city = c.city
WHERE s.salesman_id = c.salesman_id;
