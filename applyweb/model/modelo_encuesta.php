<?php
include_once "recursos.php";

class Encuesta
{
	// function buscar_participante($datos){
	// 	$ejecutar = new Recursos();
	// 	$sql = "";
	// }
	
	function comprobar_cargar($datos){
		$ejecutar = new Recursos();
		$sql = "SELECT * FROM participante WHERE email = '".$datos["email"]."'";
		$result = $ejecutar->sql_select($sql);
		if ($result["status"] != 200) {
			return $result;
		}
		$sql = "SELECT *
				FROM cuestionario cue
				INNER JOIN respuesta res
				ON cue.id = res.id_pregunta
				WHERE cue.id_evento = '".$datos["id_evento"]."'";
		$arreglo = $ejecutar->sql_select($sql);
		$resp = self::agrupar_array($arreglo['data']);
		return ["data"=>$resp, "error"=>"", "status"=>200];
	}

	function agrupar_array($datos){ //Solo recibe arrays
		$preguntas = [];
		$id_comparar = 0;
		foreach($datos as $key=>$valor) {
			/*Capturamos solo una coincidencia*/
			if ($id_comparar != $valor['id_pregunta']) {
				$preguntas[$valor['id']]['id'] = $valor['id_pregunta'];
				$preguntas[$valor['id']]['pregunta'] = $valor['pregunta'];
				$preguntas[$valor['id']]['tipo'] = $valor['tipo'];
			}
			$id_comparar = $valor['id_pregunta'];
		}
		$resultado = [];
		$i = 0;
		/*Filtramos por coincidencias las preguntas en un ciclo*/
		foreach ($preguntas as $key => $value) {
			$resultado[$i]['pregunta'] = $value['pregunta'];
			$resultado[$i]['id'] = $value['id'];
			$resultado[$i]['tipo'] = $value['tipo'];
			/*Por cada vuelta, comparamos el valor y anidamos las coincidencias*/
			foreach ($datos as $llave => $valor) {
				if ($resultado[$i]['id'] == $valor['id_pregunta']) {
					/*Eliminamos datos no relevantes*/
					unset($valor['id_evento'], 
						  $valor['pregunta'],
						  $valor['tipo'],
						  $valor['id_pregunta']);
					$resultado[$i]['respuestas'][] = $valor;
				}
			}
			$i++;
		}
		return $resultado;
	}
}
?>