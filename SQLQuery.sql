CREATE DATABASE Payroll_Service

USE Payroll_Service

create Table Employee_Payroll
(
employee_ID int Identity(1,1) primary key,
employee_Name varchar(255),
salary float,
StartDate date
);