<!DOCTYPE  HTML>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Parámetros multivaluados</title>
	</head>
	<body>
		<form action"<?php echo $_SERVER['PHP_SELF']; ?>" method="GET">
			Selecciona los cursos: <br>
			<select name="cursos[]" multiple>
				<option value="Introducción a la programación"> "Introducción a la programación"</option>
				<option value="Programación web y php básico"> "Programación web y php básico"</option>
				<option value="SQL Básico"> "SQL Básico"</option>
				<option value="SQL Intermedio"> "SQL Intermedio"</option>
				<option value="POO Básico"> "POO Básico"</option>
				<option value="C#"> "C#"</option>
				<option value="C++"> "C++"</option>
			</select>
			<br/>
			<input type="submit" name="s" value="Registrar"/>
		</form>
		
<?php
	if(array_key_exists('s', $_GET)){
		$cursosS=join(' ,',$_GET['cursos']);
		echo "Inscribiste los cursos: {$cursosS}";
	}
?>
	</body>
</html>