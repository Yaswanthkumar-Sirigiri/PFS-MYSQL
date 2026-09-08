#DAY-3:
#FOREIGN KEY:
create table course(course_id int primary key,course_name varchar(20));
create table stu(stu_id int primary key,stu_name varchar(20),course_id int);
alter table stu add constraint fk_course foreign key(course_id)
references course(course_id);
desc course;
desc stu;

create database amazon;
use amazon;
select * from amazon_products;

create database yaswanth;
use yaswanth;
select * from superstore;

#DISTINCT:
#the dataset will return multiple duplicate values
#Distinct(unique) is used to remove all the duplicate values(row-wise)

select distinct country,segment,category from superstore;

#ORDER BY: is used to sort the result either in Acsending or descending order

select distinct country from superstore order by country asc;
select distinct country from superstore order by country desc;

select distinct country,segment from superstore order by country,segment asc;
select distinct country,segment from superstore order by country,segment desc;