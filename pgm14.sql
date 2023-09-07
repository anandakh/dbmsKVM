create or replace function MaxSal RETURN number
is
Maximum number:=0;
begin
select max(salary) into Maximum from Employee;
return Maximum;
end;
/

declare m number;
m=MaxSal();
dbms_output.put_line('maximum salary='||m);
end;
/