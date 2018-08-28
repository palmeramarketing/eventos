<?php
error_reporting(0);
include "../model/Certificado.php";
// header('Content-type: application/json; charset=utf-8');

if (isset($_POST)){
	$certificado = new Certificado();

	switch ($_POST["tipo"]) {

		case 'guardar_certificado':
			$archivo = $_FILES["archivo_html"];
			echo json_encode($certificado->guardar_certificado($_POST, $archivo));
			break;

		case 'imprimir_certificado':
			$certificado->imprimir_certificado($_POST["id_certificado"],true);
			break;

		case 'eliminar_certificado':
			echo json_encode($certificado->eliminar_certificado($_POST));
			break;

		default:
			echo json_encode($certificado->listar_certificados());
			break;
	}

}
?>
