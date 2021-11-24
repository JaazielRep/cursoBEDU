<!DOCTYPE >
<html> 
<head> 
  <title>Introduccion a los arrays, metodo largo</title> 
</head> 
<body> 
<h1> Introduccion a los arrays, metodo largo </h1> 
<p> A continuacion escribiremos los arrays de acuerdo al metodo largo </p> 
<p> 
	
<?php 
	/* 
	Este es el metodo largo para la creacion de arrays,
	 donde cada uno de los 
	arreglos esta en una linea diferente, junto con su 
	valor indice correspondiente 
	*/ 
	$dia[0] = "domingo"; 
	$dia[1] = "lunes"; 
	$dia[2] = "martes"; 
	$dia[10] = "miercoles"; 
	$dia[] = "jueves"; 
	$dia[5] = "viernes"; 
	$dia[6] = "sabado"; 
	//mostrar el miercoles 
	echo $dia[11]; 
	print_r($dia);
?> 
</p> 
</body> 
</html> 