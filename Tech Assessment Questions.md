

# Tech Assessment - Gabriel Belo Lyra e Lima - Dave



1. **How do you select all the records from a table named "Persons" where the "LastName" is alphabetically between (and including) "Hansen" and "Pettersen"?**

**Answer:** b. SELECT * FROM Persons WHERE LastName BETWEEN 'Hansen' AND 'Pettersen'



2. **How can you change "Hansen" into "Nilsen" in the "LastName" column in the Persons table?**

**Answer:** c. UPDATE Persons SET LastName='Nilsen' WHERE LastName='Hansen'



3. **Which type of join is used in the following SQL query?**

**Answer:** d. Cartesian join



4. **Are the following two queries equivalent?**
   
   > 1.  SELECT * FROM facebookLEFT JOIN linkedinON facebook.name = linkedin.name AND facebook.city = 'SF';
   > 
   > 2.  SELECT * FROM facebook LEFT JOIN linkedin ON facebook.name = linkedin.name WHERE facebook.city = 'SF';

  **Answer:** They are not the same. The first query will keep all rows from the facebook table (on the left), but will only bring values from the linkedin table (on the right) that respect the join condition (name and city). The second query removes every other city that is not 'SF' from the output, given the filter in the WHERE clause.



5. **Which statement correctly displays all the cities with the condition, temperature, and humidity (in the range of 60F to 75F)?**

  **Answer:** b. SELECT * FROM weather WHERE humidity BETWEEN 60 AND 75



6. **Which statement is used to retrieve all data from the table whose names start with ‘P’?**

  **Answer:** d. SELECT * FROM student WHERE name LIKE 'P%';  But this query is case sensitive, so I would usually prefer to use "LOWER name LIKE 'p%'" (just in case)



7. **Given the tables created by these commands:**
   
   > create table A (a int);
   > 
   > create table B (b int);
   > 
   > insert into A values (1), (2), (3);
   > 
   > insert into B values (3), (4), (5);

  **What will the output be for the following query?**

> select * from A left join B on A.a = B.b;

  **Answer:** In a LEFT JOIN all rows from the left table are returned, while values from the table on the right are returned only if included in the ON clause. Otherwise, it returns a NULL value. The awnser is A.



8. **Which of the following commands is used to create a new table in SQL?**

  **Answer:** a. CREATE TABLE



9. **Which of the following syntax is valid? (There may be more than one answer):**

 > a. select ID, AGE from CUSTOMER where AGE > 0 group by 1 -- Age is not aggregated nor added in group by. b. select AGE, count(*) from CUSTOMER where ID is not null group by 1 -- This one is correct and is going to create groups of registers (where id is not null) by age.c. select ID, sum(SALES) from CUSTOMER having SALES > 0 group by 1 -- HAVING comes after the GROUP BY.d. select distinct ID from CUSTOMER where AGE > 0 limit 10 -- This one is correct and is going to return the first 10 rows of distinct ID where AGE > 0.e. All of the above. None of the above

  **Answer:** Queries b and d.

10.  **Which of the following is the correct order of a SQL statement?**

  **Answer:**  b. SELECT, WHERE, GROUP BY, HAVING

11.  **Coding question**

  **Answer:**

> SELECT 
> 
>     EXTRACT(YEAR FROM c.signup_date) AS signup_year, -- or YEAR(c.signup_date) , or DATE_PART(c.signup_date), depending on the syntax!
> 
>     COUNT(DISTINCT c.customer_id) AS total_customers,
> 
>     COUNT(o.order_id) AS total_orders,
> 
>     SUM(o.total_amount) AS total_amount_spent
> 
> FROM customers c
> 
> JOIN orders o
> 
>     ON c.customer_id = o.customer_id
> 
> GROUP BY EXTRACT(YEAR FROM c.signup_date)
> 
> ORDER BY signup_year;


