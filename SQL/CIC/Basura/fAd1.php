<!DOCTYPE HTML>
<html>
  <head><title>Temperature Conversion</title></head>
  <body>
<?php
	if(isset($_GET['fahrenheit']))
	 	$fahrenheit = $_GET['fahrenheit']; 
	else 
	 	$fahrenheit =NULL;
	 ?>
   <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="GET">
     Fahrenheit temperature:
     <input type="text" name="fahrenheit" value="<?php echo $fahrenheit; ?>" /><br/>
     <input type="submit" value="Convertir" />
   </form>
   <?php if (!is_null($fahrenheit)) {
     $celsius = ($fahrenheit - 32) * 5 / 9;
     printf("%.2fF =  %.2fC", $fahrenheit, $celsius);
   } ?>
  </body>
</html>