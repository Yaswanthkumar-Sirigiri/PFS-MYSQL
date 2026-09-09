
# DAY-05:
use world;
show tables;
select * from city;
select * from country;
select * from countrylanguage;
/* group by- creates groups */
select continent,count(*) as total_countries
from country
group by continent
having count(*)>30; /* having-filters the groups */

select name,population,population+1000 as updated_pop
from country;

select name,population,population*2 as updated_pop
from country;

/*Comparision operator*/
select name,population from country where population>1000000;

/*assignment operator*/
set @num=100;
select @num+5;

/*logical operator*/
#AND operator:
select name,continent,population
from country
where continent='asia'
AND population>1000000;

#OR operator:
select name,continent from country where continent='europe' or continent='africa';

#NOT operator:
select name,continent,population
from country where NOT continent='asia';

/*bitwise operator*/
select 6&3 as result;
select 6<<3;

/*Special operators: */
/*like: */
select name from country where name LIKE 'I%';
select name from country where name like '_e%';
select name from country where name like '%land';

/*ISNULL:*/
select name,headofstate from country where headofstate is null; /*Retrieve empty records*/
select name,headofstate from country where headofstate is not null; /*Retrieve the non epty records*/

/*ISNULL() Function: 1->NUll, 0->Not null*/
select name,headofstate,isnull(headofstate) from country;