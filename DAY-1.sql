#DDL -> Data Definition Language
#Create,alter,truncate,rename,drop

create database student;
use student;
create table students(stu_id tinyint, name varchar(30), 
course varchar(20), ph_no varchar(20));
desc students;

select * from students;
#To add or remove column
#To rename the column datatype
#to modify a column datatype
#drop database
#drop table

# 1. Alter -> TO perform column operations.
# syntax: alter table table_name add column column_name daattype;
alter table students add column email varchar(50);
desc students;
alter table students add column address varchar(50);

#Remove column:
#syntax: alter table table_name drop column column name;
alter table students drop column ph_no;

#Modify column datatype:
#syntax: alter table table_name modify column column_name new datatype;
alter table students modify column name char(20);

#Rename column:
#syntax: alter table table_name rename to new_table_name;
alter table students rename to stu;
desc stu;
#syntax: alter table table_name rename column old_column_name to new_column_name
alter table stu rename column name to stu_name;
drop table stu;
drop database student;


#DML -> Data manipulation language
#insert, update, delete
use student;
create table employee(emp_id tinyint, emp_name varchar(20),
salary decimal(10,2), dept_id tinyint, age tinyint, ph_no varchar(11),
email varchar(20), city varchar(10));
desc employee;

#INSERT:
insert into employee values
(001,"yaswanth",50000,101,23,"9989100123","yaswanth@gmail.com","vja"),
(002,"teja",60000,102,21,"123451234","teja@gmail.com","vja");
select * from employee;
select salary from employee;
select * from employee where emp_id=001;

#DELETE:
SET SQL_SAFE_UPDATES = 0;
delete from employee where emp_id=002;

#UPDATE:
update employee set salary=55000 where emp_id=001;
update employee set city="hyd" where emp_id=001;
select * from employee;

#TRUNCATE:
truncate table employee;
select * from employee;

