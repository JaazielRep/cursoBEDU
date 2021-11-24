<?php
	$archivo= fopen('archivo.txt','a');
	/*while(!feof($archivo)){
		$linea=fgets($archivo)."<br>";
		echo $linea;
	}
	 
	 */
	fwrite($archivo, 'esto fue escrito desde php'.PHP_EOL);
	
	fclose($archivo);
	$archivo= fopen('archivo.txt','r');
	while(!feof($archivo)){
		$linea=fgets($archivo)."<br>";
		echo $linea;
	}
	fclose($archivo);
	 
?>


