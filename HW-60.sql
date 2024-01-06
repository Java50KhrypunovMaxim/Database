--HW60
-- Task 1;
--SELECT DISTINCT id, (SELECT model_name FROM cars WHERE owner_id = id LIMIT 1) AS model_name
--FROM car_owners WHERE EXTRACT(YEAR FROM AGE(birth_date)) > (SELECT ROUND(AVG(EXTRACT(YEAR FROM AGE(birth_date))) * 1.1)
--FROM car_owners);
--Task 2;
--SELECT name as person_name
--FROM car_owners WHERE id in(SELECT owner_id FROM cars WHERE model_name in(SELECT name FROM models WHERE engine_capacity = (
--SELECT MAX(engine_capacity) FROM models)));
--TASK3
--select model_name, count(*) as amount from cars group by model_name order by amount desc limit 2;
--TASK4
--SELECT DISTINCT name AS model_name FROM models 
--WHERE EXISTS (SELECT FROM cars с1 WHERE model_name = name AND (
--SELECT COUNT(DISTINCT color) FROM cars c2 WHERE c2.model_name = с1.model_name) >= 2);
--TASK5
SELECT 
    (FLOOR(age / 10) * 10) AS "Min Age",
    (FLOOR(age / 10) * 10) + 10 AS "Max Age",
    COUNT(*) AS "Amount"
FROM (SELECT  EXTRACT(YEAR FROM AGE(birth_date)) AS age
    FROM car_owners) AS age_table
GROUP BY FLOOR(age / 10)
ORDER BY FLOOR(age / 10);

 