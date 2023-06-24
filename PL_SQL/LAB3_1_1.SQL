DECLARE
	n1 number := &n1;
BEGIN
	for i in 1..10 loop
	dbms_output.put_line(n1||'*'||i||'='||n1*i);
	end loop;
END;