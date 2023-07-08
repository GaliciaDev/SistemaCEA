<?php
	session_start();
	session_unset();
	session_destroy();
	echo '<link rel="stylesheet" type="text/css" href="css/estilos_login.css">';
	echo '<span class="Etiquetas">Cerrando sesion...</span>';
	echo '<META HTTP-EQUIV="REFRESH" CONTENT="5;URL=####ruta a la que dirige al cerrar sesion">';
?>