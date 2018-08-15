<!DOCTYPE html>
<html>
<head>
	<title>Inicio</title>

	<?php include '../items/static/header.php';?>

</head>
<link rel="stylesheet" href="../items/css/index.css">
<body>
	<div class="container-fluid container_background">
		<div class="div_contenedor_centrado">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 div_transparente">

<?php

	if (isset($_POST) && $_POST['id_evento'] != "" && $_POST['email'] != "") {
		$id_evento = $_POST['id_evento'];
		$email = $_POST['email'];
		?>
					<div id="div_container_bienvenida">
						<div class="page-header">
						  <h1>Bienvenido</h1>
						</div>
						<div class="row">
							<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12">
								<div id="div_boton_comenzar">
									<input type="button" class="btn btn-success" value="COMENZAR" id="comenzar">
								</div>
							</div>
						</div>
					</div>
					<div id="div_container_encuesta">
						<div class="page-header">
						  <h1>Encuesta</h1>
						</div>
						<input type="hidden" name="id_evento" id="id_evento" value="<?php echo $id_evento; ?>">
						<input type="hidden" name="email" id="email" value="<?php echo $email; ?>">
						<div class="row">
							<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12">
								<input type="hidden" name="id_participante" id="id_participante">
								<form id="form_respuestas" method="POST">
									<div id="div_contenedor_encuesta">

									</div>
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div id="div_contenedor_botones">
											<input type="hidden" id="length_encuesta">
											<div class="div_botones" id="div_boton_anterior">
												<button class="btn btn-warning" id="boton_anterior">< Anterior</button>
											</div>
											<div class="div_botones" id="div_boton_siguiente">
												<button class="btn btn-info" id="boton_siguiente">Siguiente ></button>
											</div>
											<div class="div_botones" id="div_boton_finalizar">
												<button class="btn btn-success" id="boton_finalizar">Finalizar</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div id="div_container_gracias">
						<div class="page-header">
						  <h1>Muchas Gracias</h1>
						</div>
						<div class="row">
							<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12">
								<div id="div_mensaje_error">
									<h2>Gracias por participar en la encuesta</h2>
								</div>
							</div>
						</div>
					</div>

					<div id="div_container_error_usuario">
						<div class="page-header">
						  <h1>Ha ocurrido un Error</h1>
						</div>
						<div class="row">
							<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12">
								<div class="mensaje-div">
			            <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
			        	</div>
			        </div>
			      </div>
		      </div>

		<?php
	}else{
		?>
					<div id="div_container_error">
						<div class="page-header">
						  <h1>Ha ocurrido un Error</h1>
						</div>
						<div class="row">
							<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12">
								<div id="div_mensaje_error">
									<h2>Enlace inválido</h2>
								</div>
							</div>
						</div>
					</div>
		<?php
	}

?>
					
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../items/static/funciones_constantes.js"></script>
	<script type="text/javascript" src="../items/js/index.js"></script>
</body>
</html>