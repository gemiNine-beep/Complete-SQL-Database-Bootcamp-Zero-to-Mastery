-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 


-- Question 1: What is the average salary for the company?
-- Table: Salaries
-- Result: 63810.744836143706
select avg(salary) FROM public.salaries 

-- Question 2: What year was the youngest person born in the company?
-- Table: employees
-- Result: 1965-02-01
Select max(birth_date) FROM public.employees

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 

-- Question 1: How many towns are there in france?
-- Table: Towns
-- Result: 36684
Select count(towns) From public.towns
  
-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 
-- Question 1: How many official languages are there?
-- Table: countrylanguage
-- Result: 238
SELECT COUNT (countrycode)FROM public.countrylanguage WHERE isofficial

-- Question 2: What is the average life expectancy in the world?
-- Table: country
-- Result: 66.486036
Select avg(lifeexpectancy) From public.country
  
-- Question 3: What is the average population for cities in the netherlands?
-- Table: city
-- 185001.75
Select avg(population) From city where countrycode = 'NLD'
