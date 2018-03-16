update 
	(
		select 
		    P.DESCRIPTION as DESCRIPTION
		from 
		    PRODUCT P
		where P.ID in 
			(
			    select 
				P_C.PRODUCT_ID 
			    from PRODUCT_CLIENT P_C 
				join CLIENTS C on
			   (P_C.CLIENT_ID = C.ID)
				where
			    C.ID = 1
			)
	) TO_UPDATE
set
    TO_UPDATE.DESCRIPTION = 'DESCRIPTION';
commit;
