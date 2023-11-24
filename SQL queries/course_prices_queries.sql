SELECT * FROM sql_project.course_prices;

/* Question: What is average price of course across all schools?*//* Answer: 6353.59)*/
SELECT 
    ROUND(AVG(price), 2) AS average_price
FROM
    course_prices
WHERE
    price IS NOT NULL;

/* Question: What is Average price of each course for all the schools?*//* 
Answer:# course, school, average_price
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

SELECT 
    courses, school, ROUND(AVG(price), 2) AS average_price
FROM
    course_prices
WHERE
    price IS NOT NULL
GROUP BY school , courses
ORDER BY courses, average_price;


/* Question: what is Average price for all courses for school?
Answer ORDERED BY AVERAGE PRICE (descending), COURSES (ascending)
Cybersecurity Bootcamp	brainstation	16500
Data Science Bootcamp	brainstation	16500
Data Science Bootcamp (Full-Time)	general-assembly	16450
Software Engineering Bootcamp (Full-Time)	general-assembly	16450
User Experience Design Bootcamp (Full-Time)	general-assembly	16450
Engineering Immersion	thinkful	16000
UX/UI Design Part-Time	ironhack	13000
Web Development Part-Time	ironhack	13000
Cybersecurity Bootcamp	ccs-learning-academy	12995
Data Analytics Immersion	thinkful	12250
UX/UI Design Immersion	thinkful	12150
UX/UI Design Bootcamp	ironhack	12000
Web Development Bootcamp	ironhack	12000
Data Science & Data Engineering Bootcamp	ccs-learning-academy	11995
Cyber Security Career Track	springboard	9900
Data Science Career Track	springboard	9900
Software Engineering Career Track	springboard	9900
Software Engineering Foundations to Core	springboard	9900
Data Science	tripleten	9700
Software Engineering	tripleten	9700
Data Science Flex	thinkful	9500
Engineering Flex Program	thinkful	9500
UX/UI Flex	thinkful	9500
Full-Stack Developer Bootcamp	ccs-learning-academy	8995
Data Analytics Career Track	springboard	8500
Data Analytics Flex	thinkful	8000
Data Analytics Part-Time	ironhack	8000
Data Analytics & Business Intelligence Bootcamp	ccs-learning-academy	7995
Data Analytics	tripleten	7900
Cyber Security Bootcamp	ironhack	7500
Cybersecurity Part-Time	ironhack	7500
Data Analytics Bootcamp	ironhack	7500
Data Analyst Bootcamp (Part-Time)	maven-analytics	7499
Business Intelligence Analytics	tripleten	6900
Technical Project Management Flex	thinkful	6500
Tech Sales Career Track	springboard	5900
Digital Marketing Flex	thinkful	4900
Quality Assurance Engineering	tripleten	4900
Data Analytics (Short Course)	general-assembly	4500
Digital Marketing (Short Course)	general-assembly	4500
Front-End Web Development (Short Course)	general-assembly	4500
Product Management (Short Course)	general-assembly	4500
User Experience Design (Short Course)	general-assembly	4500
Design Leadership Course	brainstation	3950
JavaScript Development (Short Course)	general-assembly	3950
Marketing Leadership Course	brainstation	3950
Product Leadership Course	brainstation	3950
Visual Design (Short Course)	general-assembly	3500
Artificial Intelligence Course	brainstation	3250
Cybersecurity Course	brainstation	3250
Data Analytics Course	brainstation	3250
Data Science Course	brainstation	3250
Digital Marketing Course	brainstation	3250
Android Developer	udacity	2154
Artificial Intelligence for Trading	udacity	2154
Data Analytics	colaberry	1999
Blockchain Developer	udacity	1436
C++	udacity	1436
Cloud Dev Ops Engineer	udacity	1436
AI Programming with Python	udacity	1077
Android Basics	udacity	1077
Artificial Intelligence	udacity	1077
Business Analytics	udacity	1077
Al Product Manager	udacity	718
Data Science Career Track Prep	springboard	490
Introduction to Data Analytics	springboard	349
Introduction to Design	springboard	349
Python for Data Analysis	dataquest	29
R for Data Analysis	dataquest	29*/

SELECT 
    courses, school, ROUND(AVG(price), 2) AS average_price
FROM
    course_prices
GROUP BY school , courses
ORDER BY average_price DESC , courses ASC;



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

SELECT 
    price, courses
FROM
    course_prices
WHERE
    price IS NOT NULL
        AND school = 'Ironhack'
ORDER BY courses , price;

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
SELECT 
    price, courses
FROM
    course_prices
WHERE
    price IS NOT NULL
        AND school = 'springboard'
ORDER BY courses, price;

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

SELECT 
    price, courses
FROM
    course_prices
WHERE
    price IS NOT NULL AND school = 'udacity'
ORDER BY courses, price;

/* Question: list of courses offered by springboard whose price are less than Ironhack*//* Answer:# # course, school, price
Data Science Career Track Prep, springboard, 490
Introduction to Data Analytics, springboard, 349
Tech Sales Career Track, springboard, 5900
Introduction to Design, springboard, 349
*/
SELECT 
    courses, school, price
FROM
    course_prices
WHERE
    school = 'springboard'
        AND price IS NOT NULL
        AND price < 7500;

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
SELECT 
    courses, school, price
FROM
    course_prices
WHERE
    school = 'udacity' AND price IS NOT NULL
        AND price < 7500
ORDER BY price ASC;

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

SELECT 
    school, courses, price
FROM
    course_prices
WHERE
    courses LIKE '%data analytics%'
        AND price IS NOT NULL
        AND price < 7500
ORDER BY price DESC;

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

SELECT 
    school, courses, price
FROM
    course_prices
WHERE
    price IS NOT NULL
        AND courses LIKE '%data science%'
ORDER BY price DESC;

/* Question: list of schools who are providing data science courses in less prices than Ironhack.*//* Answer: # school, course, price
springboard, Data Science Career Track Prep, 490
brainstation, Data Science Course, 3250
colaberry, Data Science, 1500   - 4000
*/
SELECT 
    school, courses, price
FROM
    course_prices
WHERE
    courses LIKE '%data science%'
        AND price IS NOT NULL
        AND price < 7500
ORDER BY price DESC;

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
SELECT 
    courses, school, price
FROM
    course_prices
WHERE
    school = 'brainstation'
        AND price IS NOT NULL
        AND price < 7500;

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
SELECT 
    courses, price
FROM
    course_prices
WHERE
    price IS NOT NULL
        AND school = 'brainstation'
ORDER BY courses , price;

/* Question: prices of part-time courses of Ironhack*//* Answer: # school, course, price
ironhack, Web Development Part-Time, 13000
ironhack, UX/UI Design Part-Time, 13000
ironhack, Cybersecurity Part-Time, 7500
ironhack, Data Analytics Part-Time, 8000
*/
SELECT school,course,price
FROM course_prices
WHERE price IS NOT NULL AND course like '%Part-Time%' AND school like 'Ironhack'
ORDER BY school, price;

/* Question: prices full-time courses of Ironhack*//*Answer: # school, course, price
ironhack, Web Development Bootcamp, 12000
ironhack, UX/UI Design Bootcamp, 12000
ironhack, Cyber Security Bootcamp, 7500
ironhack, Data Analytics Bootcamp, 7500
*/
SELECT school,course,price
FROM course_prices
WHERE price IS NOT NULL AND course not like '%Part-Time%' AND school like 'Ironhack'
ORDER BY school, price;

/* Question: prices of part-time courses of all schools other than Ironhack*//* Answer: maven-analytics	Data Analyst Bootcamp (Part-Time)	7499*/
SELECT school,course,price
FROM course_prices
WHERE price IS NOT NULL AND course like '%Part-Time%' AND school not like 'Ironhack'
ORDER BY school, price;

/* Question: prices full-time and short courses of all schools other than Ironhack*//* Answer: # school, course, price
brainstation, Data Science Bootcamp, 16500
brainstation, Cybersecurity Bootcamp, 16500
brainstation, Artificial Intelligence Course, 3250
brainstation, Digital Marketing Course, 3250
brainstation, Data Science Course, 3250
brainstation, Data Analytics Course, 3250
brainstation, Cybersecurity Course, 3250
brainstation, Product Leadership Course, 3950
brainstation, Marketing Leadership Course, 3950
brainstation, Design Leadership Course, 3950
ccs-learning-academy, Data Science & Data Engineering Bootcamp, 11995
ccs-learning-academy, Cybersecurity Bootcamp, 12995
ccs-learning-academy, Data Analytics & Business Intelligence Bootcamp, 7995
ccs-learning-academy, Full-Stack Developer Bootcamp, 8995
colaberry, Data Science, 1500   - 4000
colaberry, Data Analytics, 1999
dataquest, Python for Data Analysis, 29
dataquest, R for Data Analysis, 29
general-assembly, Software Engineering Bootcamp (Full-Time), 16450
general-assembly, User Experience Design Bootcamp (Full-Time), 16450
general-assembly, Data Science Bootcamp (Full-Time), 16450
general-assembly, Visual Design (Short Course), 3500
general-assembly, JavaScript Development (Short Course), 3950
general-assembly, Digital Marketing (Short Course), 4500
general-assembly, Data Analytics (Short Course), 4500
general-assembly, User Experience Design (Short Course), 4500
general-assembly, Front-End Web Development (Short Course), 4500
general-assembly, Product Management (Short Course), 4500
springboard, Introduction to Design, 349
springboard, Introduction to Data Analytics, 349
springboard, Data Science Career Track Prep, 490
springboard, Tech Sales Career Track, 5900
springboard, Data Analytics Career Track, 8500
springboard, Cyber Security Career Track, 9900
springboard, Data Science Career Track, 9900
springboard, Software Engineering Foundations to Core, 9900
springboard, Software Engineering Career Track, 9900
springboard, Front-End Web Development, Not found
syntax-technologies, Cyber Security Course, Not found
syntax-technologies, Data Analytics & Business Intelligence Course, Not found
syntax-technologies, SDET Automation Testing Course, Not found
thinkful, UX/UI Design Immersion, 12150
thinkful, Data Analytics Immersion, 12250
thinkful, Engineering Immersion, 16000
thinkful, Digital Marketing Flex, 4900
thinkful, Technical Project Management Flex, 6500
thinkful, Data Analytics Flex, 8000
thinkful, Engineering Flex Program, 9500
thinkful, UX/UI Flex, 9500
thinkful, Data Science Flex, 9500
tripleten, Quality Assurance Engineering, 4900
tripleten, Business Intelligence Analytics, 6900
tripleten, Data Analytics, 7900
tripleten, Data Science, 9700
tripleten, Software Engineering, 9700
udacity, Business Analytics, 1077
udacity, Artificial Intelligence, 1077
udacity, AI Programming with Python, 1077
udacity, Android Basics, 1077
udacity, Blockchain Developer, 1436
udacity, Cloud Dev Ops Engineer, 1436
udacity, C++, 1436
udacity, Android Developer, 2154
udacity, Artificial Intelligence for Trading, 2154
udacity, Al Product Manager, 718
*/
SELECT school,course,price
FROM course_prices
WHERE price IS NOT NULL AND course not like '%Part-Time%' AND school not like 'Ironhack'
ORDER BY school, price;

