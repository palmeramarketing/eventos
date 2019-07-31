<?php

require_once("Conexion.php");
require_once("recursos.php");

class Usuario
{

	function login($datos){

		$conexion = new Recursos();

			$pass = md5($datos['password']);
			$sql = "SELECT * FROM usuario
					WHERE nombre='".$datos['usuario']."'
					AND password='$pass'";
			$result = $conexion->sql_select($sql);

			if ($result["status"] == 200) {
				if (count($result["data"] == 1)) {
					$result["data"] = $result["data"][0];
				}
				if($result["data"]["estatus"] == 1){
					$id= $result['data']['id'];
					$sqlup= "UPDATE usuario SET  logeado=1 WHERE id='$id'";
					$ejecutarup= $conexion->sql_insert_update($sqlup);
				}

				return $result;
			}else{
				return $result;
			}

	}

	function mostrar_perfil($datos){
			$conexion = new Recursos();

			$sql = "SELECT * FROM usuario
					WHERE nombre='".$datos['usuario']."'
					AND estatus=1";
			$result = $conexion->sql_select($sql);

				return $result;

	}

	function buscarUsuarioId($id){
			$conexion = new Recursos();

			$sql = "SELECT * FROM usuario
					WHERE id='".$id."'
					AND estatus=1";
			$result = $conexion->sql_select($sql);

				return $result;

	}

	function registrar_usuario($datos)
	{
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if($mysqli["status"] == 200){
			$pass = md5($datos['password']);
			$sql = "INSERT INTO usuario (email,nombre,password,tipo,estatus)
					values ('".$datos['email']."','".$datos['usuario']."','".$pass."','".$datos['perfil']."',1)";
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
		$conexion = new Recursos();
		$sql = "DELETE FROM usuario WHERE id=".$datos['id'];
		$ejecutar= $conexion->sql_insert_update($sql);

		return $ejecutar;

	}

	function modificar_usuario($datos){
		$conexion = new Recursos();
		$sql= "UPDATE usuario SET estatus='".$datos['estatus']."', email='".$datos['email']."', tipo='".$datos['perfil']."', nombre='".$datos['nombre']."' WHERE id= ".$datos['id'];
		$ejecutar= $conexion->sql_insert_update($sql);

		return $ejecutar;

	}

	function listar_usuario(){
		$conexion = new Recursos();
		$sql= "SELECT id, email, nombre, password,tipo, CASE WHEN estatus = 0 THEN 'Inactivo' ELSE 'Activo' END AS estatus FROM usuario WHERE estatus=1";
		$ejecutar= $conexion->sql_select($sql);

		if ($ejecutar["status"] == 200) {
			return $ejecutar;
		}else{
			return $ejecutar["status"];
		}
	}

	function cerrar_sesion($id){
		$conexion = new Recursos();

		$sql= "UPDATE usuario SET logeado=0 WHERE id=".$id;
		$ejecutar= $conexion->sql_insert_update($sql);

		return $ejecutar;

	}

	function usuarios_por_evento($id_evento){
		$conexion = new Recursos();
		$sql = "SELECT user.* FROM usuario user
				INNER JOIN evento_usuario e_user
				ON e_user.fk_usuario = user.id
				WHERE e_user.fk_evento = '$id_evento'";
		return $conexion->sql_select($sql);
	}

	function recuperar_password($correo){
		$conexion = new Recursos();
		$logitud = 6;
		$psswd = substr( md5(microtime()), 1, $logitud);
		$sql= "SELECT * FROM usuario WHERE email='$correo'";
		$ejecutar= $conexion->sql_select($sql);

		if($ejecutar['status']== 200){
			$nuevaclave= md5($psswd);
			$sqlUp= "UPDATE usuario SET password='$nuevaclave', estatus=2 WHERE email='$correo'";
			$ejecutarUpdate= $conexion->sql_insert_update($sqlUp);

			if($ejecutarUpdate["status"]== 200){
				// $envioEmail= self::envioCorreoPasswd($correo, $psswd);
				return $psswd;
			}
		}else if ($ejecutar['status']== 404) {
			return $ejecutar["status"];
		}
	}

	function cambiar_password($correo, $pass){
		$conexion = new Recursos();
		$nuevaclave= md5($pass);
		$sql= "UPDATE usuario SET password='$nuevaclave', estatus=1 WHERE email='$correo'";
		$ejecutar= $conexion->sql_insert_update($sql);
		return $ejecutar['status'];

	}

	function asignar_evento($datos){
		$conexion = new Recursos();
		$sql= "SELECT * FROM evento_usuario WHERE fk_usuario=".$datos['id_user']." and fk_evento=".$datos['id_evento']['id'];
		$ejecutar= $conexion->sql_select($sql);

		if($ejecutar['status'] == 404){

			$sqlInsert= "INSERT INTO evento_usuario(fk_usuario, fk_evento) VALUES (".$datos['id_user'].",".$datos['id_evento']['id'].")";
			$ejecutarInsert= $conexion->sql_insert_update($sqlInsert);
			return $ejecutarInsert;

		}else if($ejecutar['status'] == 200) {
			return 'existe';
		}

	}

}

?>
