/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT AGE (birth_date), * 
FROM public.employees
WHERE (EXTRACT (YEAR FROM AGE (birth_date))) >60;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/
-- Answer 24448
SELECT count(emp_no)
FROM public.employees
WHERE EXTRACT (MONTH FROM hire_date) = 2

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/
-- Answer 24500
SELECT count(emp_no)
FROM public.employees
WHERE EXTRACT (MONTH FROM birth_date) = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/
-- Answer 73 years 3 mons 7 days
SELECT MAX(age(birth_date))
FROM public.employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/
-- Anwere 1000
SELECT count(orderid)
FROM public.orders
where date_trunc( 'MONTH', orders.orderdate)= date '2004-01-01'

