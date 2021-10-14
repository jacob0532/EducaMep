<?php
error_reporting(0);

$conexion = mysqli_connect("localhost","312306","eeerrr96","312306");

if(!$conexion)
{
	exit("Error al intentar conectarse al servidor MYSQL.");
}

$consulta = "SELECT * FROM ejemplo2 ORDER BY 'id' ASC";

$resultado = mysqli_query($conexion,$consulta);

while($consulta = mysqli_fetch_array($resultado)){
	echo "{$consulta['id']};{$consulta['nombre']};{$consulta['edad']}-";
}
mysqli_close($conexion);
?>