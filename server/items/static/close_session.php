<?php
include "../../model/usuario.php";

session_start();
session_destroy();
$modelo = new Usuario();
$user= $modelo->cerrar_sesion($_SESSION["user"]["id"]);
header("Location: ../../index.php");
?>
