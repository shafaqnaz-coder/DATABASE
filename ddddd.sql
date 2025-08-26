create database compnay;

use compnay;

create table Department(
	DeptNo int primary key,
	DeptName varchar(50) not null,
	Location varchar(50) not null
);

create table Employee(
	EmpID int primary key,
	EmpName varchar(50) not null,
	Job varchar(20) not null,
	Salary int not null,
	DeptNo int,
	foreign key (DeptNo) references Department(DeptNo),
);

insert into Department(DeptNo, DeptName, Location) values (1, 'BSCS', 'Lahore'), (2, 'BSCS', 'Sialkot');

insert into Employee(EmpID, EmpName, Job, Salary, DeptNo) values (1, 'SHAFAQ', 'Professor', 25000, 1), (2, 'ANSA', 'Teacher', 50000, 1), (3, 'ALIZA', 'Teacher', 20000, 2);

select * from Department;
select * from Employee;

----------------------------------------

select * from Employee;

select EmpName, Salary from Employee;

select Employee.EmpName, Employee.Job, Department.DeptName from Employee join Department on Department.DeptNo = Employee.EmpID;

create view salary as
select * from Employee
where Salary > 30000;

select * from salary;