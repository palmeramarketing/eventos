<?php
error_reporting(0);
include "../model/Usuario.php";
// header('Content-type: application/json; charset=utf-8');

if (isset($_POST)){
	$usuario = new Usuario();
	switch ($_POST["tipo"]) {
		case 'login':
			echo json_encode($usuario->login($_POST));
			break;

		case 'perfil':
			echo json_encode($usuario->mostrar_perfil($_POST));
			break;

		case 'registrar':
			echo json_encode($usuario->registrar_usuario($_POST));
			break;

		case 'deshabilitar':
			echo json_encode($usuario->deshabilitar_usuario($_POST));
			break;

		case 'modificar':
			echo json_encode($usuario->modificar_usuario($_POST));
			break;

		case 'recuperar_password':
			echo json_encode($usuario->recuperar_password($_POST['correo']));
			break;

		case 'cambiar_password':
			echo json_encode($usuario->cambiar_password($_POST["correo"], $_POST["passwd"]));
			break;

		default:
			echo json_encode($usuario->listar_usuario());
			break;
	}
}
?>
