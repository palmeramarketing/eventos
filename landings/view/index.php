<?php

session_start();

if (isset($_GET["hash"])) {
	$_SESSION["hash"] = $_GET["hash"];
	// echo "El NUEVO HASH ES: ".$_SESSION["hash"];
}elseif (!isset($_SESSION["hash"])){
	// echo "No hay HASH";
}else{
	// echo "El HASH EN SESION ES: ".$_SESSION["hash"];
}

?>

<input type="hidden" id="hash" name="hash" value="<?php echo $_SESSION['hash']; ?>">

<script src="../../server/plugins/jquery/jquery-3.2.1.min.js" id="instancia_provisional_jquery" type="text/javascript"></script>
<script src="../../server/items/js/renderizar_landing.js" type="text/javascript"></script>