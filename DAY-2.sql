#<<<<Day-2:>>>>>>>>
#CONSTRAINTS:
#adding constraints to the existing table
#adding primary key
#syntax: alter table table_name add constraint_name(column_name)

alter table employee add primary key(emp_id);
desc employee;

#UNQUE:
alter table employee add unique(ph_no);

#CHECK:
alter table employee add constraint check(age>18);

#DEFAULT:
#syntax: alter table table_name alter column column_name set default value;
alter table employee alter column salary set default 35000;

#NOT NULL:
#syntax: alter table table_name modify column column_name datatype not null;
alter table employee modify column emp_name varchar(20) not null;