<?php

require_once("../db/conexion.php");

include "../model/modelo.php";



error_reporting(0);



$modelo = new Modelo();



switch ($_POST["accion"]) {



	case 'registrar_participantes':

		echo json_encode($modelo->registrar_participantes($_POST["data"]));

		break;



	case 'buscar_participante':

		echo json_encode($modelo->buscar_participante($_POST["email"]));

		break;



	case 'guardar_certificado':

		$archivo = $_FILES["archivo_html"];

		echo json_encode($modelo->guardar_certificado($_POST, $archivo));

		break;



	case 'imprimir_certificado':

		$modelo->imprimir_certificado($_POST,true);

		break;



	case 'login':

		echo json_encode($modelo->login($_POST["correo"], $_POST["clave"]));

		break;



	case 'recuperar_password':

		echo json_encode($modelo->recuperar_password($_POST["correo"]));

		break;



	case 'cambiar_password':

		echo json_encode($modelo->cambiar_password($_POST["correo"], $_POST["passwd"]));

		break;



	case 'registrar_evento':

		echo json_encode($modelo->registrar_evento($_POST["datos"]));

		break;



	case 'registrar_usuario':

		echo json_encode($modelo->registrar_usuario($_POST));

		break;



	case 'modificar_usuario':

		echo json_encode($modelo->modificar_usuario($_POST));

		break;



	case 'deshabilitar_usuario':

		echo json_encode($modelo->deshabilitar_usuario($_POST));

    

	case 'imprimir_gafete':

		$modelo->imprimir_gafete($_POST["nombre"]);

		break;



	default:

		echo json_encode($modelo->listar_evento());

		break;

}

?>

