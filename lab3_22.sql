DECLARE
	a number :=&a;
	b number :=&b;
	lcm number;
	hcf number;
	temp number;
BEGIN
	while mod(a ,b ) != 0 loop
	temp = mod(a,b);
	b = a;
	a = temp;
	end loop;
	dbms_output.put_line('GCD OF' ||a||','||b||'is = '||a);
end;