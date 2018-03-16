for item in 
(
	select 
		COL_1
	from  
		TAB_A
)
	loop        
		insert into TAB_B 
			(COL_2) 
		values 
			(item.COL_1 );
	end loop;
