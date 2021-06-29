CREATE DATABASE Payroll_Service

USE Payroll_Service

create Table Employee_Payroll
(
employee_ID int Identity(1,1) primary key,
employee_Name varchar(255),
salary float,
StartDate date
);

INSERT INTO Employee_Payroll(employee_Name,Salary,StartDate)
VALUES ('Chetana PAtil', 15000.00 , '2021-03-14'),
        ('Durgesh Patil',25000.00, '2021-12-12'),
		('Madhuri Patil',30000.00, '2021-01-03'),
		('Suhas Patil',22000.00, '2021-12-23'),
		('Krishna Patil',20000.00, '2021-06-07');

		SELECT * FROM Employee_Payroll;