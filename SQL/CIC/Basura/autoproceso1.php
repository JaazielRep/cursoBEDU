<!DOCTYPE HTML>
<html>
	<head>
		<title>Conversión de temperatura</title>
	</head>
	<body>

<?php
		if ($_SERVER['REQUEST_METHOD'] == 'GET') {
?>
		<form action= " <?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
			Temperatura Fahrenheit:
			<input type="text" name="fahrenheit" /><br/>
			<input type="submit" value="Convertir a Celcius" />
		</form>
<?php
		} 
		else if ($_SERVER['REQUEST_METHOD'] == 'POST') {
			$fahrenheit = $_POST['fahrenheit'];
			$celsius = ($fahrenheit - 32) * 5 / 9;
			printf("%.2fF es %.2fC", $fahrenheit, $celsius);
			} 
			else {
				die("Error");
				}
?>
	</body>
</html>
