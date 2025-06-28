-- Problem Statement 

-- Table: Products

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | low_fats    | enum    |
-- | recyclable  | enum    |
-- +-------------+---------+
-- product_id is the primary key (column with unique values) for this table.
-- low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
-- recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.


-- Write an SQL query to find the product_ids of products that are both recyclable and low fat.
SELECT product_id FROM Products
WHERE low_fats = 'Y' and recyclable = 'Y';  -09+

-- The query selects the product_id from the Products table where both low_fats and recyclable are 'Y', indicating that the products are low fat and recyclable.
-- The result will return a list of product_ids that meet these criteria.