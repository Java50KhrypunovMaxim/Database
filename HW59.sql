
 -- HW 59 ----------
 -- select * from car_owners where city='city1';
 -- select LEFT(phone, 3) from car_owners where city='city1';
 -- SELECT * FROM models WHERE (engine_power::DECIMAL / engine_capacity::DECIMAL) * 100 > 6;
 -- select name, phone from car_owners where extract (month from birth_date) = 12;
--  select number, model_name, model_year from cars where state = 'good' and kilometers >= 5000;
--  SELECT car_number, date FROM trade_deals WHERE EXTRACT(MONTH FROM date) BETWEEN 3 AND 5;