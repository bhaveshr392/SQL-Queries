-- Create a Database
create database abc_company;

-- select the database
use abc_company;

-- create a Table 
create table employee (
EmployeeID int ,
Firstname char(10),
Lastname char(10),
Department varchar(15),
Salary int,
City char(15),
JoiningDate Date);

desc employee;

-- insert the data into a employee table
insert into employee (EmployeeID,Firstname,Lastname,Department,Salary,City,JoiningDate) 
values
(1001, 'Arjun', 'Patidar', 'Sales', 24000, 'Indore', '2025-01-15'),
(1002, 'Kapil', 'Sharma', 'IT', 54000, 'Bhopal', '2021-03-10'),
(1003, 'Rahul', 'Gupta', 'HR', 60000, 'Indore', '2018-06-22'),
(1004, 'Shubham', 'Verma', 'Marketing', 18000, 'Bhind', '2028-11-05');

insert into employee
(EmployeeID, Firstname, Lastname, Department, Salary, City, JoiningDate)
values
(1005, 'Anjali', 'Singh', 'Sales', 45000, 'Gwalior', '2029-08-18'),
(1006, 'Rohit', 'Jain', 'IT', 52000, 'Indore', '2026-02-12'),
(1007, 'Neha', 'Mishra', 'HR', 38000, 'Bhopal', '2020-09-30'),
(1008, 'Aman', 'Yadav', 'Sales', 27000, 'Jabalpur', '2023-01-14'),
(1009, 'Priya', 'Saxena', 'Marketing', 35000, 'Ujjain', '2010-07-25'),
(1010, 'Vikas', 'Chauhan', 'IT', 48000, 'Indore', '2018-05-16'),
(1011, 'Sneha', 'Patel', 'IT', 65000, 'Bhopal', '2019-12-09'),
(1012, 'Karan', 'Dubey', 'Sales', 30000, 'Sagar', '2022-04-20'),
(1013, 'Pooja', 'Joshi', 'HR', 41000, 'Dewas', '2001-10-11'),
(1014, 'Mohit', 'Tiwari', 'Marketing', 33000, 'Rewa', '2021-09-05'),
(1015, 'Ritika', 'Agrawal', 'Sales', 55000, 'Indore', '2023-03-28');

 insert into employee (Firstname,Lastname,Department,Salary)
 values
 ('Yuvraj','Sharma','IT',18000),
 ('Ganesh','Yadav','Sales',22000),
 ('Tushar','Rajput','IT',14000),
 ('Umesh','Singh','Marketing',16000),
 ('Jiwan','Kori','Sales',22000);
 
 -- Display all the records
 select * from employee;
 
 -- Display name ,Department and Salary
 select Firstname,Department,Salary from employee;
 
 -- Display the IT records 
 select *from employee where department ='IT';

-- Display the salary are greater than 30K
select * from employee where salary >30000;

-- Display the the employee who joined the company after 2024
select * from employee where JoiningDate >'2024-12-31';

-- Increase the Salary of every Employee 
select salary ,salary+1000 as Increase_Salary from employee;

-- Changed the only one employee department as a Data Science
set sql_safe_updates = 0;
update employee set Department = 'Data Science' where EmployeeId = 1001;

select * from employee;

-- update the salary and city with single query
update employee set Salary = 15000 , City = 'Indore' where EmployeeId = 1001;
select * from employee;

-- update the City for all the Employee to India
update employee set City = "India"; 

select * from employee;

-- delete all the HR employee
delete from employee where Department = "HR"; 

select * from employee;

-- delete all the records of an employee earing less than 20K
delete from employee where Salary <20000;

-- Display All the Employee_data as order by Age 
select * from employee order by age desc; -- descending order
select * from employee order by age asc; -- ascending order




