declare
	pid inventory.quantity%type ;
	r inventory%rowtype;
	invalid_data exception;
begin
	select pid into pid from inventory where quantity < 0;
	if sql%found then 
	raise invalid_data;
	end if;
exception
	when invalid_data then
	dbms_output.put_line(' Data is invalid ');
	update inventory set quantity = 0 where pro_id = pid;
end;
	