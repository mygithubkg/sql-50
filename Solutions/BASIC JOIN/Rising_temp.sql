-- Question
-- Table: Weather

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | recordDate    | date    |
-- | temperature   | int     |
-- +---------------+---------+
-- id is the column with unique values for this table.
-- There are no different rows with the same recordDate.
-- This table contains information about the temperature on a certain day.
 

-- Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

-- Return the result table in any order.

-- The result format is in the following example.

-- 📊 Example Table: Weather
-- id	record_date	temperature
-- 1	2025-07-24	30°C
-- 2	2025-07-25	32°C
-- 3	2025-07-26	31°C
-- 4	2025-07-27	33°C
-- 5	2025-07-28	29°C
-- 🔄 Join Logic Explained
-- The join links each record to the previous day's record:

-- w1.record_date = DATE_ADD(w2.record_date, INTERVAL 1 DAY) ➜ If w1 is '2025-07-25', it joins to w2 of '2025-07-24'

-- Now compare temperatures:

-- '2025-07-25' (32°C) > '2025-07-24' (30°C) → ✅ include id = 2

-- '2025-07-26' (31°C) < '2025-07-25' (32°C) → ❌ exclude

-- '2025-07-27' (33°C) > '2025-07-26' (31°C) → ✅ include id = 4

-- '2025-07-28' (29°C) < '2025-07-27' (33°C) → ❌ exclude

-- ✅ Final Output
-- id
-- 2
-- 4


-- Solution 

SELECT 
    new.id
FROM 
    Weather as new
JOIN 
    Weather as old
ON 
    new.recordDate = DATE_ADD(old.recordDate, INTERVAL 1 DAY)
WHERE
    new.temperature > old.temperature