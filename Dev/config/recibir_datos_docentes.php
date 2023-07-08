<?php
	if ($_POST){
		$Matricula=$_POST['matricula'];
		$Nombre=$_POST['nombre'];
		$ApellidoP=$_POST['apellidop'];
		$ApellidoM=$_POST['apellidom'];
		$FechaNac=$_POST['fechanac'];
		$Edad=$_POST['edad'];
		$Domicilio=$_POST['direccion'];		
		$Telefono=$_POST['telefono'];
		$Telefono_Emg=$_POST['tel_emg'];
		$Genero=$_POST['genero'];
		$Correo=$_POST['correo'];			
		$Cargo=$_POST['cargo'];
		$Area=$_POST['area'];					
		$Horario_D=$_POST['horario_a'];
		$Clave=$_POST['clave'];		

		$conexion=mysqli_connect("localhost","root","");
		mysqli_select_db($conexion, "sagadb");		

		$Resultado=mysqli_query($conexion,"INSERT INTO `docentes`(`id_docente`, `nombreD`, `apellidoPd`, `apellidoMd`, `edad, `sexoD`,`direccionD`,`telefonoD`,`cargoD`,`correoD`,`areaD`,`natalicioD`,`telefonoEd`,`null`,`Clave`) VALUES ('".null."','".$Nombre."','".$ApellidoP."','".$ApellidoM."','".$Edad."','".$Genero."','".$Domicilio."','".$Telefono."','".$Cargo."','".$Correo."','".$Area."','".$FechaNac."','".$Telefono_Emg."','".$Horario_D."','".$Clave."');");
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