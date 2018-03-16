select (*) from TAB_A;

insert into TAB_A 
	(COL_1, COl_2, COL_3) 
values 
	(VAL_1, VAL_2, VAL_3 );
    
update TAB_A
set
	COL_1 = VAL_1,
    COL_2 = VAL_3
where
	COL_3 = VAL_3;