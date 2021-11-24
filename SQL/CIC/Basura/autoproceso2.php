<!DOCTYPE HTML>
<html>
	<head>
		<title>Conversión de temperatura</title>
	</head>
	<body>

<?php

		if (!isset($_GET['fahrenheit'])) {
			
?>
		<form action= " <?php echo $_SERVER['PHP_SELF'] ?>" method="GET">
			Temperatura Fahrenheit:
			<input type="text" name="fahrenheit" /><br/>
			<input type="submit" value="Convertir a Celcius" />
		</form>
<?php
		} 
		else {
			$fahrenheit=$_GET['fahrenheit'];
			$celsius = ($fahrenheit - 32) * 5 / 9;
			printf("%.2fF es %.2fC", $fahrenheit, $celsius);
			} 
			
?>
	</body>
</html>
