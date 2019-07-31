<?php

require_once("Conexion.php");
require_once("recursos.php");
require_once("pdf_generator.php");

class Evento
{
	function registrar_evento($datos)
	{
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		$hash = hash('crc32', $datos['nombre'].rand(), FALSE);
		if($mysqli["status"] == 200){
			$sql = "INSERT INTO encuesta (nombre,fecha,direccion,hash,estatus)
					values ('".$datos['nombre']."','".$datos['fecha']."','".$datos['direccion']."','$hash',1)";
			$result = $mysqli["data"]->query($sql);
			if ($result === true) {
				$id_pregunta = $mysqli["data"]->insert_id;
				return ["data"=>["id"=>$id_pregunta,"hash"=>$hash], "error"=>"", "status"=>200];
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

	function listar_eventos($datos){
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if ($mysqli["status"] == 200) {

			if($datos["perfil"]==  'admin'){
				$sql = "SELECT eve.* FROM encuesta eve JOIN evento_usuario ue on eve.id = ue.fk_evento JOIN usuario us on ue.fk_usuario = us.id WHERE us.id=".$datos["id"]." and eve.estatus=1";
			}else {
				$sql = "SELECT * FROM encuesta WHERE estatus=1";
			}

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

	function modificar_evento($datos){
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if ($mysqli["status"] == 200) {
			$sql = "UPDATE encuesta SET nombre='".$datos["nombre"]."', fecha='".$datos["fecha"]."', direccion='".$datos["direccion"]."' WHERE id='".$datos["id"]."'";
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

	function estatus_evento($datos){
		$conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if ($mysqli["status"] == 200) {
			$sql = "UPDATE encuesta SET estatus=0 WHERE id='".$datos["id"]."'";
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

	function imprimir_certificado_evento($id, $imprimir = false){
		$conexion = new Recursos();
		$select = "SELECT *	FROM  certificado	WHERE id_evento = $id";
		$datos = $conexion->sql_select($select);
		if ($imprimir) {
			if ($datos["status"] == 200) {
				$pdf = new PDF_generator();
				$pdf->imprimir_pdf($datos);
			}else{
				header("location: ../view/inicio.php?error='true'");
			}
		}else{
			return $datos;
		}
	}

}

?>
