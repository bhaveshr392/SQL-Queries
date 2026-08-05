create database class;
use class;

-- Create a First Table School
create table school(sid int primary Key auto_increment,
sname varchar(20), 
class varchar(4) default '10th',
result char(5)) auto_increment = 1001;

insert into school (sname,result) values
('Govind','Pass'),('Ram','Pass'),('Kapil','Fail'),('Rakesh','Pass'),
('Mukul','Fail'),('Arush','Fail'),('Yash','Pass');

-- Create Second Table stud
create table stud (rno int primary key auto_increment,
sname varchar(20),
sport char(10) not null) auto_increment = 1001;

insert into stud (sname, sport) values
('Govind','Cricket'),
('Rakesh','Khokho'),
('Mukul','Cricket'),
('Yash','Dangal');

show tables;
select * from school;
select * from stud;

					-- Joins
 -- 1. Inner Joins
 -- 2. Left Joins 
 -- 3. Right Joins 
 
						-- inner Join
select school.sid,school.sname,school.class,school.result,
stud.sports from school
inner join
stud
on school.sid = stud.rno;

						-- Left join
select school.sid,school.sname,school.class,school.result,
stud.sports from school
Left Join
stud
on school.sid = stud.rno;

						-- Right Jion
select school.sid,school.sname,school.class,school.result,
stud.sports from school
Right Join
stud
on school.sid = stud.rno;

					-- Cross Join
select school.sid,school.sname,school.class,school.result,
stud.sports from school
Cross Join
stud;
