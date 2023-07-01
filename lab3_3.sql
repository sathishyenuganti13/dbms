DECLARE
	id inventory.pro_id%type := &id;
	q inventory.quantity%type ;
BEGIN
	select quantity into q from inventory where pro_id = id;
	if q>0 then 
	update inventory set quantity = quantity-1 where pro_id = id ;
	insert into purch_rec values(id,'PURCHASED',sysdate);
	else
	insert into purch_rec values(id,'OUT OF STOCK',sysdate);
	end if;
END;




