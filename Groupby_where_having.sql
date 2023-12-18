-- Aggregate Function
select sum(creditLimit) as Total_credit
from customers;

-- Aggergate function with Group by
select country,sum(creditLimit) as Total_credit
from customers
group by country
order by Total_credit desc;

-- Count the total number of customers from each country
select country,count(customerNumber) as Total_count
from customers
group by country
order by Total_count desc;

-- Find top 3 customers having highest number of customers
select country,count(customerNumber) as Total_count
from customers
group by country
order by Total_count desc
limit 3;

-- Aggregate function with Where clause
select sum(creditLimit) as Total_credit
from customers
where country= "USA";

-- Aggregate function with where clause and group by
select  state, sum(creditLimit) as Total_credit
from customers
where country= "USA"
group by state
order by Total_credit desc;

-- find the total customer count of each state
select  state, count(customerNumber) as Total_count
from customers
group by state
order by Total_count desc;

-- find the total customer count of each state of USA country
select  state, count(customerNumber) as Total_count
from customers
where country = "USA"
group by state
order by Total_count desc;

-- Find total customer count of each state where country is USA having the count more than 3
select  state, count(customerNumber) as Total_count
from customers
where country = "USA"
group by state
having Total_count>3
order by Total_count desc;

-- Find top 3 customer count of each state where country is USA having the count more than 3
select  state, count(customerNumber) as Total_count
from customers
where country = "USA"
group by state
having Total_count>3
order by Total_count desc
limit 3;

-- Find list of states from USA havng creditLimit greater than 2 Lacs
select  state, sum(creditLimit) as Total_creditLimit
from customers
where country = "USA" 
group by state
having Total_creditLimit>200000
order by Total_creditLimit desc;

-- Find list of  bottom 3 states from USA havng creditLimit greater than 2 Lacs
select  state, sum(creditLimit) as Total_creditLimit
from customers
where country = "USA" 
group by state
having Total_creditLimit>=200000
order by Total_creditLimit 
limit 3;

-- -- Find 2nd highest state from USA havng creditLimit greater than 2 Lacs
select  state, sum(creditLimit) as Total_creditLimit
from customers
where country = "USA" 
group by state
having Total_creditLimit>=200000
order by Total_creditLimit desc
limit 1,1;

-- Find count of employees under each jobTitle
select jobTitle, count(employeeNumber) as Total_count
from employees
group by jobTitle;

-- From the given list of countries. find top 3 countries with avg creditLimit>=75000 (USA, FRANCE, SPAIN, NORWAY, AUSTRIA, AUSTRAILIA)
select country, avg(creditLimit) as Avg_creditLimit
from customers
where country in('USA','FRANCE', 'SAPIN','NORWAY', 'AUSTRIA', 'AUSTRALIA')
group by country
having Avg_creditLimit>=75000 
order by Avg_creditLimit desc
limit 3;

-- Group by country and state both
select  country, state, sum(creditLimit) as Total_creditLimit
from customers
group by country, state;

-- Find total amount for each month of each year from payments table
select  year(paymentDate) as YY, month(paymentDate) as MM,sum(amount)
from payments
group by YY, MM;

-- Find total amount for each month of each year from payments table and arrange the year and months in ascending way.
select  year(paymentDate) as YY, month(paymentDate) as MM,sum(amount)
from payments
group by YY, MM
order by YY,MM;




