<?php

require_once("Conexion.php");
require_once("recursos.php");

class Landing_Page
{

	function guardar_landing($data, $archivo){
		$conexion = new Recursos();
		$hash_id = hash('crc32', $data["id_evento"].$data["nombre_landing"].rand(), FALSE);
		$file_data = file_get_contents($archivo['tmp_name']);
		$insert = "INSERT INTO landing_registro (id_evento,nombre_landing,data_html,hash_id)
					VALUES ('".$data["id_evento"]."','".$data["nombre_landing"]."','$file_data','$hash_id')";

		return $conexion->sql_insert_update($insert);
  }

	function listar_landing($id_evento){
		$conexion = new Recursos();
		$sql = "SELECT * FROM landing_registro WHERE id_evento=$id_evento";
		$result = $conexion->sql_select($sql);
		if ($result["status"] == 404) {
			$result["error"] = ""; //Eliminar mensaje de error para que el DataTable no muestre un error.
		}
		return $result;
	}

	function modificar_landing($data, $archivo){
		$conexion = new Recursos();
		$file_data = file_get_contents($archivo['tmp_name']);
		$sql = "UPDATE landing_registro SET nombre_landing='".$data["mod_nombre_landing"]."', data_html='$file_data' WHERE id='".$data["id_landing"]."'";
		return $conexion->sql_insert_update($sql);
	}

	function eliminar_landing($data){
		$conexion = new Recursos();
		$sql = "UPDATE landing_registro SET estatus='Inactivo' WHERE id='".$data["id_landing"]."'";
		return $conexion->sql_insert_update($sql);
	}

	function renderizar_landing($hash){
		$conexion = new Recursos();
		$sql = "SELECT * FROM landing_registro WHERE hash_id='$hash' and estatus='Activo'";
		return $conexion->sql_select($sql);
	}
}

?>
