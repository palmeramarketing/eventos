<?php

include_once "Conexion.php";

class Graficar
{
	
	function getAllEvent($id_evento){
        $conexion = new Conexion();
		$mysqli = $conexion->conectar_mysqli();
		if($mysqli["status"] == 200){
	        $sql = "SELECT * FROM encuesta eve
	                LEFT JOIN cuestionario cue 
	                ON eve.id = cue.id_evento 
	                LEFT JOIN respuesta res
	                ON cue.id = res.id_pregunta
	                LEFT JOIN (SELECT *, COUNT(id_respuesta) as cont_respuesta 
	                           FROM respuesta_encuesta GROUP BY id_respuesta 
	                           HAVING COUNT(id_respuesta)>0) rese
	                ON res.id = rese.id_respuesta
	                WHERE eve.estatus = 1 AND eve.id = '".$id_evento."';";
	        $result = $mysqli["data"]->query($sql);
	        if ($result->num_rows > 0) {
				while($row = $result->fetch_array(MYSQLI_ASSOC)){
				   $arreglo[] = $row;
				}
				return self::prepararArregloEvento($arreglo);
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

	function prepararArregloEvento($rawdata){
		$encuesta["encuestas"] = array();
		$pregunta = array();
		foreach ($rawdata as $key => $value) {
		    if (!in_array($value["pregunta"], $pregunta)) {
		        $pregunta[] = $value["pregunta"];
		        $encuesta["encuestas"][] = ["pregunta"=>$value["pregunta"], "tipo"=>$value["tipo"]];
		    }
		}
		for ($i=0; $i < sizeof($encuesta["encuestas"]); $i++) { 
			$posicion[$i] = Null;
		}
		foreach ($encuesta["encuestas"] as $key => $value) {
		    $encuesta["encuestas"][$key]["respuestas"] = array();
		    foreach ($rawdata as $clave => $valor) {
		    	$posicion[$key] = intval($valor["cont_respuesta"]);
		        if ($value["pregunta"] == $valor["pregunta"]) {
		            array_push($encuesta["encuestas"][$key]["respuestas"], ["name"=>$valor["descripcion"],"data"=>$posicion]);
		        }
		        $posicion[$key] = Null;
		    }
		}
		return $encuesta;
	}
}
?>