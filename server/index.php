<!DOCTYPE html>

<html lang="es">

<head>

    <title>Bienvenido</title>

	<?php

		include "items/static/header.php";

	?>

	<link rel="stylesheet" type="text/css" href="http://<?php echo $_SERVER['HTTP_HOST']; ?>/eventos/server/items/css/index.css">

</head>

<body>

    <div class="container form_sesion">

    	<div class="row">

    		<div class="col-xs-4 col-xs-offset-4">

    			<img src="http://<?php echo $_SERVER['HTTP_HOST']; ?>/eventos/server/items/images/menarini_icon.jpg" class="logo center-block">

    		</div>

    	</div>

    	<div class="espacio"></div>

    	<div class="row" id="inicio">

    		<fieldset class="col-xs-10 col-xs-offset-1 fieldset_index">

    			<legend class="hidden-xs">

    				<h3>Inicio de sesi&oacute;n</h3>

    			</legend>

    			<form role="form" class="form-horizontal" id="form-inicio-sesion" method="POST" action="view/inicio.php">

                    <input type="hidden" name="id_user" id="id_user">

                    <input type="hidden" name="tipo_user" id="tipo_user">

    				<div class="form-group">

    					<div class="col-xs-10 col-xs-offset-1">

    						<input type="text" id="usuario" name="usuario" tabindex=1 placeholder="Usuario" class="form-control input_style">

    					</div>

    				</div>

    				<div class="form-group">

    					<div class="col-xs-10 col-xs-offset-1">

    						<input type="password" id="password" name="password" tabindex=2 placeholder="Password" class="form-control col-xs-12 input_style">

    					</div>

    				</div>

    				<div class="form-group text-center">

              <a href="#" id="olvido_passw" style="color: #fff ">Olvido su password?</a>

    				</div>

    				<div class="form-group">

    					<button type="submit" class="btn btn-danger center-block" id="login">LogIn</button>

    				</div>

                    <div class="mensaje-div">

                        <strong class="mensaje-strong"></strong><span class="mensaje-span"></span>

                    </div>

    			</form>

    		</fieldset>

    	</div>

    	<div class="row" id="recuperar" style="display : none">

    		<fieldset class="col-xs-10 col-xs-offset-1 fieldset_index">

    			<legend class="hidden-xs">

    				<h3>Recuperar password</h3>

    			</legend>

    			<form role="form" class="form-horizontal" id="form-recueperar" method="POST" action="view/inicio.php">

    				<div class="form-group">

    					<div class="col-xs-10 col-xs-offset-1">

    						<input type="email" id="email" tabindex=2 placeholder="Email" class="form-control col-xs-12 input_style">

    					</div>

    				</div>

    				<div class="form-group">

    					<button type="submit" class="btn btn-danger center-block" id="recuperarPass">Recuperar</button>

    				</div>

                    <div class="mensaje-div">

                        <strong class="mensaje-strong"></strong><span class="mensaje-span"></span>

                    </div>

    			</form>

    		</fieldset>

    	</div>

    	<div class="row" id="cambiar" style="display : none">

    		<fieldset class="col-xs-10 col-xs-offset-1 fieldset_index">

    			<legend class="hidden-xs">

    				<h3>Cambiar password</h3>

    			</legend>

    			<form role="form" class="form-horizontal" id="form-cambiar" method="POST" action="view/inicio.php">

    				<div class="form-group">

    					<div class="col-xs-10 col-xs-offset-1">

    						<input type="password" id="password1" tabindex=2 placeholder="Ingrese su nueva password" class="form-control col-xs-12 input_style">

    					</div>

    				</div>

    				<div class="form-group">

    					<div class="col-xs-10 col-xs-offset-1">

    						<input type="password" id="password2" tabindex=2 placeholder="Repita la password" class="form-control col-xs-12 input_style">

    					</div>

    				</div>

            <input type="hidden" name=correo id=correo>

    				<div class="form-group">

    					<button type="submit" class="btn btn-danger center-block" id="cambiarPass">Cambiar</button>

    				</div>

                    <div class="mensaje-div">

                        <strong class="mensaje-strong"></strong><span class="mensaje-span"></span>

                    </div>

    			</form>

    		</fieldset>

    	</div>

    </div>

    <script type="text/javascript" src="http://<?php echo $_SERVER['HTTP_HOST']; ?>/eventos/server/items/js/index.js"></script>

</body>

</html>

