<?php
include_once "recursos.php";

class Gestion_Evento
{
	
	function comprobar_evento_existente(){
		$consulta = new Recursos();
		$consul = $consulta->sql_select("SELECT * FROM evento");
		if ($consul["status"] == 200) {
			return ["data"=>$consul["data"], "error"=>$consul["error"], "status"=>300];
		}
		return $consul;
	}

	function preparar_evento($data){
		if ($data["status"] == 200) {
			$consulta = new Recursos();
			$evento = self::registrar_evento($data["data"]['evento'], $consulta);
			if ($evento['status'] != 200) {
				return $evento;
			}
			$participantes = self::registrar_participantes($data["data"]['participante'], $consulta);
			if ($participantes["status"] != 200) {
				return $participantes;
			}
			$encuestas = self::registrar_encuesta($data["data"]["encuestas"], 
												  $data["data"]["evento"]["id"],
												  $consulta);
			return $encuestas;
		}else{
			return $data;
		}
	}

	function registrar_evento($evento, $consulta){
		$sql = "INSERT INTO
				evento (nombre,fecha,direccion,id_ws,estatus)
				VALUES
				('".$evento['nombre']."','".$evento['fecha']."','".$evento['direccion']."',
				'".$evento['id']."','1')";
		return $consulta->sql_insert($sql);
	}

	function registrar_participantes($parti, $consulta){
		$values = self::preparar_valores_participantes($parti);
		$sql = "INSERT INTO
				participante (email,nombre,apellido,direccion,telefono,id_ws,estatus)
				VALUES
				".$values."";
		return $consulta->sql_insert($sql);
	}

	function preparar_valores_participantes($participantes){
		$cont = 0;
		$values = "";
	    foreach ($participantes as $key => $value) {
	    	$prep[$cont]['email'] = $value['email'];
	    	$prep[$cont]['nombre'] = $value['nombre'];
	    	$prep[$cont]['apellido'] = $value['apellido'];
	    	$prep[$cont]['direccion'] = $value['direccion'];
	    	$prep[$cont]['telefono'] = $value['telefono'];
	    	$prep[$cont]['id_ws'] = $value['id'];
	    	$prep[$cont]['estatus'] = $value['estatus'];
	    	$cont++;
	    }
		foreach ($prep as $key => $value) {
			$values .= "('".implode("', '",array_values($prep[$key]))."'),";
		}
		return substr($values, 0, -1);
	}

	function registrar_encuesta($encuestas, $evento_id, $consulta){
		foreach ($encuestas as $key => $value) {
			$sql_cuestionario = "INSERT INTO 
								cuestionario (id_evento, pregunta, tipo, id_ws)
								VALUES
								('".$evento_id."','".$value["pregunta"]."',
								'".$value["tipo"]."','".$value["id"]."')";
			$cuestionario = $consulta->sql_insert($sql_cuestionario);
			if ($cuestionario["status"] == 200) {
				$values = self::preparar_valores_respuestas($value["respuestas"], $cuestionario["data"]);
				$sql_encuesta = "INSERT INTO
								respuesta (id_pregunta,descripcion,id_ws)
								VALUES
								".$values."";
				$pregunta = $consulta->sql_insert($sql_encuesta);
				if ($pregunta["status"] != 200) {
					return $pregunta;
				}
			}else{
				return $cuestionario;
			}
		}
		return ["data"=>"","status"=>200,"error"=>""];
	}

	function preparar_valores_respuestas($respuestas, $id_pregunta){
		$cont = 0;
		$values = "";
		foreach ($respuestas as $llave => $valor) {
			$prep[$cont]['id_pregunta'] = $id_pregunta;
	    	$prep[$cont]['descripcion'] = $valor['descripcion'];
	    	$prep[$cont]['id_ws'] = $valor['id'];
	    	$cont++;
		}
		foreach ($prep as $key => $value) {
			$values .= "('".implode("', '",array_values($prep[$key]))."'),";
		}
		return substr($values, 0, -1);
	}

	function visualize_event(){
		$datos = [];
		$evento = self::consultar_evento();
		if ($evento['status'] != 200) {
			return $evento;
		}
		$datos["evento"] = $evento["data"];
		$cuestionario = self::consultar_cuestionario();
		if ($cuestionario["status"] != 200) {
			return $cuestionario;
		}
		$datos["cuestionario"] = $cuestionario["data"];
		$datos["cuestionario"]["total_preguntas"] = count($cuestionario["data"]);
		$participantes = self::consultar_participantes();
		if ($participantes["status"] != 200) {
			return $participantes;
		}
		$datos["participantes"] = $participantes["data"];
		$datos["participantes"]["total_participantes"] = count($participantes["data"]);
		$respuestas = self::consultar_respuestas_evento();
		if ($respuestas["status"] == 404) {
			$datos["respuestas"]["total_respuestas"] = 0;
		}elseif ($respuestas["status"] == 200) {
			$datos["respuestas"] = $respuestas["data"];
			$datos["respuestas"]["total_respuestas"] = count($respuestas["data"]);
		}elseif ($respuestas["status"] != 200 && $respuestas["status"] != 404) {
			return $respuestas;
		}
		return ["data"=>$datos,"status"=>200,"error"=>""];
		}

	function consultar_evento(){
		$consulta = new Recursos();
		$sql = "SELECT * FROM evento";
		return $consulta->sql_select($sql);
	}

	function consultar_cuestionario(){
		$consulta = new Recursos();
		$sql = "SELECT * FROM cuestionario";
		return $consulta->sql_select($sql);
	}

	function consultar_participantes(){
		$consulta = new Recursos();
		$sql = "SELECT * FROM participante";
		return $consulta->sql_select($sql);
	}

	function buscar_un_participante($email){
		$consulta = new Recursos();
		$sql = "SELECT * FROM participante WHERE email='".$email."'";
		return $consulta->sql_select($sql);
	}

	function consultar_respuestas_evento(){
		$consulta = new Recursos();
		$sql = "SELECT * FROM respuesta_evento";
		return $consulta->sql_select($sql);
	}
	function registrar_nuevo_participante($datos){
		$consulta = new Recursos();
		$sql = "INSERT INTO
				participante (email,nombre,apellido,direccion,telefono)
				VALUES
				('".$datos['email']."','".$datos['nombre']."','".$datos['apellido']."',
				'".$datos['direccion']."','".$datos['telefono']."')";
		return $consulta->sql_insert($sql);
	}
	function cargar_encuesta(){
		$consulta = new Recursos();
		$sql = "SELECT *
				FROM cuestionario cue
				INNER JOIN respuesta res
				ON cue.id = res.id_pregunta";
		$arreglo = $consulta->sql_select($sql);
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