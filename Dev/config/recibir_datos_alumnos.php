<?php
	if ($_POST){
		$Matricula=$_POST['matricula'];
		$Nombre=$_POST['nombre'];
		$ApellidoP=$_POST['apellidop'];
		$ApellidoM=$_POST['apellidom'];
		$FechaNac=$_POST['fechanac'];
		$Edad=$_POST['edad'];
		$Domicilio=$_POST['direccion'];
		$Tutor=$_POST['tutor'];		
		$Tel_Tutor=$_POST['tel_tutor'];
		$Genero=$_POST['genero'];
		$Correo=$_POST['correo'];
		$Grado=$_POST['grado'];
		$Grupo=$_POST['grupo'];
		$Turno=$_POST['turno'];
		$Materias=$_POST['materias'];
		$Docentes=$_POST['docentes'];		
		$Horario_A=$_POST['horario_a'];
		$Clave=$_POST['clave'];		

		$conexion=mysqli_connect("localhost","root","");
		mysqli_select_db($conexion, "sagadb");		

		$Resultado=mysqli_query($conexion,"INSERT INTO `alumnos`(`id_alumno`, `nombre`, `apellidoP`, `apellidoM`, `natalicio`, `edad`,`sexo`,`domicilio`,`tutor`,`telefono`,`correo`,`null`,`null`,`null`,`telefono`,`correo`,`grado`,`turno`,`null`,`null`,`null`,`Clave`,`grupo`) VALUES ('".null."','".$Nombre."','".$ApellidoP."','".$ApellidoM."','".$FechaNac."','".$Edad."','".$Domicilio."','".$Tutor."','".$Tel_Tutor."','".$Genero."','".$Correo."','".$Grado."','".$Turno."','".$Materias."','".$Docentes."','".$Horario_A."','".$Clave."','".$Grupo."');");
		if($Resultado==true){
			echo "Gracias Hemos Recibido Tus Datos. Espere un Momento Por Favor\n";
			echo '<META HTTP-EQUIV="REFRESH" CONTENT="15;URL=####login.php">';
		}
		else{ echo "ERROR En La Consulta";
		mysqli_close($conexion);
		}
	}
	else{
		echo "ERROR";
		echo '<META HTTP-EQUIV="REFRESH" CONTENT="5;URL=#####registro_alumno.html>';
	}
?>