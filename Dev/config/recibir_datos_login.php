<?php	
	session_start();

	if ($_POST) {
		$Nombre=$_POST['usuario'];
		$Clave=$_POST['clave'];				
		#Conectamos con MySQL
		$conexion=mysqli_connect("localhost","root","");
		mysqli_select_db($conexion, "sagadb");
		#Consulta para validar
		$Resultado=mysqli_query($conexion,"SELECT * FROM `login` WHERE `Matricula`='".$Nombre."' and `Clave`='".$Clave."';");
		if(mysqli_num_rows($Resultado)==1) {
			echo '<link rel="stylesheet" type="text/css" href="css/estilo_login.css">';
			echo '<span class="Etiquetas">¡Bienvenido!</span>';
			#Crear variable de sesion
			$_SESSION["usuario1"]="$Nombre";
			$_SESSION["Enter"]=date("Y-m-j H:i:s");
			echo'<META HTTP-EQUIV="REFRESH" CONTENT="5;URL=####dirige al index que correspnda">';
		}
		else {
			echo '<link rel="stylesheet" type="text/css" href="css/estilo_login.css">';
			echo "Este Usuario No Existe";
			echo'<META HTTP-EQUIV="REFRESH" CONTENT="5;URL=login.php">';
		}
		mysqli_close($conexion); // Cerramos la conexion con la base de datos
	}
?>