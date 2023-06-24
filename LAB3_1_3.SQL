DECLARE
	n number := &n;
	rem number;
	res number := 0;
	a number := 0;
	b number:= 1;
BEGIN
	for i in 0..n loop
	res := a+b;
	a := b;
	b := res;
	dbms_output.put_line('fibnocci of '||i||' is = '||res);
	end loop;
END;