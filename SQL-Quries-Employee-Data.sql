-- create a database 
create database abc_company;

use abc_company;

-- create a table 
create table Employee (
    EmployeeID int primary key auto_increment,
    Firstname char(10),
    Lastname char(10),
    Age int,
    Department varchar(15),
    Salary int,
    City char(25),
    JoiningDate date
    ) auto_increment = 1001;
    
    
    -- insert the data 
    insert into Employee (Firstname,lastname,Age,Department,Salary,City,JoiningDate)
    values
('Amit', 'Sharma', 28, 'HR', 75000, 'Delhi', '2022-01-15'),
('Priya', 'Verma', 25, 'Sales', 42000, 'Mumbai', '2023-03-20'),
('Rahul', 'Singh', 30, 'Finance', 50000, 'Lucknow', '2021-07-10'),
('Neha', 'Gupta', 27, 'IT', 60000, 'Bengaluru', '2024-02-12'),
('Rohit', 'Patel', 32, 'Marketing', 55000, 'Ahmedabad', '2020-11-05'),
('Sneha', 'Joshi', 26, 'HR', 38000, 'Pune', '2023-08-18'),
('Karan', 'Mehta', 29, 'IT', 65000, 'Hyderabad', '2022-06-25'),
('Pooja', 'Yadav', 24, 'Sales', 40000, 'Jaipur', '2024-01-08'),
('Vikas', 'Mishra', 35, 'Finance', 70000, 'Bhopal', '2019-09-30'),
('Anita', 'Nair', 31, 'Marketing', 58000, 'Kochi', '2021-12-14'),
('Arjun', 'Kumar', 29, 'IT', 62000, 'Chennai', '2022-04-15'),
('Meera', 'Reddy', 26, 'HR', 39000, 'Visakhapatnam', '2023-05-10'),
('Suresh', 'Pillai', 34, 'Finance', 72000, 'Thiruvananthapuram', '2020-08-20'),
('Kavita', 'Shah', 28, 'Sales', 45000, 'Surat', '2021-11-18'),
('Nitin', 'Agarwal', 31, 'Marketing', 56000, 'Indore', '2022-07-05'),
('Divya', 'Bansal', 24, 'IT', 48000, 'Noida', '2024-01-25'),
('Manoj', 'Saxena', 36, 'Finance', 78000, 'Kanpur', '2019-06-14'),
('Ritu', 'Chopra', 27, 'HR', 41000, 'Chandigarh', '2023-09-12'),
('Deepak', 'Jain', 30, 'Sales', 46000, 'Nagpur', '2022-10-08'),
('Shalini', 'Kapoor', 29, 'Marketing', 59000, 'Gurugram', '2021-03-22'),
('Ajay', 'Dubey', 33, 'IT', 68000, 'Patna', '2020-12-11'),
('Bhavna', 'Sinha', 25, 'HR', 37000, 'Ranchi', '2024-02-18'),
('Yash', 'Malhotra', 28, 'Sales', 43000, 'Ludhiana', '2023-06-30'),
('Komal', 'Arora', 32, 'Finance', 75000, 'Amritsar', '2021-08-17'),
('Harsh', 'Tiwari', 27, 'IT', 61000, 'Varanasi', '2022-09-09'),
('Nisha', 'Kulkarni', 30, 'Marketing', 57000, 'Nashik', '2021-05-27'),
('Sameer', 'Deshmukh', 35, 'Finance', 81000, 'Aurangabad', '2019-10-13'),
('Asha', 'Iyer', 26, 'HR', 40000, 'Mysuru', '2023-04-06'),
('Vivek', 'Chauhan', 31, 'Sales', 49000, 'Dehradun', '2022-11-29'),
('Preeti', 'Pandey', 28, 'IT', 64000, 'Raipur', '2020-07-21');

-- Display the table data
select * from employee;

-- update the salary 
update employee set salary =60000 where Firstname = "Rahul";
select * from employee;

-- delete the records where id no is 7
delete from employee where EmployeeID = 1007;
select * from employee;

-- display the salary salary is greater then 50000
select * from employee where salary > 50000;

-- Display the department who belong to IT 
select * from employee where Department = "IT";

-- Display the records who join after the 1-jan-2021
select * from employee where JoiningDate > "2021-01-01";

-- Find the employee whose salary between 40000 and 70000
select * from employee where salary between 40000 and 70000;

-- Display employee whose city is either Indore or Bhopal
select * from employee where city = "indore" or city = "bhopal";

-- Find the employee whose age is not epual to 30
select * from employee where Age !=30;

-- Find the employee whose name Start with 'A'
select * from employee where Firstname like 'a%';

-- Find the employee whose name End with 'A'
select * from employee where Firstname like '%a';

-- Find the employee whose city Contains 'ore'
select * from employee where city like '%ore%';

-- Display the employee who belong to Delhi and salary greater than 50000
select * from employee where city = 'delhi' and salary >50000;

-- Display employee who belong to Mumbai or delhi
select * from employee where city = 'Mumbai' or city = 'delhi';

-- Find the Total Employee
select count(*) as Total_Emp from employee;

-- Find the Maximum salary 
select max(salary) as Maximum_Emp from employee;
select Department,max(Salary) as Maximum_Emp from employee group by Department;

-- Find Minimum Salary
select min(salary) as Minimum_emp from employee;
select Department , Min(salary) as Minimum_emp from employee group by Department;

-- Find the Average Salary
select avg(salary) as Avg_emp from employee;
select department,avg(salary) as avg_emp from employee group by Department;

-- Find the Total salary
select sum(salary) as Total_salary from employee;
-- Total Salary Department Wise
select department, sum(salary) as Total_salary from employee group by Department;

-- Count employee records city wise
select city,count(EmployeeID) as Total_city from employee group by city;
select * from employee;
    
-- Display the employee salary as a Descending order
select * from employee order by salary desc;

-- Display the employee city order (A-Z) and salary (Highest First)
select * from employee order by city asc ,salary desc;

    