SELECT * FROM sql_project.locations_table;

/* question: In which country schools are providing online courses?*//* Answer: no data is available*/
SELECT * FROM locations_table
WHERE description LIKE '%online%';

SELECT DISTINCT `country.name`
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

/* question: which cities are the most popular across all schools.*//* Answer: Miami-2, NYC-2,Toronto-2,London-2,Berlin-1*/
select `city.name` as city_name, count(*) as popularity
from locations_table 
where `city.name` is not null 
group by city_name
order by popularity desc
limit 5;

/* question: which country are the most popular across all schools.*//* Answer:United States-6,Canada-3,Spain-2,United Kingdom-2,Germany-1*/
select `country.name` as country_name, count(*) as popularity
from locations_table 
where `country.name` is not null 
group by country_name
order by popularity desc
limit 5;

/* QUESTION: Which are the top 5 courses and in which country are they most popular*//* Answer:# course_name, country_name, popularity
Web Development Bootcamp, United States, 5
Design Leadership Course, United States, 4
Data Science Course, United States, 4
Artificial Intelligence Course, United States, 4
Data Analytics Course, United States, 4
*/
select * from courses_table;
select* from locations_table;
select c.courses as course_name, l.`country.name` as country_name, count(*) as popularity
from courses_table c
join locations_table l on c.school_id = l.school_id
group by course_name, country_name
order by popularity desc
limit 5;

/* Question: Which are the top 10 cities in which IronHack offers all the courses*//* Answer:Lisbon-8,Barcelona-8,Madrid-8,
Miami-8,Paris-8, Sao Paulo-8, Amsterdam-8, Mexico City-8,Berlin-8*/

SELECT l.`city.name` AS city_name, COUNT(c.courses) AS course_count
FROM locations_table l
JOIN courses_table c ON l.school_id = c.school_id
WHERE l.`city.name` IS NOT NULL AND c.school = 'Ironhack'
GROUP BY city_name
limit 10;

/* Question: Which are the countries in which IronHack offers less courses*//* Answer: # country_name, course_count
Germany, 8
Mexico, 8
Netherlands, 8
Brazil, 8
France, 8
United States, 8
Portugal, 8
Spain, 16
*/
SELECT l.`country.name` AS country_name, COUNT(c.courses) AS course_count
FROM locations_table l
JOIN courses_table c ON l.school_id = c.school_id
WHERE l.`country.name` IS NOT NULL AND c.school = 'Ironhack'
GROUP BY country_name
ORDER BY course_count ASC;

/* Qusetion: list of countries where IronHack is not providing any course.*/ /* Answer: United Kingdom
Canada*/
SELECT DISTINCT l.`country.name` AS country_name
FROM locations_table l
JOIN courses_table c ON l.school_id = c.school_id
WHERE c.school != 'Ironhack';