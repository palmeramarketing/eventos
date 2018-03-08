<!DOCTYPE html>
<html lang="es">
<head>
    <title>Bienvenido</title>
	<?php
		include "items/static/header.php";
	?>
    <script type="text/javascript" src="http://<?php echo $_SERVER['HTTP_HOST']; ?>/eventos/server/items/js/index.js"></script>
	<link rel="stylesheet" type="text/css" href="http://<?php echo $_SERVER['HTTP_HOST']; ?>/eventos/server/items/css/index.css">
</head>
<body>
    <div class="container form_sesion">
    	<div class="row">
    		<div class="col-xs-4 col-xs-offset-4">
    			<img src="http://<?php echo $_SERVER['HTTP_HOST']; ?>/eventos/server/items/images/logo.jpg" class="logo center-block">
    		</div>
    	</div>
    	<div class="espacio"></div>
    	<div class="row">
    		<fieldset class="col-xs-10 col-xs-offset-1 fieldset_index">
    			<legend class="hidden-xs">
    				<h3>Inicio de sesi&oacute;n</h3>
    			</legend>
    			<form role="form" class="form-horizontal" id="form-inicio-sesion" method="POST" action="view/inicio.php">
    				<div class="form-group">
    					<div class="col-xs-10 col-xs-offset-1">
    						<input type="text" id="usuario" tabindex=1 placeholder="Usuario" class="form-control input_style">
    					</div>
    				</div>
    				<div class="form-group">
    					<div class="col-xs-10 col-xs-offset-1">
    						<input type="password" id="password" tabindex=2 placeholder="Password" class="form-control col-xs-12 input_style">
    					</div>
    				</div>
    				<div class="form-group">
    					<button type="submit" class="btn btn-danger center-block" id="login">LogIn</button>
    				</div>
                    <div class="mensaje-div">
                        <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
                    </div>
    			</form>
    		</fieldset>
    	</div>
    </div>
</body>
</html>