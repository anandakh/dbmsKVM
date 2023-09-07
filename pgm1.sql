create procedure cust(in name varchar(30))
begin
select*from customer where cust_name = name;
end;
/