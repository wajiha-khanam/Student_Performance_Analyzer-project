create database build;
use build;
select * from students;

-- 1.Determining avg marks in each subject on gender basis.
select Gender,avg(Math_Score) as Avg_Math_Score,avg(Reading_Score) as Avg_Reading_Score,avg(Writing_Score) as Avg_Writing_Score
from students
group by Gender;
-- By above results we are able to find that female gender has secured high average marks in two subject(Reading and Writing) except in Maths as compared to male gender


-- 2.Determining whether parental level of education is affecting the scores in exam or not.
with cte as(
select Parental_Level_Of_Education,sum(Math_Score+Reading_Score+Writing_Score) as total_marks
from students
group by Parental_Level_Of_Education)
select Parental_Level_Of_Education,total_marks
from cte
order by total_marks desc;
-- By above results we are able to get information that parental level of education is not affecting students performance.

-- 3.Determing students who have secured greater than average in all subject.
select * from students
where Math_Score>(select avg(Math_Score) from students)
and 
Reading_Score>(select avg(Reading_Score) from students)
and
Writing_Score>(select avg(Writing_Score) from students);
-- By above results we are able to find that out of 1000 students only 374 students has secured greater than average in all subjects.

-- 4.To know the no of students who has completed test preparation course
select Test_Preparation_Course,count(*) as no_of_students
from students
where Test_Preparation_Course="Completed";
-- By above results we are able to know that only 358 students out of 1000 students has completed Test Preparation Course.

-- Giving UNIQUE ID to students
alter table students
ADD column S_ID INT auto_increment primary key First;

-- 5.Determing the rank among girls and boys on basis of student performance.
with cte1 as(
select S_ID,Gender,sum(Math_Score+Reading_Score+Writing_Score) as total_marks
FROM STUDENTS
group by S_ID),
cte2 as(
select S_ID,Gender,total_marks,
dense_rank() over(Partition by Gender order by total_marks desc) as `Rank`
from cte1)
select S_ID,Gender,total_marks,`Rank`
from cte2
where `Rank`<4;
-- By above code we are able to get info about the student performance and their rank among their respective gender.

-- 6.Determing count of students of different genders
select Gender,count(*) as no_of_students
from students
group by Gender;
-- By above results we are able to know that female students population is more as compared to male students population 


