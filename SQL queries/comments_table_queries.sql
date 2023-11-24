SELECT 
    *
FROM
    sql_project.comments_trial;


/* Question: Count Total records of comments of all schools. 
Answer: 
10571	238	brainstation
10683	205	dataquest
10761	827	general-assembly
10828	1233	ironhack
11035	1428	springboard
11098	428	thinkful
11118	1381	udacity
11225	193	tripleten
11718	48	colaberry
11736	74	ccs-learning-academy
11740	15	maven-analytics
11797	103	syntax-technologies*/

SELECT 
    comments_trial.school_id,
    COUNT(*) AS total_records,
    schools.school
FROM
    comments_trial
        JOIN
    schools USING (school_id)
GROUP BY comments_trial.school_id , schools.school;

/* Question: which schools are providing maximum job support*//* 
Answer: # school_id, highest_job_support, school
11740	5	maven-analytics
11797	5	syntax-technologies
10828	4.69	ironhack
11225	4.674	tripleten
11736	4.608	ccs-learning-academy
11718	4.542	colaberry
11035	4.507	springboard
11098	4.449	thinkful
10683	4.415	dataquest
10571	4.113	brainstation
11118	4.063	udacity
10761	3.712	general-assembly
*/

SELECT 
    comments_trial.school_id,
    ROUND(AVG(jobSupport), 3) AS highest_job_support,
    schools.school
FROM
    comments_trial
        JOIN
    schools USING (school_id)
GROUP BY comments_trial.school_id , schools.school
ORDER BY highest_job_support DESC;

/* Question: which school has max overall score?*//*
Answer: 
11740	5	maven-analytics
11797	5	syntax-technologies
11225	4.798	tripleten
11718	4.752	colaberry
10828	4.738	ironhack
10683	4.707	dataquest
11736	4.631	ccs-learning-academy
11035	4.593	springboard
11098	4.557	thinkful
10571	4.461	brainstation
11118	4.402	udacity
10761	4.081	general-assembly
*/
SELECT 
    comments_trial.school_id,
    ROUND(AVG(overall_score), 3) AS highest_overAll_Score,
    schools.school
FROM
    comments_trial
        JOIN
    schools USING (school_id)
GROUP BY comments_trial.school_id , schools.school
ORDER BY highest_overAll_Score DESC;

/* Question: list of schools with max overall score.*//* 
# school_id, highest_overAll_Score, school
11740	5	maven-analytics
11797	5	syntax-technologies
11225	4.798	tripleten
11718	4.752	colaberry
10828	4.738	ironhack
10683	4.707	dataquest
11736	4.631	ccs-learning-academy
11035	4.593	springboard
11098	4.557	thinkful
10571	4.461	brainstation
11118	4.402	udacity
10761	4.081	general-assembly
*/
SELECT 
    comments_trial.school_id,
    ROUND(AVG(overall_score), 3) AS highest_overAll_Score,
    schools.school
FROM
    comments_trial
        JOIN
    schools USING (school_id)
GROUP BY comments_trial.school_id , schools.school
ORDER BY highesT_overAll_Score DESC;

/* Question: which schools are providing Highest job support and in year 2023*//* answer: 
# school_id, highest_overAll_Score, graduatingYear, school
11740	5	2023	maven-analytics
11225	4.75	2023	tripleten
11736	4.615	2023	ccs-learning-academy
11035	4.5	2023	springboard
11718	4.438	2023	colaberry
10828	4.06	2023	ironhack
10761	3.667	2023	general-assembly
11118	1	2023	udacity
11098	1	2023	thinkful
10571	1	2023	brainstation
*/
SELECT 
    comments_trial.school_id,
    ROUND(AVG(jobsupport),3) AS highest_job_support,
    graduatingYear,
    schools.school
FROM
    comments_trial
        JOIN
    schools USING (school_id)
WHERE
    graduatingYear = 2023
GROUP BY comments_trial.school_id , schools.school , graduatingYear
ORDER BY highest_job_support DESC;


/* Question: list of schools with maximum curriculum score*//* Answer: 
# school_id, highest_curriculum_Score, school
11740	5	maven-analytics
11797	5	syntax-technologies
10683	4.854	dataquest
11225	4.834	tripleten
11718	4.833	colaberry
10828	4.715	ironhack
10571	4.601	brainstation
11035	4.578	springboard
11118	4.556	udacity
11098	4.554	thinkful
11736	4.514	ccs-learning-academy
10761	4.279	general-assembly
*/
SELECT 
    comments_trial.school_id,
    ROUND(AVG(curriculum), 3) AS highest_curriculum_Score,
    schools.school
FROM
    comments_trial
        JOIN
    schools USING (school_id)
GROUP BY comments_trial.school_id , schools.school
ORDER BY highest_curriculum_score DESC;

/* Comparison between avg prices and number of comments per school:
school_id, total_records, avg_price, school
11118	13810	1364.2	udacity
11035	12852	6132	springboard
10828	9864	10062.5	ironhack
10761	8270	7930	general-assembly
11098	3852	9811.111111111111	thinkful
10571	2380	6110	brainstation
11225	965	7820	tripleten
10683	410	29	dataquest
11736	296	10495	ccs-learning-academy
11718	48	1999	colaberry
11740	15	7499	maven-analytics*/

SELECT 
    comments_TRIAL.school_id,
    COUNT(*) AS total_records,
    AVG(course_prices.price) AS avg_price,
    course_prices.school
FROM
    comments_TRIAL
        JOIN
    course_prices USING (school_id)
GROUP BY comments_TRIAL.school_id , course_prices.school
ORDER BY total_records DESC;