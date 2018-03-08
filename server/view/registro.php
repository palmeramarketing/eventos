<!DOCTYPE html>
<html lang="es">
<head>
    <title>Registro</title>
	<?php
		include "../items/static/header.php";
	?>
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
    				<h3>Registro de usuarios</h3>
    			</legend>
                <div class="mensaje-div">
                    <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
                </div>
    			<form role="form" class="form-horizontal" id="form_registro_usaurio" name="form_registro_usaurio">
    				<div class="form-group">
    					<div class="col-xs-10 col-xs-offset-1">
    						<input type="text" id="usuario_r" tabindex=1 placeholder="Usuario" name="usuario_r" class="form-control input_style">
    					</div>
                        <div class="col-xs-10 col-xs-offset-1">
                            <input type="email" id="email_r" tabindex=2 placeholder="E-Mail" name="email_r" class="form-control input_style">
                        </div>
    					<div class="col-xs-10 col-xs-offset-1">
    						<input type="password" id="password_r" tabindex=3 placeholder="Password" name="password_r" class="form-control col-xs-12 input_style">
    					</div>
    				</div>
    				<div class="form-group">
                        <button type="submit" class="btn btn-danger center-block" id="btn_registrar">Registrar</button>
    					<center><button type="button" class="btn btn-link">Volver</button></center>
    				</div>
    			</form>
    		</fieldset>
    	</div>
    </div>
    <script src="http://<?php echo $_SERVER['HTTP_HOST']; ?>/eventos/server/items/js/registro.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>