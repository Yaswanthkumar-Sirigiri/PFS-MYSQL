#DAY-7:
#Date functions:

#Now():
select now() as date_time;

#curtime():
select curtime();

#curdate():
select curdate();

#sysdate():
select sysdate();

#Date Extraction functions:
#year():
select year(now()) as current_year;

#month():
select month(curdate());
select monthname(curdate());

#day():
select day(curdate());
select dayofmonth(curdate());

#dayname():
select dayname('2026-09-03');

#datediff():
select datediff('2026-09-03','2026-09-14');

#date_add():
select date_add('2026-09-03',interval 4 day);

#date_sub():
select date_sub('2026-09-03',interval 4 day);

#date_format():
select date_format(now(),'%d/%M/%y') as form1;
select date_format(now(),'%d-%m-%y %H:%i:%s') as form2;
select date_format(now(),'%H:%i:%p') as form3;

#str_to_date():
select str_to_date('03-09-26','%d-%m-%y') as form4;

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\
use world;
#AGGREGATE FUNCTIONS:
#count():- counts the no. of records
select count(*) as tot_countires from country;
select count(distinct continent) as total_continents from country;

#sum():- calculates the sum of all numerical value
select sum(population) from country;

#avg():- returns the avg values
select avg(population) from country where population>100000;

#max():- returns the greatest values
select max(population) from country where population>100000;

#min():- returns the smallest values
select min(population) from country where population>100000;

select version();
select database();
select user();
select last_insert_id();
desc city;
insert into city(name,CountryCode,District,Population) values('test_city','IND','AP',123456);


