SELECT * FROM sql_project.locations_table;
    

/* question: In which country schools are providing online courses?*//* Answer: no data is available*/
SELECT 
    *
FROM
    locations
WHERE
    description_loc LIKE '%online%';

SELECT DISTINCT school
FROM locations
WHERE description_loc LIKE '%online%';

/* question: which schools are providing maximum online courses?*//* answer: # every school provides online couses.*/
SELECT 
    school, COUNT(*) AS online_course_count
FROM
    locations
WHERE
    description_loc LIKE 'Online'
GROUP BY school
ORDER BY online_course_count DESC;

/* question: which cities are the most popular across all schools.*//* Answer: Online-12, London-2, Miami-2,NYC-2, Toronto-2*/
SELECT 
    city_name, COUNT(*) AS popularity
FROM
    locations
GROUP BY city_name
ORDER BY popularity DESC, city_name ASC
LIMIT 5;

/* question: which country are the most popular across all schools.*//* Answer: Online-12, United States-6,Canada-3,Spain-2,United Kingdom-2,Spain-2*/
SELECT 
    country_name, COUNT(*) AS popularity
FROM
    locations
WHERE
    country_name IS NOT NULL
GROUP BY country_name
ORDER BY popularity DESC;

/* QUESTION: Which are the top 5 courses and in which country are they most popular*//* Answer:# course_name, country_name, popularity
Web Development Bootcamp, United States, 5
Design Leadership Course, United States, 4
Data Science Course, United States, 4
Artificial Intelligence Course, United States, 4
Data Analytics Course, United States, 4
*/
SELECT 
    *
FROM
    courses_table;
SELECT 
    *
FROM
    locations;
SELECT 
    c.courses AS course_name,
    l.country_name,
    COUNT(*) AS popularity
FROM
    courses c
        JOIN
    locations l ON c.school_id = l.school_id
GROUP BY course_name , country_name
ORDER BY popularity DESC
LIMIT 5;

/* Question: Which are the top 10 cities in which IronHack offers all the courses*//* Answer:Lisbon-8,Barcelona-8,Madrid-8,
Miami-8,Paris-8, Sao Paulo-8, Amsterdam-8, Mexico City-8,Berlin-8*/

SELECT 
    l.city_name, COUNT(c.courses) AS course_count
FROM
    locations l
        JOIN
    courses c ON l.school_id = c.school_id
WHERE
    l.city_name IS NOT NULL
        AND c.school = 'Ironhack'
GROUP BY city_name
LIMIT 10;

/* Question: Are these cities the a subset of all cities with ironhack couses?*//* no, these are no more cities where ironhack is present at the moment.*/
SELECT 
    l.city_name, COUNT(c.courses) AS course_count
FROM
    locations l
        JOIN
    courses c ON l.school_id = c.school_id
WHERE
    l.city_name IS NOT NULL
        AND c.school = 'Ironhack'
GROUP BY city_name;

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
SELECT 
    l.country_name,
    COUNT(c.courses) AS course_count
FROM
    locations l
        JOIN
    courses c ON l.school_id = c.school_id
WHERE
    l.country_name IS NOT NULL
        AND c.school = 'Ironhack'
GROUP BY country_name
ORDER BY course_count ASC;

/* Qusetion: list of countries where IronHack is not providing any course.*/ 
/* Answer: 
Online	Online
United States	New York
Canada	Ontario
Canada	British Columbia
United States	Massachusetts
United States	Illinois
United Kingdom	United Kingdom
United States	Florida*/


SELECT DISTINCT
    l.country_name, l.state_name
FROM
    locations l
        JOIN
    courses c ON l.school_id = c.school_id
WHERE
    c.school != 'Ironhack';

/* Question: list of countries where Ironhack offers data analytics courses.*/ /* Answer: # course_name, country_name
Data Analytics Bootcamp, France
Data Analytics Bootcamp, Brazil
Data Analytics Bootcamp, Netherlands
Data Analytics Bootcamp, Mexico
Data Analytics Bootcamp, Germany
Data Analytics Part-Time, Portugal
Data Analytics Part-Time, Spain
Data Analytics Part-Time, United States
Data Analytics Part-Time, France
Data Analytics Part-Time, Brazil
Data Analytics Part-Time, Netherlands
Data Analytics Part-Time, Mexico
Data Analytics Part-Time, Germany
*/
SELECT 
    courses.courses AS course_name,
    locations.country_name
FROM
    courses
        JOIN
    locations ON courses.school_id = locations.school_id
WHERE
    courses.courses LIKE '%data analytics%'
        AND locations.country_name IS NOT NULL
        AND locations.school = 'Ironhack'
GROUP BY course_name, country_name;

/* Question: list of other countries that offers data analytics courses.*/ /* answer: # school_name, course_name, country_name
brainstation, Data Analytics Course, United States
brainstation, Data Analytics Course, Canada
brainstation, Data Analytics Course, United Kingdom
general-assembly, Data Analytics Bootcamp (Full-Time), United States
general-assembly, Data Analytics (Short Course), United States
general-assembly, Data Analytics Bootcamp (Full-Time), United Kingdom
general-assembly, Data Analytics (Short Course), United Kingdom
general-assembly, Data Analytics Bootcamp (Full-Time), Canada
general-assembly, Data Analytics (Short Course), Canada
*/
SELECT 
    courses.school AS school_name,
    courses.courses AS course_name,
    locations.country_name
FROM
    courses
        JOIN
    locations ON courses.school_id = locations.school_id
WHERE
    courses.courses LIKE '%data analytics%'
        AND locations.country_name IS NOT NULL
        AND locations.school != 'Ironhack'
GROUP BY school_name , course_name , country_name;

/* Question: list of countries where other schools offers data science courses.*//* Answer: brainstation	Data Science Course	United States
brainstation	Data Science Bootcamp	United States
brainstation	Data Science Course	Canada
brainstation	Data Science Bootcamp	Canada
brainstation	Data Science Course	United Kingdom
brainstation	Data Science Bootcamp	United Kingdom
general-assembly	Data Science Bootcamp (Full-Time)	United States
general-assembly	Data Science (Short Course)	United States
general-assembly	Data Science Bootcamp (Full-Time)	United Kingdom
general-assembly	Data Science (Short Course)	United Kingdom
general-assembly	Data Science Bootcamp (Full-Time)	Canada
general-assembly	Data Science (Short Course)	Canada*/
SELECT 
    courses.school AS school_name,
    courses.courses AS course_name,
    locations.country_name
FROM
    courses
        JOIN
    locations ON courses.school_id = locations.school_id
WHERE
    courses.courses LIKE '%data science%'
        AND locations.country_name IS NOT NULL
        AND locations.school != 'Ironhack'
GROUP BY school_name , course_name , country_name;

/* Question: list of countries where Ironhack offers data science courses.*//* Answer: No record is available*/
SELECT 
    courses.school AS school_name,
    courses.courses AS course_name,
    locations.country_name
FROM
    courses
        JOIN
    locations ON courses.school_id = locations.school_id
WHERE
    courses.courses LIKE '%data science%'
        AND locations.country_name IS NOT NULL
        AND locations.school = 'Ironhack'
GROUP BY school_name , course_name , country_name;

