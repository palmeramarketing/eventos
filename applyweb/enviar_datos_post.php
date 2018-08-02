<!DOCTYPE html>
<html>
<head>
	<title>Inicio Cuestionario</title>

	<?php include 'items/static/header.php';?>

</head>
<body>
	<div class="container-fluid container_background">
		<div class="div_contenedor_centrado">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 div_transparente">
					<fieldset class="col-xs-10 col-xs-offset-1 fieldset_index">
						<legend class="hidden-xs">
							<h3>Ingrese el ID del evento y su Email para empezar la encuesta</h3>
						</legend>
						<form role="form" class="form-horizontal" id="form-inicio-sesion" method="POST" action="view/index.php">
							<div class="form-group">
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" id="id_evento" name="id_evento" tabindex=1 placeholder="ID EVENTO" class="form-control input_style">
									<br>
									<input type="text" id="email" name="email" tabindex=2 placeholder="EMAIL" class="form-control input_style">
								</div>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-info center-block" id="comenzar">Enviar</button>
							</div>
							<div class="mensaje-div">
								<strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
							</div>
						</form>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="items/static/funciones_constantes.js"></script>
	<script type="text/javascript" src="items/js/index.js"></script>
</body>
</html>