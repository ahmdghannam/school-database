CREATE DATABASE school;
USE school;

-- teacher

CREATE TABLE teacher
 (
 teacher_id CHAR(10)
 ,first_name VARCHAR(10)
 ,minit CHAR
 ,last_name VARCHAR(10)
 ,gender CHAR
 ,salary INTEGER
 ,experiance_years INTEGER
 ,certificate VARCHAR(10)
 ,major VARCHAR(10)
 ,fullTimeOrPartTime CHAR
 );
--  alter table teacher modify column major varchar(10);
--  desc teacher;

-- other employees 

CREATE TABLE OtherEmploees
 (
 employee_id CHAR(10)
 ,first_name VARCHAR(10)
 ,minit CHAR
 ,last_name VARCHAR(10)
 ,gender CHAR
 ,salary INTEGER
 ,experiance_years INTEGER
 ,certificate VARCHAR(10)
 ,job_title VARCHAR(10) 
 );
 
 -- student
 
 CREATE TABLE student
 (
 student_id CHAR(10)
 ,first_name VARCHAR(10)
 ,minit CHAR
 ,last_name VARCHAR(10)
 ,gender CHAR
,parent_phone CHAR(10)
,deduction_pct INTEGER
,class_level VARCHAR(10)
,section_id CHAR(5) 


 );
 
--  alter table student modify column student_id char (10) primary key;
--  rename table OtherEmploees to OtherEmployees;
--   alter table OtherEmployees modify column employee_id char (10) primary key;

-- absences 

CREATE TABLE absences
(
absence_id CHAR(10) PRIMARY KEY,
person_id CHAR(10),
absenceDate DATE,
cause VARCHAR(20)

);

CREATE TABLE punchments
(
punchment_id CHAR(10) PRIMARY KEY,
person_id CHAR(10),
absenceDate DATE,
cause VARCHAR(20)

);

CREATE TABLE course 
(
course_id CHAR(10) PRIMARY KEY,
subbject VARCHAR(15),
class_level VARCHAR(10)
);

DESC student;

-- 26/1/2022

CREATE TABLE book
(
book_id CHAR(5) PRIMARY KEY,
edition VARCHAR(5),
title VARCHAR(10),
author VARCHAR(10)

);
DROP TABLE book;

CREATE TABLE borrow
(
book_id CHAR(5)  ,person_id VARCHAR(10)  ,
dateOfBorrowing DATE,
dateOfReturning DATE,
didHeReturnIt BOOL,

PRIMARY KEY(book_id,person_id)
);

CREATE TABLE medicalClinicVisits
(
visit_id CHAR(5) , person_id VARCHAR(10), doctor_id VARCHAR(10),
dateOfVisit DATE,
prescription VARCHAR(20),
fees DOUBLE,
PRIMARY KEY(visit_id,person_id,doctor_id)
);

CREATE TABLE section
(
section_id CHAR(9) PRIMARY KEY,
room_no INTEGER
);

CREATE TABLE lab
(
room_num INTEGER PRIMARY KEY,
role_of_lab VARCHAR(20),
reports VARCHAR(25),
resourses_needed VARCHAR(30)

);

SHOW TABLES;

-- foriegn keys 

alter table borrow add ( constraint constBorrowBook Foreign key (book_id) references book (book_id) );
alter table borrow add ( constraint constBorrowBook2 Foreign key (person_id) references book (person_id) );
insert into borrow values('11','22',null,null,null);

--
create table grades(
student_id char(10),
course_id char(10),
grade integer,
great_mark integer,
min_grade integer

,primary key(student_id,course_id)
);


