/* Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
but did not realize her keyboard's zero key was broken until after completing the calculation. 
She wants your help finding the difference between her miscalculation 
(using salaries with any zeros removed), and the actual average salary.
Write a query calculating the amount of error 
(i.e.: actual-miscalculated average monthly salaries),
and round it up to the next integer. */

SELECT CEIL
(AVG(Salary) - AVG(REPLACE(Salary,'0',''))) 
FROM Employees

--Note1: SELECT CEIL() function rounds the number up or the number stays
--Note2: REPLACE(where, 'new', 'old')
