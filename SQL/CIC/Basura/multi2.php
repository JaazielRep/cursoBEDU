<!DOCTYPE  HTML>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Parámetros multivaluados</title>
	</head>
	<body>
		<form action"<?php echo $_SERVER['PHP_SELF']; ?>" method="GET">
			Selecciona los cursos: <br>
			
				<input type="checkbox" name= "cursos[]" value="Introducción a la programación"> "Introducción a la programación"</input><br/>
				<input type="checkbox" name= "cursos[]" value="Programación web y php básico"> "Programación web y php básico"</input><br/>
				<input type="checkbox" name= "cursos[]" value="SQL Básico"> "SQL Básico"</input><br/>
				<input type="checkbox" name= "cursos[]" value="SQL Intermedio"> "SQL Intermedio"</input><br/>
				<input type="checkbox" name= "cursos[]" value="POO Básico"> "POO Básico"</input><br/>
				<input type="checkbox" name= "cursos[]" value="C#"> "C#"</input><br/>
				<input type="checkbox" name= "cursos[]" value="C++"> "C++"</input><br/>
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