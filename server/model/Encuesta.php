<?php

require_once("Conexion.php");
require_once("recursos.php");

class Encuesta
{
	function registrar_encuesta($datos)
	{
		$conexion = new Recursos();

			$sql = "INSERT INTO
					cuestionario (id_evento,pregunta,tipo)
					VALUES
					('".$datos['id_evento']."','".$datos['pregunta']."','".$datos['tipo_pregunta']."')";

			$result = $conexion->sql_insert_update($sql);

			if ($result["status"] == 200) {
				$id_pregunta = $result["data"];
				if (($datos['tipo_pregunta'] == "simple") || ($datos['tipo_pregunta'] == "multi")) {
					return self::registrar_multi_resp($id_pregunta, $datos["respuestas"]);
				}elseif ($datos['tipo_pregunta'] == "libre") {
					return self::registrar_resp_libre($id_pregunta, $datos["respuestas"], $conexion);
				}
			}else{
				return $result;
			}
	}

	function modificar_encuesta($datos){
		$conexion = new Recursos();
		$sql = "UPDATE cuestionario SET pregunta='".$datos["pregunta"]."', tipo='".$datos["tipo_pregunta"]."' WHERE id='".$datos["id"]."'";
		$ejecutar= $conexion->sql_insert_update($sql);
		if($ejecutar["status"] == 200){
			if (($datos['tipo_pregunta'] == "simple") || ($datos['tipo_pregunta'] == "multi")) {
				if(count($datos['respuestas']) > 0){
					$editar_respuestas= self::editar_multi_resp($datos["id"], $datos["respuestas"], $datos["respuestas_id"]);
				}
				if(count($datos['respuestas_new']) > 0){
					$sqldel = "DELETE FROM respuesta  WHERE id_pregunta='".$datos["id"]."' and descripcion='Respuesta Libre'";
					$conexion->sql_insert_update($sqldel);
					return self::registrar_multi_resp($datos["id"], $datos["respuestas_new"]);
				}else{
					return $editar_respuestas;
				}
			}else if ($datos['tipo_pregunta'] == "libre") {
				if($datos['respuestas_id'] == 0){
					$sqldelete = "DELETE FROM respuesta  WHERE id_pregunta='".$datos["id"]."'";
					$conexion->sql_insert_update($sqldelete);
					return self::registrar_resp_libre($datos["id"], $datos["respuestas"], $conexion);
				}else {
					return $ejecutar;
				}
			}
		}
	}


	function registrar_multi_resp($id_pregunta, $datos){
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if($mysqli["status"] == 200){
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
		}else{
			return ["data"=>"", "error"=>$mysqli["error"], "status"=>500];
		}
		$conexion->cerrar_mysqli();
	}

	function editar_multi_resp($id_pregunta, $respuesta, $id_respuestas){
		$conexion = new Recursos();
		for ($i=0; $i < count($respuesta); $i++) {
			$sql = "UPDATE respuesta SET descripcion='".$respuesta[$i]["value"]."' WHERE id='".$id_respuestas[$i]["value"]."'";
			$ejecutar= $conexion->sql_insert_update($sql);
		}
		return $ejecutar;
	}

	function registrar_resp_libre($id_pregunta, $respuesta, $conexion){
		$sql = "INSERT INTO respuesta (id_pregunta,descripcion) VALUES ('$id_pregunta','$respuesta')";
		$result = $conexion->sql_insert_update($sql);
		return $result;
	}

	function listar($id_evento, $tabla, $where){
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if ($mysqli["status"] == 200) {
			$sql = "SELECT *
					FROM $tabla
					WHERE $where='".$id_evento["id"]."'";
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


	function eliminar_pregunta($datos){
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if ($mysqli["status"] == 200) {
			$sql = "DELETE FROM cuestionario WHERE id='".$datos["id"]."'";
			$result = $mysqli["data"]->query($sql);
			if ($result == true) {
				$sql = "DELETE FROM respuesta WHERE id_pregunta='".$datos["id"]."'";
				$result = $mysqli["data"]->query($sql);
				if ($result == true) {
					return ["data"=>"Pregunta eliminada", "error"=>"", "status"=>200];
				}else{
					$cod_error = ($mysqli["data"]->errno);
					$error = mysqli_error($mysqli["data"]);
					return ["data"=>"", "error"=>$error, "status"=>$cod_error];
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

	function eliminar_respuesta($datos){
		$conexion = new Recursos();
		$sql = "DELETE FROM respuesta WHERE id='".$datos["id"]."'";
		$ejecutar= $conexion->sql_insert_update($sql);

		return $ejecutar;
	}
}

?>
