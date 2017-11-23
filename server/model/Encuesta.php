<?php

include_once "Conexion.php";

class Encuesta
{
	function registrar_encuesta($datos)
	{
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if($mysqli["status"] == 200){
			$sql = "INSERT INTO 
					cuestionario (id_evento,pregunta,tipo) 
					VALUES 
					('".$datos['id_evento']."','".$datos['pregunta']."','".$datos['tipo_pregunta']."')";
			$result = $mysqli["data"]->query($sql);
			if ($result === true) {
				$id_pregunta = $mysqli["data"]->insert_id;
				if ($datos['tipo_pregunta'] == "simple-multi") {
					return self::registrar_multi_resp($id_pregunta, $datos["respuestas"], $mysqli);
				}elseif ($datos['tipo_pregunta'] == "libre") {
					return self::registrar_resp_libre($id_pregunta, $datos["respuestas"], $mysqli);
				}
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

	function registrar_multi_resp($id_pregunta, $datos, $mysqli){
		$sql = "INSERT INTO respuesta (id_pregunta,descripcion) VALUES (?,?)";
		$query = $mysqli["data"]->prepare($sql);
		$query->bind_param("ss", $id_pregunta, $descripcion);
		foreach ($datos as $row) {
		    $descripcion = $row['value'];
		    $confirm = $query->execute();
		}
		if ($confirm) {
			return ["data"=>"Registros Exitosos", "error"=>"", "status"=>200];
		}else{
			return ["data"=>"", "error"=>$confirm["error"], "status"=>500];
		}
	}

	function registrar_resp_libre($id_pregunta, $respuesta, $mysqli){
		$sql = "INSERT INTO respuesta (id_pregunta,descripcion) VALUES ('$id_pregunta','$respuesta')";
		$result = $mysqli["data"]->query($sql);
		if ($result === true) {
			return ["data"=>"Respuesta registrada", "error"=>"", "status"=>200];
		}else{
			$cod_error = ($mysqli["data"]->errno);
			$error = mysqli_error($mysqli["data"]);
			return ["data"=>"", "error"=>$error, "status"=>$cod_error];
		}
	}

	function listar($id_evento, $tabla){
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if ($mysqli["status"] == 200) {
			$sql = "SELECT *
					FROM $tabla 
					WHERE id_evento='".$id_evento["id"]."'";
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

	function modificar_encuesta($datos){
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

	function estatus_encuesta($datos){
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