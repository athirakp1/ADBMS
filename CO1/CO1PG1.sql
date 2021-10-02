-- A
create table Student_Athira(rollno integer primary key,name varchar(20),dob date,dept varchar(5),mark float);
	insert into Student_Athira values(1,'Amitha','18-jun-1988','CS',480);
	insert into Student_Athira values(&rollno,'&name','&dob','&dept',&mark);
	insert into Student_Athira values(3,'George','19-jan-1989','CS',489);
	insert into Student_Athira values(4,'Gourikripa','27-nov-1989','CS',495);
	insert into Student_Athira values(5,'Henin','12-dec-1988','IT',500);  
	insert into Student_Athira values(6,'Ishana','25-dec-1988','CS',500);
	insert into Student_Athira values(7,'Pranav','27-nov-1989','CS',510);

-- B
alter table Student_Athira add(address varchar(10));
alter table Student_Athira modify(name varchar(10));

-- C
select * from Student_Athira;

-- D
alter table Student_Athira modify(address varchar(30));
	update Student_Athira set address='No.5,Gandhinagar' where rollno=1;
	update Student_Athira set address='Flat No.5A,Skyline,Aluva' where rollno=2;
	update Student_Athira set address='Apple Heights,Padivattom' where rollno=3;
	update Student_Athira set address='Green Valley,Cochin' where rollno=7;

-- E
SELECT name,dob FROM Student_Athira WHERE months_between(sysdate,dob)/12<22;

-- F
select * from Student_Athira order by mark;

-- G
select name from Student_Athira where dept='CS' and mark>500;

-- H
select name from Student_Athira where mark >(select avg(mark) from Student_Athira);

-- I
drop table Student_Athira;