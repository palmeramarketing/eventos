<?php

include "../model/Usuario.php";
header('Content-type: application/json; charset=utf-8');

if (isset($_POST)){
	$usuario = new Usuario();
	switch ($_POST["tipo"]) {
		case 'registrar':
			echo json_encode($usuario->registrar_usuario($_POST));
			break;

		case 'deshabilitar':
			echo json_encode($usuario->deshabilitar_usuario($_POST));
			break;
		
		default:
			echo json_encode(["data"=>"", "error"=> "Comando no encontrado", "status"=>404]);
			break;
	}
}
?>