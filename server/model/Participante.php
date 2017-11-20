<?php

include_once "Conexion.php";

class Participante
{
	function registrar_participante($datos)
	{
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if($mysqli["status"] == 200){
			$existe = self::consul_partic_existe($mysqli, $datos['email'], $datos['id_evento']);
			if ($existe === true) {
				return ["data"=>"El participante ya existe", "error"=>"", "status"=>409];
			}elseif($existe > 0){
				return self::insertar_relacion($mysqli, $existe, $datos['id_evento']);
			}
			$sql = "INSERT INTO 
					participante (email,nombre,apellido,direccion,telefono,estatus) 
					VALUES 
					('".$datos['email']."','".$datos['nombre']."','".$datos['apellido']."',
					'".$datos['direccion']."','".$datos['telefono']."',1)";

			$result = $mysqli["data"]->query($sql);
			if ($result === true) {
				return self::insertar_relacion($mysqli, $mysqli["data"]->insert_id, $datos['id_evento']);
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

	function consul_partic_existe($mysqli, $email, $id_evento){
		$consulta = "SELECT id FROM participante WHERE email = '$email'";
		$result = $mysqli["data"]->query($consulta);
		if ($result->num_rows > 0) {
			$id = $result->fetch_array(MYSQLI_ASSOC)["id"];
			$consulta = "SELECT id FROM 
						evento_participante 
						WHERE 
						id_evento = '$id_evento' AND id_participante = $id";
			$result = $mysqli["data"]->query($consulta);
			if ($result->num_rows > 0){
				return true;
			}else{
				return $id;
			}
		}else{
			return 0;
		}
	}

	function insertar_relacion($mysqli, $id_participante, $id_evento){
		$relacionar = "INSERT INTO
					   evento_participante (id_evento,id_participante)
					   VALUES
					   ('$id_evento','$id_participante')";
		$result = $mysqli["data"]->query($relacionar);
		if ($result === true) {
			return ["data"=>"Participante registrado", "error"=>"", "status"=>200];
		}else{
			$cod_error = ($mysqli["data"]->errno);
			$error = mysqli_error($mysqli["data"]);
			return ["data"=>"", "error"=>$error, "status"=>$cod_error];
		}
	}

	function listar_participantes($id_evento){
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if ($mysqli["status"] == 200) {
			$sql = "SELECT rel.id, par.*
					FROM evento_participante rel
					INNER JOIN participante par
					  ON  rel.id_participante = par.id 
					WHERE rel.id_evento='".$id_evento["id"]."' 
					AND par.estatus = 1";
			$result = $mysqli["data"]->query($sql);
			if ($result->num_rows > 0) {
				while($row = $result->fetch_array(MYSQLI_ASSOC)){
				   $arreglo["data"][] = $row;
				}				
				return $arreglo;
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

	function modificar_participante($datos){
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if ($mysqli["status"] == 200) {
			$sql = "UPDATE participante SET email='".$datos["email"]."', nombre='".$datos["nombre"]."', apellido='".$datos["apellido"]."', direccion='".$datos["direccion"]."', telefono='".$datos["telefono"]."' WHERE id='".$datos["id"]."'";
			$result = $mysqli["data"]->query($sql);
			if ($result == true) {
				return ["data"=>"Evento modificado", "error"=>"", "status"=>200];
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

	function estatus_participante($datos){
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if ($mysqli["status"] == 200) {
			$sql = "UPDATE participante SET estatus=0 WHERE id='".$datos["id"]."'";
			$result = $mysqli["data"]->query($sql);
			if ($result == true) {
				return ["data"=>"Evento modificado", "error"=>"", "status"=>200];
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
}

?>