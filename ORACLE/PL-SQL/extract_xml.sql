p_xmlData := 

'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<processSelectedProducts>
	<selectedProducts>
		<productId>1</productId>
		<productId>2</productId>
	</selectedProducts>
</processSelectedProducts>
'


procedure ProcessSelectedProducts
    
	(
        p_xmlData in clob,
    )
    as
    
        v_xml xmltype;

    begin
	
        v_xml := xmltype.createxml( p_xmlData );
        		
		delete from 
			PRODUCT P
		where 
			P.ID in (select extractvalue( value( N ), 'selectedProducts/productId/text()' ) as productId
                     from table( xmlsequence( extract( v_xml, '/processSelectedProducts/selectedProducts' ) ) ) N) ;
        commit;                          
                
end ProcessSelectedProducts;