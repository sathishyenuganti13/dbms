DECLARE
	n number := &n;
	temp number :=n ;
	rem number;
	res number := 0;
BEGIN
	while(temp>0) loop
	rem := mod(temp,10);
	temp := trunc(temp/10);
	res := res*10 + rem ;
	end loop;
	if(n = res )then
	dbms_output.put_line('Given number is a palindrome ');
	else
	dbms_output.put_line('Given number is not a palindrome  ');
	end if;
END;