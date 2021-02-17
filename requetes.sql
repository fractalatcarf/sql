--            table batchs
--             id          name
--             ----------  ----------
--             1           #558
--             2           #496
--             3           #430

--             table students
--             id          first_name  age         batch_id
--             ----------  ----------  ----------  ----------
--             1           Julien      24          1
--             2           Amir        31          1
--             3           Anne        24          1
--             4           Mira        38          1
--             5           Paul        49          2
--             6           Leyla       20          2


-- 1:N

SELECT * FROM batchs;
-- id          name
-- ----------  ----------
-- 1           #558
-- 2           #496
-- 3           #430

SELECT name FROM batchs;
-- name
-- ----------
-- #558
-- #496
-- #430

SELECT first_name, age FROM students;
-- first_name  age
-- ----------  ----------
-- Julien      24
-- Amir        31
-- Anne        24
-- Mira        38
-- Paul        49
-- Leyla       20


SELECT * FROM students WHERE age = 24;
-- id          first_name  age         batch_id
-- ----------  ----------  ----------  ----------
-- 1           Julien      24          1
-- 3           Anne        24          1


-- =, >, <, >=, <=, LIKE
SELECT * FROM students WHERE id > 4;
-- id          first_name  age         batch_id
-- ----------  ----------  ----------  ----------
-- 5           Paul        49          2
-- 6           Leyla       20          2

SELECT * FROM students WHERE first_name LIKE "A%";
-- id          first_name  age         batch_id
-- ----------  ----------  ----------  ----------
-- 2           Amir        31          1
-- 3           Anne        24          1

-- AND, OR
SELECT * FROM students WHERE batch_id = 1 AND age > 30;
-- id          first_name  age         batch_id
-- ----------  ----------  ----------  ----------
-- 2           Amir        31          1
-- 4           Mira        38          1


SELECT * FROM students ORDER BY age;
-- id          first_name  age         batch_id
-- ----------  ----------  ----------  ----------
-- 6           Leyla       20          2
-- 1           Julien      24          1
-- 3           Anne        24          1
-- 2           Amir        31          1
-- 4           Mira        38          1
-- 5           Paul        49          2

SELECT * FROM students ORDER BY age, first_name;
-- id          first_name  age         batch_id
-- ----------  ----------  ----------  ----------
-- 6           Leyla       20          2
-- 3           Anne        24          1
-- 1           Julien      24          1
-- 2           Amir        31          1
-- 4           Mira        38          1
-- 5           Paul        49          2


SELECT  count(*)  FROM students;
-- count(*)
-- ----------
-- 6
SELECT  count(*)  FROM students WHERE age > 30;
-- count(*)
-- ----------
-- 3


SELECT * FROM students, batchs WHERE batch_id = batchs.id;
-- id          first_name  age         batch_id    id          name
-- ----------  ----------  ----------  ----------  ----------  ----------
-- 1           Julien      24          1           1           #558
-- 2           Amir        31          1           1           #558
-- 3           Anne        24          1           1           #558
-- 4           Mira        38          1           1           #558
-- 5           Paul        49          2           2           #496
-- 6           Leyla       20          2           2           #496


SELECT * FROM students JOIN batchs ON batch_id = batchs.id WHERE name = "#558";

-- id          first_name  age         batch_id    id          name
-- ----------  ----------  ----------  ----------  ----------  ----------
-- 1           Julien      24          1           1           #558
-- 2           Amir        31          1           1           #558
-- 3           Anne        24          1           1           #558
-- 4           Mira        38          1           1           #558



-- SQLITE :
-- .headers on
-- .mode column
