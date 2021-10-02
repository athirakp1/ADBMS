create table EMPLOYEE(eno integer primary key,ename varchar(20),salary float);
	insert into EMPLOYEE values(101,'AMALA',30000);
	insert into EMPLOYEE values(102,'ATHIRA',30000);
	insert into EMPLOYEE values(103,'KRISHNAN',35000);
	insert into EMPLOYEE values(104,'JAISON',28000);
/*--------------------------------------------------------------------------*/
	declare
	NO_ROWS number(5);
	begin
	update EMPLOYEE set salary = salary + 200;
	if sql%notfound then
	dbms_output.put_line('NONE OF THE SALARY IS UPDATED');
	else if sql%found then
	NO_ROWS := sql%rowcount;
	dbms_output.put_line('SALARY UPDATED');
	end if;
	end if;
	end;
	/