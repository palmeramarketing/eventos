<?php

require "Conexion.php";

class Usuario
{
	function registrar_usuario($datos)
	{
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if($mysqli["status"] == 200){
			$pass = md5($datos['password']);
			$sql = "INSERT INTO usuario (email,nombre,password,tipo,estatus) 
					values ('".$datos['email']."','".$datos['usuario']."','".$pass."','admin',1)";
			$result = $mysqli["data"]->query($sql);
			if ($result === true) {
				return ["data"=>"Usuario registrado", "error"=>"", "status"=>200];
			}else{
				$cod_error = ($mysqli["data"]->errno);
				$error = mysqli_error($mysqli["data"]);
				return ["data"=>"", "error"=>$error, "status"=>$cod_error];
			}
		}else{
			return ["data"=>"", "error"=>$mysqli["error"], "status"=>500];
		}
		$conexion->cerrar_mysqli();
	}

	function deshabilitar_usuario($datos){
		
	}
}

?>