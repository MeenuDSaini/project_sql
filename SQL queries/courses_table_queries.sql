SELECT 
    *
FROM
    sql_project.courses;

/* Question: which are the unique courses offered by all schools?*//* answer: # courses
Cyber Security Career Track
Data Analytics Career Track
Data Science Career Track
Data Science Career Track Prep
Front-End Web Development
Introduction to Data Analytics
Introduction to Design
Software Engineering Career Track
Software Engineering Career Track Prep Course
Software Engineering Foundations to Core
Tech Sales Career Track
UI/UX Design Career Track
UX Career Track
Python for Data Analysis
R for Data Analysis
Cyber Security Course
Data Analytics & Business Intelligence Course
SDET Automation Testing Course
Cyber Security Bootcamp
Cybersecurity Part-Time
Data Analytics Bootcamp
Data Analytics Part-Time
UX/UI Design Bootcamp
UX/UI Design Part-Time
Web Development Bootcamp
Web Development Part-Time
Business Intelligence Analytics
Data Analytics
Data Science
Quality Assurance Engineering
Software Engineering
Data Analyst Bootcamp (Part-Time)
AI Programming with Python
Al Product Manager
Android Basics
Android Developer
Artificial Intelligence
Artificial Intelligence for Trading
Blockchain Developer
Business Analytics
C++
Cloud Dev Ops Engineer
Cloud Developer
Computer Vision
Data Analyst
Data Engineer
Data Structures and Algorithms
Data Visualization
Deep Learning
Deep Reinforcement Learning
Digital Marketing
Front End Web Developer
Full Stack Web Developer
Introduction to Machine Learning
Introduction to Programming
iOS Developer
Java Developer
Machine Learning Engineer
Marketing Analytics
Natural Language Processing
Predictive Analytics for Business
React
Robotics Software Engineer
Self-Driving Car Engineer
UX Designer
Artificial Intelligence Course
Cybersecurity Course
Data Analytics Course
Data Science Bootcamp
Data Science Course
Design Leadership Course
Digital Marketing Course
Marketing Leadership Course
Product Leadership Course
Product Management Course
Python Course
Search Engine Marketing Course
Social Media Marketing Course
Software Engineering Bootcamp
User Experience Design Bootcamp
User Experience Design Course
User Interface Design Course
Web Development Course
Cybersecurity Bootcamp
Data Analytics & Business Intelligence Bootcamp
Data Science & Data Engineering Bootcamp
Full-Stack Developer Bootcamp
Data Analytics Flex
Data Analytics Immersion
Data Science Flex
Digital Marketing Flex
Engineering Flex Program
Engineering Immersion
Technical Project Management Flex
UX/UI Design Immersion
UX/UI Flex
Data Analytics (Short Course)
Data Analytics Bootcamp (Full-Time)
Data Science (Short Course)
Data Science Bootcamp (Full-Time)
Digital Marketing (Short Course)
Front-End Web Development (Short Course)
JavaScript Development (Short Course)
Product Management (Short Course)
Python Programming (Short Course)
React Development (Short Course)
Software Engineering Bootcamp (Full-Time)
User Experience Design (Short Course)
User Experience Design Bootcamp (Full-Time)
Visual Design (Short Course)*/

SELECT DISTINCT
    courses
FROM
    courses;

/* question: find the courses provided by Ironhack*//* answer: courses are:
Cyber Security Bootcamp
Cybersecurity Part-Time
Data Analytics Bootcamp
Data Analytics Part-Time
UX/UI Design Bootcamp
UX/UI Design Part-Time
Web Development Bootcamp
Web Development Part-Time
*/
SELECT 
    courses
FROM
    courses
WHERE
    school = 'Ironhack';

/* question: find the schools offering data analytics course *//* answer:# school
springboard
syntax-technologies
ironhack
tripleten
colaberry
brainstation
ccs-learning-academy
thinkful
general-assembly
 */
SELECT DISTINCT
    school
FROM
    courses
WHERE
    courses LIKE '%data analytics%';

/* question : which are the top 6 schools in number of courses offered by each school*//* Answer: # # school, course_count
brainstation, 20
general-assembly, 14
springboard, 13
thinkful, 9
ironhack, 8
*/ 

SELECT 
    school, COUNT(courses) AS course_count
FROM
    courses
GROUP BY school
ORDER BY course_count DESC
LIMIT 6;