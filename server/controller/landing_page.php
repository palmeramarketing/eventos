<?php
error_reporting(0);
include "../model/Landing_Page.php";


if (isset($_POST)){
	$landing = new Landing_Page();
	switch ($_POST["tipo"]) {
		case 'guardar_landing':
			$archivo = $_FILES["archivo_html"];
			echo json_encode($landing->guardar_landing($_POST, $archivo));
			break;

		case 'modificar_landing':
			$archivo = $_FILES["mod_archivo_html"];
			echo json_encode($landing->modificar_landing($_POST,$archivo));
			break;

		case 'eliminar_landing':
			echo json_encode($landing->eliminar_landing($_POST));
			break;

		case 'renderizar_landing':
			echo json_encode($landing->renderizar_landing($_POST["hash"]));
			break;

		default:
			echo json_encode($landing->listar_landing($_POST["id_evento"]));
			break;
	}
}
?>

