create database school;
use school;

-- teacher

Create table teacher
 (
 teacher_id char(10)
 ,first_name varchar(10)
 ,minit char
 ,last_name varchar(10)
 ,gender char
 ,salary Integer
 ,experiance_years integer
 ,certificate varchar(10)
 ,major varchar(10)
 ,fullTimeOrPartTime char
 );
--  alter table teacher modify column major varchar(10);
--  desc teacher;

-- other employees 

Create table OtherEmploees
 (
 employee_id char(10)
 ,first_name varchar(10)
 ,minit char
 ,last_name varchar(10)
 ,gender char
 ,salary Integer
 ,experiance_years integer
 ,certificate varchar(10)
 ,job_title varchar(10) 
 );
 
 -- student
 
 Create table student
 (
 student_id char(10)
 ,first_name varchar(10)
 ,minit char
 ,last_name varchar(10)
 ,gender char
,parent_phone char(10)
,deduction_pct integer
,class_level varchar(10)
,section_id char(5) 


 );
 
--  alter table student modify column student_id char (10) primary key;
--  rename table OtherEmploees to OtherEmployees;
--   alter table OtherEmployees modify column employee_id char (10) primary key;

-- absences 

create table absences
(
absence_id char(10) primary key,
person_id char(10),
absenceDate date,
cause varchar(20)

);

create table punchments
(
punchment_id char(10) primary key,
person_id char(10),
absenceDate date,
cause varchar(20)

);

create table course 
(
course_id char(10) primary key,
subbject varchar(15),
class_level varchar(10)
);