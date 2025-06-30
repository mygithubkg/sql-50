--  Problem Statement 

Table: World

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |
+-------------+---------+
name is the primary key (column with unique values) for this table.
Each row of this table gives information about the name of a country, the continent to which it belongs, its area, the population, and its GDP value.
 

A country is big if:

it has an area of at least three million (i.e., 3000000 km2), or
it has a population of at least twenty-five million (i.e., 25000000).
Write a solution to find the name, population, and area of the big countries.

Return the result table in any order.

The result format is in the following example.


-- Method 1 - Using OR condition
SELECT name, population, area FROM World
WHERE area >= 3000000 OR population >= 25000000;

-- Method 2 - Using UNION ALL
SELECT name, population, area FROM World
WHERE area >= 3000000
UNION ALL
SELECT name, population, area FROM World
WHERE population >= 25000000;

-- Method 3 - Using UNION (Why it will not work ?)
SELECT name, population, area FROM World
WHERE area >= 3000000   
UNION
SELECT name, population, area FROM World
WHERE population >= 25000000;
-- -- It will not work because UNION removes duplicates, and we want to include all rows that meet either condition.

