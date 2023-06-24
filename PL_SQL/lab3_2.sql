DECLARE
	a number :=&a;
	b number :=&b;
	lcm number;
	hcf number;
	temp number;
	b1 number:= b;
	a1 number:= a;
	
BEGIN
	
	while mod(b ,a) != 0 loop
	temp := mod(b,a);
	b := a;
	a := temp;
	end loop;
	hcf := a;
	
	lcm := (a1*b1)/a ;
	insert into demo_tab values(lcm,hcf);

	dbms_output.put_line('LCM  OF ' ||a1||', '||b1||' is = '||lcm);
	dbms_output.put_line('HCF  OF ' ||a1||', '||b1||' is = '||hcf);
end;