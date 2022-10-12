use org;

select * from Worker2;
--1. Synonyms
create synonym emp for Worker2;

create table TraineeSoftwareEngg
(
Tid int,
TName varchar(20)
)

--sequence

create sequence Tid as int start with 100 increment by 1; 

insert into TraineeSoftwareEngg values(NEXT VALUE FOR Tid,'Suman');
insert into TraineeSoftwareEngg values(NEXT VALUE FOR Tid,'Bangera');
insert into TraineeSoftwareEngg values(NEXT VALUE FOR Tid,'Rohan');


 select * from TraineeSoftwareEngg;

 create table JrSoftwareEngg
(
Jid int,
JName varchar(20)
)

--alter sequence
alter sequence Tid restart with 100 increment by 1;

insert into JrSoftwareEngg values(NEXT VALUE FOR Tid,'Reena');
insert into JrSoftwareEngg values(NEXT VALUE FOR Tid,'Ram');
insert into JrSoftwareEngg values(NEXT VALUE FOR Tid,'Seema');


select * from JrSoftwareEngg;

--drop sequence

drop sequence Tid;

--Index
--clustered index on trainee table
create clustered index ind_Jid on TraineeSoftwareEngg(Tid);

--Non clustered index on trainee table
create index ind_JName on TraineeSoftwareEngg(TName);

--VIEWS

--1)Simple View

create view salaryview
as
select * from Worker2 where SALARY>5000;

--Retrieve the view
select * from salaryview;



--2)Complex view

create view bonus_view 
as
select * from Worker2 as w inner join Bonus as b on w.WORKERID = b.WORKER_REF_ID;

select * from bonus_view;


--Aggregate
SELECT SUM(SALARY) AS Total_SALARY FROM Worker2;


--String functions

--Length
SELECT LEN('SUMAN BANGERA') as Length; 
--concat
SELECT CONCAT('SUMAN', 'BANGERA') as Concat; 
--to upper case
SELECT UPPER('Suman r bangera') as ToUpper; 
--to Lower case
SELECT LOWER('SUMAN BANGERA') as ToUpper; 
--reverse
SELECT REVERSE('SUMAN BANGERA')as Reverse; 
--substring
SELECT SUBSTRING('SUMAN BANGERA', 1, 5) AS substring; 
 --Remove leading and trailing spaces from a string
SELECT TRIM('    SUMAN     ') AS TrimmedString; 
--replicate 3 times
SELECT REPLICATE('SUMAN BANGERA ', 2) as Replicate; 


--MATH FUNCTION
-- absolute value
Select abs(-5) as ABSOLUTE; 
--SIGN
Select sign(0) as Sign;
--COS
Select cos(0) as Sign;
--FLOOR VALUE
Select floor(7.8)as floor; 
--POWER
Select power(2,2)as power; 
--DECIMAL
Select round(8.345,1) as Round; 
--sqrt
Select sqrt(4) as squareroot; 


--DATE AND TIME
SELECT DAY(JOINING_DATE) AS DayOfMonth from Worker2;
