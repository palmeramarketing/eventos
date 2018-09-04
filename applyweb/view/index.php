<!DOCTYPE html>
<html>
<head>
	<title>Inicio</title>

	<?php include '../items/static/header.php';?>

</head>
<link rel="stylesheet" href="../items/css/index.css">
<body style="background: #2c4c72;">
	<div class="container-fluid">
		<div class="row" style="background: white;">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding">
				<div id="imagen_header_logo" class="centrar">
					<img src="../items/images/menarini_icon.jpg" alt="" height="150px" width="150px"  >
				</div>
			</div>
		</div>

		<div class="row fondo_azul text-center">
<?php

	if (isset($_POST) && $_POST['id_evento'] != "" && $_POST['email'] != "") {
		$id_evento = $_POST['id_evento'];
		$email = $_POST['email'];
		?>
					<div id="div_container_bienvenida">
						<div class="div_parrafo_superior_formulario">
						  <p class="text_encuesta">Bienvenido</p>
						</div>
						<div class="row">
							<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12">
								<div id="div_boton_comenzar">
									<input type="button" class="btn button-encuesta" value="COMENZAR" id="comenzar">
<!-- 
									<div class="text-center salir">
										<a href="../enviar_datos_post.php" class=" p_texto_azul">Omitir encuesta ></a>
									</div> -->
								</div>
							</div>
						</div>
					</div>
					<div id="div_container_encuesta">
						<div class="div_parrafo_superior_formulario">
						  <p class="text_encuesta">Encuesta</p>
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
												<button class="btn button-encuesta" id="boton_anterior">< Anterior</button>
											</div>
											<div class="div_botones" id="div_boton_siguiente">
												<button class="btn button-encuesta" id="boton_siguiente">Siguiente ></button>
											</div>
											<div class="div_botones" id="div_boton_finalizar">
												<button class="btn button-encuesta" id="boton_finalizar">Finalizar</button>
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
	<script type="text/javascript" src="../items/static/funciones_constantes.js"></script>
	<script type="text/javascript" src="../items/js/index.js"></script>
</body>
</html>
