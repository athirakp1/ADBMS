create table eBILL(bill_no int,name varchar(20),unit int,charge int);
	insert into eBILL values(4567,'AMALA',200,0);
	insert into eBILL values(4570,'JAISON',500,0);
	insert into eBILL values(4575,'ATHIRA',750,0);
	insert into eBILL values(4580,'KRISHNAN',160,0);
	insert into eBILL values(4585,'AKASH',180,0);
/*--------------------------------------------------------------------------------*/
	declare 
	cursor cur1 is select * from eBILL;
	begin
	for i in cur1
	loop
	if (i.unit<=200) then
	update eBILL set charge = i.unit*1 where bill_no = i.bill_no;
	elsif (i.unit>200 and i.unit<=450) then
	update eBILL set charge = i.unit*2 where bill_no = i.bill_no;
	else
	update eBILL set charge = i.unit*3 where bill_no = i.bill_no;
	end if;
	end loop;
	end;
	/