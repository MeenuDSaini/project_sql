SELECT * FROM sql_project.badges_table;

/* QUESTION 1:which badges are available? */ /* Answer: 1) fives badges are available: available online(fully online courses), flexible classes(part time and evening classes), job Guarantee(school guarantees job placement) and verified outcomes(school publishes a third party verified outcomes), Accept GI Bill*/
SELECT name, description
FROM badges_table;

/*question: which badges in IronHack are available *//* Answer: Available online, Verified outcomes and Flexible classes */
select name, description
from badges_table
where school = 'IronHack';

/* Question: Count the number of badges for each school*//* answer: Ironhack-3, springboard-3, dataquest-2, syntax-technologies-2, tripleten-3, Irudacity-2, brainstation-3, ccs-learning-academy-3, thinkful-4, general-assemply-4)*/
select school, count(*) as badges_count
from badges_table
group by school;

/* Which schools give job guarantee*//* Answer: springboard,tripleten, ccs-learning-academy, thinkful*/
select school, name
from badges_table
where name = 'Job Guarantee';

/* Which schools give flexible classes and job guarantee*//* Answer: springborad, tripleten, ccs-learning-academy, thinkful*/
select school, name
from badges_table
where name in ('Job Guarantee','flexible classes', 'Available online');

