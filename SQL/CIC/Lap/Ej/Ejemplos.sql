use CIC_Aerolineas

select fecharegistro, CONVERT(DATE,fecharegistro), 
CONVERT(VARCHAR,DATEADD(year, 1, CONVERT(DATE,fechaRegistro))) +' ' + CONVERT(VARCHAR,datediff(DAY, fechaRegistro, getdate())) 
'Aniversario y Dias'
from Cliente