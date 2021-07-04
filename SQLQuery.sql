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

		SELECT salary FROM Employee_Payroll WHERE employee_Name='Durgesh Patil'
        SELECT salary FROM Employee_Payroll WHERE StartDate BETWEEN CAST('2021-01-03' as date) and GetDate();


		Alter Table Employee_Payroll
		Add gender varchar(20);

UPDATE Employee_Payroll SET gender ='F' WHERE employee_Name='Chetana Patil';
UPDATE Employee_Payroll SET gender ='M' WHERE employee_Name='Durgesh Patil';
UPDATE Employee_Payroll SET gender ='F' WHERE employee_Name='Madhuri Patil';
UPDATE Employee_Payroll SET gender ='M' WHERE employee_Name='Suhas Patil';
UPDATE Employee_Payroll SET gender ='F' WHERE employee_Name='Krishna Patil';

SELECT SUM(salary) FROM Employee_Payroll
SELECT AVG(salary) FROM Employee_Payroll
SELECT MIN(salary) FROM Employee_Payroll
SELECT MAX(salary) FROM Employee_Payroll
SELECT Count(employee_ID) FROM Employee_Payroll
SELECT SUM(salary) FROM Employee_Payroll WHERE gender = 'F' GROUP BY Gender;
SELECT SUM(salary) FROM Employee_Payroll WHERE gender = 'M' GROUP BY Gender;

ALTER TABLE Employee_Payroll Add
phone_Number varchar(10),
department varchar(30),
address varchar(30),
CONSTRAINT default_Address DEFAULT 'Maharashtra' FOR Address;

UPDATE Employee_Payroll SET Address='Maharashtra';

Alter Table Employee_Payroll Add
basicPay float,
deduction float,
taxablePay float,
incomeTax float,
netPay float;

Insert into Employee_Payroll(employee_Name,Salary,StartDate)
VALUES ('Terissa', 70000.00 , '2021-05-26'),
	   ('Terissa', 90000.00 , '2021-05-26')
UPDATE Employee_Payroll SET gender ='Female' where employee_Name='Terissa'
UPDATE Employee_Payroll SET Phone_Number ='8888765380', Department='HR', Address='Pune',basicPay=20000, deduction=3000,taxablePay=2000,incomeTax=300,netPay=15000  WHERE employee_Name='Chetana Patil';
UPDATE Employee_Payroll SET Phone_Number ='9888898769', Department='HR', Address='Shahada',basicPay=10000, deduction=3000,taxablePay=2000,incomeTax=300,netPay=17000  WHERE employee_Name='Durgesh Patil';
UPDATE Employee_Payroll SET Phone_Number ='8878644556', Department='Sales & Marketing', Address='Harayana',basicPay=15000, deduction=2000,taxablePay=1000,incomeTax=400,netPay=19000  WHERE employee_Name='Madhuri Patil';
UPDATE Employee_Payroll SET Phone_Number ='9198765678', Department='Installation', Address='Banglore',basicPay=21000, deduction=7000,taxablePay=2000,incomeTax=200,netPay=16000  WHERE employee_Name='Suhas Patil';
UPDATE Employee_Payroll SET Phone_Number ='8887997687', Department='HR', Address='Amritsar',basicPay=25000, deduction=3000,taxablePay=2000,incomeTax=200,netPay=17000  WHERE employee_Name='Krishna Patil';
UPDATE Employee_Payroll SET Phone_Number ='9998767678', Department='Sales & Marketing', Address='Mumbai',basicPay=20000, deduction=2000,taxablePay=1000,incomeTax=400,netPay=16000  WHERE employee_Name='Terissa';
UPDATE Employee_Payroll SET Phone_Number ='8512305959', Department='Sales & Marketing', Address='Nasik',basicPay=28000, deduction=2000,taxablePay=1000,incomeTax=400,netPay=16000  WHERE employee_Name='Terissa';

