declare 
	d empe.dno%type := &d;
	s del_hist.rows_selected%type;
begin
	select count(*) into s from empe where dno = d;
	if s>0 then
	delete from empe where dno = d;
	insert into del_hist values(d,s,sysdate);
	else
	dbms_output.put_line(' not  found of the inputted dept_no ');
	end if;
end;
	