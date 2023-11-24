SELECT * FROM sql_project.comments_numeric;
use sql_project;

/* Qusetion: Count Total records of comments of all schools. Answer: 11035	1428	springboard
10683	205	dataquest
11797	103	syntax-technologies
10828	1233	ironhack
11225	193	tripleten
11718	48	colaberry
11740	15	maven-analytics
11118	1381	udacity
10571	238	brainstation
11736	74	ccs-learning-academy
11098	428	thinkful
10761	827	general-assembly*/

SELECT comments_numeric.school_id, COUNT(*) AS total_records, schools_table.school
FROM comments_numeric
JOIN schools_table USING (school_id)
GROUP BY comments_numeric.school_id, schools_table.school
LIMIT 0, 5000;

/* Question: which schools are providing maximum job support*//* Answer: # school_id, highest_job_support, school
10571, 5, brainstation
10683, 5, dataquest
10761, 5, general-assembly
10828, 5, ironhack
11035, 5, springboard
11098, 5, thinkful
11118, 5, udacity
11225, 5, tripleten
11718, 5, colaberry
11736, 5, ccs-learning-academy
11740, 5, maven-analytics
11797, 5, syntax-technologies
*/

SELECT comments_numeric.school_id, max(jobSupport) AS highest_job_support, schools_table.school
FROM comments_numeric
JOIN schools_table USING (school_id)
GROUP BY comments_numeric.school_id, schools_table.school
LIMIT 0, 5000;

/* Question: which has max overall score?*/
SELECT comments_numeric.school_id, max(overallScore) AS highest_overAll_Score, schools_table.school
FROM comments_numeric
JOIN schools_table USING (school_id)
GROUP BY comments_numeric.school_id, schools_table.school
LIMIT 0, 5000;

/* Question: list of schools with max overall score.*//* # school_id, highest_overAll_Score, school
11035, 5, springboard
10683, 5, dataquest
11797, 5, syntax-technologies
10828, 5, ironhack
11225, 5, tripleten
11718, 5, colaberry
11740, 5, maven-analytics
11118, 5, udacity
10571, 5, brainstation
11736, 5, ccs-learning-academy
11098, 5, thinkful
10761, 5, general-assembly
*/
SELECT comments_numeric.school_id, max(overallScore) AS highest_overAll_Score, schools_table.school
FROM comments_numeric
JOIN schools_table USING (school_id)
GROUP BY comments_numeric.school_id, schools_table.school
LIMIT 0, 5000;

/* Question: which schools are providing Highest job support and in year 2023*//* answer: # school_id, highest_overAll_Score, graduatingYear, school
11035, 5, 2023, springboard
10828, 5, 2023, ironhack
11225, 5, 2023, tripleten
11718, 5, 2023, colaberry
11740, 5, 2023, maven-analytics
11118, 1, 2023, udacity
10571, 1, 2023, brainstation
11736, 5, 2023, ccs-learning-academy
11098, 1, 2023, thinkful
10761, 5, 2023, general-assembly
*/
SELECT comments_numeric.school_id, max(overallScore) AS highest_overAll_Score, graduatingYear, schools_table.school
FROM comments_numeric
JOIN schools_table USING (school_id)
where graduatingYear = 2023
GROUP BY comments_numeric.school_id, schools_table.school, graduatingYear
order by graduatingYear desc
LIMIT 0, 5000;

SELECT comments_numeric.school_id, max(overallScore) AS highest_overAll_Score, graduatingYear, schools_table.school
FROM comments_numeric
JOIN schools_table USING (school_id)
where graduatingYear = 2020
GROUP BY comments_numeric.school_id, schools_table.school, graduatingYear
order by graduatingYear desc
LIMIT 0, 5000;

/* Question: list of schools with maximum curriculum score*//* Answer: # school_id, highest_curriculum_Score, school
11035, 5, springboard
10683, 5, dataquest
11797, 5, syntax-technologies
10828, 5, ironhack
11225, 5, tripleten
11718, 5, colaberry
11740, 5, maven-analytics
11118, 5, udacity
10571, 5, brainstation
11736, 5, ccs-learning-academy
11098, 5, thinkful
10761, 5, general-assembly
*/
SELECT comments_numeric.school_id, max(curriculum) AS highest_curriculum_Score, schools_table.school
FROM comments_numeric
JOIN schools_table USING (school_id)
GROUP BY comments_numeric.school_id, schools_table.school
LIMIT 0, 5000;

SELECT comments_numeric.school_id, COUNT(*) AS total_records, avg(course_prices.price) as avg_price, course_prices.school
FROM comments_numeric
JOIN course_prices USING (school_id)
GROUP BY comments_numeric.school_id, course_prices.school
LIMIT 0, 5000;