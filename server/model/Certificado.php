<?php

require_once("Conexion.php");
require_once("recursos.php");
require_once("pdf_generator.php");

class Certificado
{

	function guardar_certificado($data, $archivo){
		$conexion = new Recursos();
		$file_data = file_get_contents($archivo['tmp_name']);
		$insert = "INSERT INTO certificado (id_evento,nombre_certificado,data_html)
					VALUES ('".$data["eventos_carga"]."','".$data["nombre"]."','$file_data')";

		return $conexion->sql_insert_update($insert);
  }

	function listar_certificados(){
			$conexion = new Recursos();

			$sql = "SELECT cert.id, cert.nombre_certificado, eve.nombre
							FROM certificado cert
							JOIN lista_evento eve ON cert.id_evento = eve.id";
			$result = $conexion->sql_select($sql);
			return $result;
	}

	function imprimir_certificado($id, $imprimir = false){
		$conexion = new Recursos();
		$select = "SELECT *	FROM  certificado	WHERE id = $id";

		$datos = $conexion->sql_select($select);
		if ($imprimir) {
			if ($datos["status"] == 200) {
				$pdf = new PDF_generator();
				$pdf->imprimir_pdf($datos);
			}else{
				return $datos;
			}
		}else{
			return $datos;
		}
	}

	function eliminar_certificado($data){
		$conexion = new Recursos();
		$insert = "DELETE FROM certificado WHERE id=".$data["id"]."";

		return $conexion->sql_insert_update($insert);
	}




}

?>
