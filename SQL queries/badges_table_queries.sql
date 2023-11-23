SELECT 
    *
FROM
    sql_project.badges;

/* QUESTION 1:which badges are available? */ /* Answer: 
1) fives badges are available: 
available online(fully online courses), 
flexible classes(part time and evening classes), 
job Guarantee(school guarantees job placement)
verified outcomes(school publishes a third party verified outcomes), 
Accept GI Bill*/
SELECT DISTINCT
    badges_name, description_badge
FROM
    badges;

/*question: which badges in IronHack are available *//* 
Answer: Available online, Verified outcomes and Flexible classes */
SELECT 
    badges_name, description_badge
FROM
    badges
WHERE
    school = 'IronHack';

/* Question: Count the number of badges for each school*//* 
Answer: Ironhack-3, springboard-3, dataquest-2, syntax-technologies-2, tripleten-3, Irudacity-2, brainstation-3, ccs-learning-academy-3, thinkful-4, general-assemply-4)*/
SELECT 
    school, COUNT(*) AS badges_count
FROM
    badges
GROUP BY school;

/* Which schools give job guarantee*//* Answer: springboard,tripleten, ccs-learning-academy, thinkful*/
SELECT 
    school, badges_name
FROM
    badges
WHERE
    badges_name = 'Job Guarantee';

/* Which schools give flexible classes and job guarantee*//* Answer: springborad, tripleten, ccs-learning-academy, thinkful*/
SELECT 
    school, badges_name
FROM
    badges
WHERE
    badges_name IN ('Job Guarantee' , 'flexible classes', 'Available online');

