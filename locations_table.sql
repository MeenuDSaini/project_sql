SELECT * FROM sql_project.locations_table;

/* question: In which country schools are providing online courses?*//* Answer: no data is available*/
SELECT *
FROM locations_table
WHERE description LIKE '%online%';

SELECT DISTINCT `country.name` AS country_name
FROM locations_table
WHERE description LIKE '%online%';

/* question: which schools are providing maximum online courses?*//* answer: # school, online_course_count
springboard, 1
dataquest, 1
syntax-technologies, 1
ironhack, 1
tripleten, 1
*/
select school, count(*) as online_course_count
from locations_table
where description like 'Online'
group by school 
order by online_course_count desc
limit 5;

/* question: which country is most popular across all schools.*/
select 'city.name' as city_name, count(*) as popularity
from locations_table
group by city_name
order by popularity desc
limit 5;

/* which course is most popular in which country*/
select * from courses_table;
select* from locations_table;
select c.courses as course_name, l.country.name as country_name, count(*) as popularity
from courses_table c
join locations_table l on c.school_id = l.school_id
group by course_name, country_name
order by popularity desc;

SELECT l.city.name AS city_name, COUNT(c.courses) AS course_count
FROM location_table l
JOIN courses_table c ON l.school_id = c.school_id
WHERE c.school = 'Ironhack'
GROUP BY city_name;
