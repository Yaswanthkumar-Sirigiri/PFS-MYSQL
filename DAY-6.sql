#DAY-6:
use world;
select name,LifeExpectancy,round(LifeExpectancy,0) as rounded from country;
select round(10000.0000,3);
#CEIL():
select ceil(21.45);
#FLOOR():
select floor(21.45);
select name,gnp,ceil(gnp) from country;
select name,gnp,floor(gnp) from country;

#POWER():
select power(4,2);
select name,population,power(population,2) as xyz from country;

#SQRT():
select sqrt(16);
select name,population,sqrt(population) from country;

#ABS() --> Absolute value:
select ABS(20-25);
select name,gnp,gnpold,abs(gnp-gnpold) as diff from country;

#MOD():
select mod(10,3);
select name,population,mod(population,3) as remainder from country;

#SIGN() - positive(1), negative(-1), no change(0)
select sign(20-25);
select sign(25-20);
select sign(25-25);

#rand():
select rand(1668986);

#greatest():
select greatest(26256,34);
select name,gnp,gnpold,greatest(gnp,gnpold) as highestvalue from country;

#least():
select name,gnp,gnpold,least(gnpold,gnp) as leastvalue from country;

#sin(),cos(),tan():
select sin(45);
select cos(45);
select tan(45);

#STRING FUNCTIONS:
#Upper() & lower():
select upper('yaswanth');
select lower('KUMAR');
select name,lower(name) from country;
select name,upper(name) from country;

#length():
select length('yaswanth');
select name,length(name) from country limit 5;

#char_length():
select length('codegnan'); #counts in bytes of a string
select char_length('codegnan'); #more Optimal

#left() & right():
select left('yaswanth',5);
select right('kumar',5);

#Substring()--> Extracts a part of a string :: substring(string,start,length)
select substring('yaswanth',3,5);

#trim():
select trim('   yaswanth kumar    ');

#replace():
select replace('sutherland','suther','is');

#concat():
select concat('varshitha','.','A');
select name,concat(continent,'-',name) from country;

#locate():
select locate('united',name) from country;

#concat_ws():
select concat_ws('-',name,continent,region) from country;

#lpad():
select lpad('yaswanth',10,'*');

#rpad():
select rpad('yaswanth',12,'^');