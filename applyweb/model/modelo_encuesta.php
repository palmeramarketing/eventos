<?php

include_once "recursos.php";

require_once('../mailer/class.phpmailer.php');

require '../mailer/PHPMailerAutoload.php';



class Encuesta

{

	

	function comprobar_cargar($datos){

		$result = self::buscar_participante($datos["email"]);

		$ejecutar = new Recursos();

		if ($result["status"] != 200) {

			return $result;

		}

		$sql = "SELECT *

				FROM cuestionario cue

				INNER JOIN lista_evento eve
                
                ON eve.id = cue.id_evento
                
                INNER JOIN respuesta res
                
                ON cue.id = res.id_pregunta

				WHERE eve.hash = '".$datos["hash"]."' ORDER BY cue.id ASC";

		$arreglo = $ejecutar->sql_select($sql);

		$resp["encuesta"] = self::agrupar_array($arreglo['data']);

		$resp["id_participante"] = $result["data"]["id"];

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



	function buscar_participante($email){

		$ejecutar = new Recursos();

		$sql = "SELECT * FROM participante WHERE email = '".$email."'";

		return $ejecutar->sql_select($sql);

	}



	function insertar_respuestas_eventos($datos){

		$consulta = new Recursos();

		if (isset($datos['id_participante']) && count($datos["respuestas"])) {

			$datos = self::armar_arreglo($datos);

			$existe = self::validar_respuesta_usuario($datos['id_evento'], $datos["participantes"]['id']);

			if ($existe) {

				return ["data"=>"El usuario ya ha participado", "error"=>"", "status"=>200];

			}

			$values = self::preparar_valores($datos);

			$sql = "INSERT INTO 

					respuesta_evento (id_participante,id_respuesta,respuesta_libre) 

					VALUES 

					".$values."";

			$result = $consulta->sql_insert_update($sql);

			if ($result["status"] == 200) {

				self::envioCorreoEncuesta($datos["email"]);

				return ["data"=>"Registro Exitoso", "error"=>"", "status"=>200];

			}

		}else{

			return ["data"=>"", "error"=>"No se encontraron datos", "status"=>404];

		}

	}



	function validar_respuesta_usuario($hash, $id_participante){

		$consulta = new Recursos();

		$sql = "SELECT id_evento 

				FROM vista_respuesta_evento 

				WHERE id_participante = '".$id_participante."'

				AND hash = '".$hash."'";

		$consult = $consulta->sql_select($sql);

		if ($consult['status'] == 200) {

			return true;

		}else{

			return false;

		}

	}



	function preparar_valores($participantes){

		$cont = 0;

		$values = "";

		foreach($participantes as $k => $v ) {

		    foreach ($v["respuestas"] as $key => $value) {

		    	$prep[$cont]['id_participante'] = $v['id'];

		    	$prep[$cont]['id_respuesta'] = $value['id'];

		    	$prep[$cont]['respuesta_libre'] = $value['respuesta_libre'];

		    	$cont++;

		    }

		}

		foreach ($prep as $key => $value) {

			$values .= "('".implode("', '",array_values($prep[$key]))."'),";

		}

		return substr($values, 0, -1);

	}



	function armar_arreglo($datos){

		$arreglo = array('participantes' => array("id" => $datos["id_participante"]));

		$arreglo["id_evento"] = $datos["id_evento"];

		for ($i=0; $i < count($datos["respuestas"]) ; $i++) { 

			$name_campo = $datos["respuestas"][$i]["name"];

			$id_valor_campo = $datos["respuestas"][$i]["value"];

			$pos = strpos($name_campo, "/");

			if ($pos) {

				$id_textarea = substr($name_campo, $pos+1);

				$arreglo["participantes"]["respuestas"][$i]["id"] = $id_textarea;

				$arreglo["participantes"]["respuestas"][$i]["respuesta_libre"] = $id_valor_campo;

			}else{

				$arreglo["participantes"]["respuestas"][$i]["id"] = $id_valor_campo;

				$arreglo["participantes"]["respuestas"][$i]["respuesta_libre"] = NULL;

			}

		}

		return $arreglo;

	}



	function validar_participacion_usuario($hash, $email){

		$usuario = self::buscar_participante($email);

		if ($usuario["status"] == 200) {

			$participacion = self::validar_respuesta_usuario($hash, $usuario["data"]["id"]);

			if ($participacion) {

				return ["data"=>"", "error"=>"El usuario ya ha participado", "status"=>402];

			}else{

				return ["data"=>"OK", "error"=>"", "status"=>200];

			}

		}elseif ($usuario["status"] == 404) {

			return ["data"=>"", "error"=>"El usuario no existe.", "status"=>401];

		}

	}



	function envioCorreoEncuesta($email) {

	  	$mail = new PHPMailer;

		$mail->setFrom('info@cwc.com', 'MENARINI');

		$mail->addAddress($email,'');

		$mail->Subject = 'Gracias por su Participacion';

		$mail->msgHTML('

		<html lang="es">

		<head>

			<meta charset="UTF-8">

		</head>

		<body style="font-family: Helvetica; margin: 0px;">

			<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0" align="center">

				<tbody>

					<tr>

						<td><img  style="position: absolute; top: 0;" src="http://palmera.marketing/check-in_system/assets/images/Web_Confirmacion_Banner.jpg" alt="" width="100%"></td>

					</tr>

					<tr>

						<td align="center">

							<p style="font-size: 30pt; color: #2d4c72; padding: 20px;">Gracias por participar en nuestra encuesta</p>

						

						</td>

					</tr>

				</tbody>

			</table>

		</body>

		</html>'

		);

		$mail->AltBody = 'Agracias por Asistir a nuetro evento.';

		$mail->send();

	}

}

?>