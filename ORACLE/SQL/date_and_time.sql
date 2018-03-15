declare
    actualHour number;            
begin
    select to_number(substr(to_char(sysdate, 'hh24:mi:ss'),1,2)) into actualHour from DUAL;  
end;