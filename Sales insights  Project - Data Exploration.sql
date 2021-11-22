/*
--Data Analysis Using SQL
*/

--1.Show all customer records

SELECT * FROM 
customers

--2.Show total number of customers

SELECT count(*) FROM 
customers

3.Show transactions for Hyderabad market (market code for Hyderabad is Mark014)

SELECT * FROM 
markets 
where markets_code='Mark014'

SELECT * FROM 
transactions 
where market_code='Mark014'


4.Show distrinct product codes that were sold in Hyderabad

SELECT distinct product_code 
FROM transactions 
where market_code='Mark014'

5.Show transactions where currency is US dollars

SELECT DISTINCT currency FROM transactions

SELECT * from transactions 
where currency="USD"

6.Show transactions in 2020 join by date table

SELECT transactions.*, date.* FROM 
transactions INNER JOIN date ON 
transactions.order_date=date.date where 
date.year=2020 

7.Show total revenue in year 2020

SELECT SUM(transactions.sales_amount) FROM 
transactions INNER JOIN date ON 
transactions.order_date=date.date where 
date.year=2020 and 
transactions.currency="INR" or 
transactions.currency="USD"

8.Show total revenue in year 2020, January Month

SELECT SUM(transactions.sales_amount) FROM 
transactions INNER JOIN date ON 
transactions.order_date=date.date where 
date.year=2020 and date.month_name="January"and 
transactions.currency="INR" or 
transactions.currency="USD"


9.Show total revenue in year 2020 in Hyderabad

SELECT SUM(transactions.sales_amount) FROM 
transactions INNER JOIN date ON 
transactions.order_date=date.date 
where date.year=2020 and 
transactions.market_code="Mark014"



