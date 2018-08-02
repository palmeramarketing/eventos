<!DOCTYPE html>
<html>
<head>
	<title>Inicio</title>

	<?php include '../items/static/header.php';?>

</head>

<?php

	if (isset($_POST)) {
		$id_evento = $_POST['id_evento'];
		$email = $_POST['email'];
	}else{
		die;
	}

?>

<body>
	<div class="container-fluid container_background">
		<div class="div_contenedor_centrado">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 div_transparente">
					<fieldset class="col-xs-10 col-xs-offset-1 fieldset_index">
						<legend class="hidden-xs">
							<h3>Encuesta</h3>
						</legend>
						<input type="hidden" name="id_evento" id="id_evento" value="<?php echo $id_evento; ?>">
						<input type="hidden" name="email" id="email" value="<?php echo $email; ?>">
						<div class="row">
							<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 col_content">
								<div id="div_contenedor_encuesta">

								</div>
							</div>
						</div>
						<div class="mensaje-div">
							<strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
						</div>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../items/static/funciones_constantes.js"></script>
	<script type="text/javascript" src="../items/js/index.js"></script>
</body>
</html>