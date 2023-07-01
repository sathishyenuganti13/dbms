declare
	n number ;
	a number := &a;
	q inventory.quantity%type;
	
begin
	--	n := a/0;
	--	select quantity into q from inventory ;
	select quantity into q from inventory  where pro_id =  10 ;
exception
	when zero_divide then
	dbms_output.put_line(' divisio with zero occured ');
	when too_many_rows then
	dbms_output.put_line(' multiple rows selected ');
	when no_data_found then
	dbms_output.put_line(' there is no such entity exits ');
end;
