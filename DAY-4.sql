#DAY-04:
use yaswanth;
select * from superstore;
select country from superstore where country="germany";

#get all records from germany country
select * from superstore where country="germany";

#get all records from germany,spain
select * from superstore where country="germany" or country="spain";

#select all records from germany,spain,italy
select * from superstore where country="germany" or country="spain" or country="italy";

#Alternative
select * from superstore where country in ("germany","spain","italy","france");

#get all the records from austria and category="technology"
select * from superstore where country="austria" and category="technology";

#get all the unique records of country except germany:!=,<>
#using != symbol:
select distinct country from superstore where country != "germany";
#using <> symbol:
select distinct country from superstore where country <> "germany";
#not in:
select distinct country from superstore where country not in ("germany","nepal");

#get the list of countries which has sales greater than 1000:
select country,sales from superstore where sales>1000 order by sales desc;

select country,sales from superstore where sales>1000 order by sales asc;

#get all countries which has sales between 500 to 1000:
select country,sales from superstore where sales>500 and sales<1000 order by sales asc;

#get all records from france to spain:
#between:
select country from superstore where country between "france" and "spain" order by country asc;

#germany and france sales>500:
select country,sales from superstore where country in ("germany","france") and sales>500 order by sales asc; 

