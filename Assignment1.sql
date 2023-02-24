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
customer_id |   cust_name    |    city    | grade | salesman_id 
-------------+----------------+------------+-------+-------------
        3002 | Nick Rimando   | New York   |   100 |        5001
        3007 | Brad Davis     | New York   |   200 |        5001
        3005 | Graham Zusi    | California |   200 |        5002
        3008 | Julian Green   | London     |   300 |        5002
        3004 | Fabian Johnson | Paris      |   300 |        5006
        3009 | Geoff Cameron  | Berlin     |   100 |        5003
        3003 | Jozy Altidor   | Moscow     |   200 |        5007
        3001 | Brad Guzan     | London     |       |        5005
        5003 | Lauson Hen | San Jose |       0.12

