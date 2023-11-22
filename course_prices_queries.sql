SELECT * FROM sql_project.course_prices;

/* Question: What is average price of course across all schools?*//* Answer: 6353.59)*/
select round(avg(price),2) as average_price from course_prices
where price is not null;

/* Question: What is Average price of each course for all the schools?*//* Answer:# course, school, average_price
AI Programming with Python, udacity, 1077
Al Product Manager, udacity, 718
Android Basics, udacity, 1077
Android Developer, udacity, 2154
Artificial Intelligence, udacity, 1077
Artificial Intelligence Course, brainstation, 3250
Artificial Intelligence for Trading, udacity, 2154
Blockchain Developer, udacity, 1436
Business Analytics, udacity, 1077
Business Intelligence Analytics, tripleten, 6900
C++, udacity, 1436
Cloud Dev Ops Engineer, udacity, 1436
Cyber Security Bootcamp, ironhack, 7500
Cyber Security Career Track, springboard, 9900
Cyber Security Course, syntax-technologies, 0
Cybersecurity Bootcamp, ccs-learning-academy, 12995
Cybersecurity Bootcamp, brainstation, 16500
Cybersecurity Course, brainstation, 3250
Cybersecurity Part-Time, ironhack, 7500
Data Analyst Bootcamp (Part-Time), maven-analytics, 7499
Data Analytics, colaberry, 1999
Data Analytics, tripleten, 7900
Data Analytics (Short Course), general-assembly, 4500
Data Analytics & Business Intelligence Bootcamp, ccs-learning-academy, 7995
Data Analytics & Business Intelligence Course, syntax-technologies, 0
Data Analytics Bootcamp, ironhack, 7500
Data Analytics Career Track, springboard, 8500
Data Analytics Course, brainstation, 3250
Data Analytics Flex, thinkful, 8000
Data Analytics Immersion, thinkful, 12250
Data Analytics Part-Time, ironhack, 8000
Data Science, colaberry, 1500
Data Science, tripleten, 9700
Data Science & Data Engineering Bootcamp, ccs-learning-academy, 11995
Data Science Bootcamp, brainstation, 16500
Data Science Bootcamp (Full-Time), general-assembly, 16450
Data Science Career Track, springboard, 9900
Data Science Career Track Prep, springboard, 490
Data Science Course, brainstation, 3250
Data Science Flex, thinkful, 9500
Design Leadership Course, brainstation, 3950
Digital Marketing (Short Course), general-assembly, 4500
Digital Marketing Course, brainstation, 3250
Digital Marketing Flex, thinkful, 4900
Engineering Flex Program, thinkful, 9500
Engineering Immersion, thinkful, 16000
Front-End Web Development, springboard, 0
Front-End Web Development (Short Course), general-assembly, 4500
Full-Stack Developer Bootcamp, ccs-learning-academy, 8995
Introduction to Data Analytics, springboard, 349
Introduction to Design, springboard, 349
JavaScript Development (Short Course), general-assembly, 3950
Marketing Leadership Course, brainstation, 3950
Product Leadership Course, brainstation, 3950
Product Management (Short Course), general-assembly, 4500
Python for Data Analysis, dataquest, 29
Quality Assurance Engineering, tripleten, 4900
R for Data Analysis, dataquest, 29
SDET Automation Testing Course, syntax-technologies, 0
Software Engineering, tripleten, 9700
Software Engineering Bootcamp (Full-Time), general-assembly, 16450
Software Engineering Career Track, springboard, 9900
Software Engineering Foundations to Core, springboard, 9900
Tech Sales Career Track, springboard, 5900
Technical Project Management Flex, thinkful, 6500
User Experience Design (Short Course), general-assembly, 4500
User Experience Design Bootcamp (Full-Time), general-assembly, 16450
UX/UI Design Bootcamp, ironhack, 12000
UX/UI Design Immersion, thinkful, 12150
UX/UI Design Part-Time, ironhack, 13000
UX/UI Flex, thinkful, 9500
Visual Design (Short Course), general-assembly, 3500
Web Development Bootcamp, ironhack, 12000
Web Development Part-Time, ironhack, 13000*/

select course, school, round(avg(price),2) as average_price
from course_prices
where price is not null
group by school, course
order by course, average_price;

select course, school, round(avg(price),2) as average_price
from course_prices
where price is not null
group by school, course
order by course, average_price;

select course, school, round(avg(price),2) as average_price
from course_prices
where price is not null
group by school, course
order by course, average_price;

/* Question: What are the prices of IronHack courses*//* Answer:# price, course
7500, Cyber Security Bootcamp
7500, Cybersecurity Part-Time
7500, Data Analytics Bootcamp
8000, Data Analytics Part-Time
12000, UX/UI Design Bootcamp
13000, UX/UI Design Part-Time
12000, Web Development Bootcamp
13000, Web Development Part-Time
*/

SELECT price,course
FROM course_prices
WHERE price IS NOT NULL AND school = 'Ironhack'
order by course, price;

/* Question: What are the prices of springboard courses*//* Answer:# price, course
9900, Cyber Security Career Track
8500, Data Analytics Career Track
9900, Data Science Career Track
490, Data Science Career Track Prep
Not found, Front-End Web Development
349, Introduction to Data Analytics
349, Introduction to Design
9900, Software Engineering Career Track
9900, Software Engineering Foundations to Core
5900, Tech Sales Career Track
*/
SELECT price,course
FROM course_prices
WHERE price IS NOT NULL AND school = 'springboard'
order by course, price;

/* Question: What are the prices of udacity courses*//* Answer:# price, course
1077, AI Programming with Python
718, Al Product Manager
1077, Android Basics
2154, Android Developer
1077, Artificial Intelligence
2154, Artificial Intelligence for Trading
1436, Blockchain Developer
1077, Business Analytics
1436, C++
1436, Cloud Dev Ops Engineer
*/

SELECT price,course
FROM course_prices
WHERE price IS NOT NULL AND school = 'udacity'
order by course, price;

/* Question: list of courses offered by springboard whose price are less than Ironhack*//* Answer:# # course, school, price
Data Science Career Track Prep, springboard, 490
Introduction to Data Analytics, springboard, 349
Tech Sales Career Track, springboard, 5900
Introduction to Design, springboard, 349
*/
select course, school, price
from course_prices
where school = 'springboard' and  price is not null and price<7500;

/* Question: list of courses offered by udacity whose price are less than Ironhack*//* Answer:# AI Programming with Python	udacity	1077
Android Basics	udacity	1077
Artificial Intelligence	udacity	1077
Business Analytics	udacity	1077
Blockchain Developer	udacity	1436
C++	udacity	1436
Cloud Dev Ops Engineer	udacity	1436
Android Developer	udacity	2154
Artificial Intelligence for Trading	udacity	2154
Al Product Manager	udacity	718
*/
select course, school, price
from course_prices
where school = 'udacity' and  price is not null and price<7500
order by price asc;

/* question: list of schools providing data analytics courses.*/ /* Answer: # school, course, price
syntax-technologies, Data Analytics & Business Intelligence Course, Not found
springboard, Data Analytics Career Track, 8500
ironhack, Data Analytics Part-Time, 8000
thinkful, Data Analytics Flex, 8000
ccs-learning-academy, Data Analytics & Business Intelligence Bootcamp, 7995
tripleten, Data Analytics, 7900
ironhack, Data Analytics Bootcamp, 7500
general-assembly, Data Analytics (Short Course), 4500
springboard, Introduction to Data Analytics, 349
brainstation, Data Analytics Course, 3250
colaberry, Data Analytics, 1999
thinkful, Data Analytics Immersion, 12250
*/
SELECT school,course,price
FROM course_prices
WHERE price IS NOT NULL AND course like '%data analytics%'
order by price desc;

/* Question: list of schools who are providing data analytics courses in less prices than Ironhack.*//* answer: syntax-technologies	Data Analytics & Business Intelligence Course	Not found
general-assembly	Data Analytics (Short Course)	4500
springboard	Introduction to Data Analytics	349
brainstation	Data Analytics Course	3250
colaberry	Data Analytics	1999*/

SELECT school,course,price
FROM course_prices
WHERE course like '%data analytics%' and price IS NOT NULL AND price<7500
order by price desc;

/* Question: list of schools who are providing data science courses.*//* Answer: # school, course, price
springboard, Data Science Career Track, 9900
tripleten, Data Science, 9700
thinkful, Data Science Flex, 9500
springboard, Data Science Career Track Prep, 490
brainstation, Data Science Course, 3250
brainstation, Data Science Bootcamp, 16500
general-assembly, Data Science Bootcamp (Full-Time), 16450
colaberry, Data Science, 1500   - 4000
ccs-learning-academy, Data Science & Data Engineering Bootcamp, 11995
*/

SELECT school,course,price
FROM course_prices
WHERE price IS NOT NULL AND course like '%data science%'
order by price desc;

/* Question: list of schools who are providing data science courses in less prices than Ironhack.*//* Answer: # school, course, price
springboard, Data Science Career Track Prep, 490
brainstation, Data Science Course, 3250
colaberry, Data Science, 1500   - 4000
*/
SELECT school,course,price
FROM course_prices
WHERE course like '%data science%' and price IS NOT NULL AND price<7500
order by price desc;

/* Question: list of courses offered by brainstation in less price than IronHack*//* Answer: # course, school, price
Artificial Intelligence Course, brainstation, 3250
Cybersecurity Course, brainstation, 3250
Data Analytics Course, brainstation, 3250
Data Science Course, brainstation, 3250
Design Leadership Course, brainstation, 3950
Digital Marketing Course, brainstation, 3250
Marketing Leadership Course, brainstation, 3950
Product Leadership Course, brainstation, 3950
*/
select course, school, price
from course_prices
where school = 'brainstation' and  price is not null and price<7500;

/* Question: list of courses offered by brainstation.*//* Answer:# course, price
Artificial Intelligence Course, 3250
Cybersecurity Bootcamp, 16500
Cybersecurity Course, 3250
Data Analytics Course, 3250
Data Science Bootcamp, 16500
Data Science Course, 3250
Design Leadership Course, 3950
Digital Marketing Course, 3250
Marketing Leadership Course, 3950
Product Leadership Course, 3950
 */
SELECT course,price
FROM course_prices
WHERE price IS NOT NULL AND school = 'brainstation'
order by course, price;