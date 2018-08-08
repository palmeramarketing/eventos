<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Encuesta</title>
	<link rel="stylesheet" href="../plugins/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="../items/css/main_style.css">
	<link rel="stylesheet" href="../items/css/encuesta.css">
</head>
<?php
	session_start();
	if (isset($_POST["id_participante"])) {
		$_SESSION["id_participante"] = $_POST["id_participante"];
	}
?>
<body>
	<div class="container-fluid container_background">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 col_header">
				<div class="page-header">
				  <h1>Encuesta</h1>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 col_content">
				<div id="div_contenedor_encuesta">

				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 col_content">
				<div class="row">
					<div class="col-lg-2 col-lg-offset-9 col-md-2 col-md-offset-9 col-sm-2 col-sm-offset-9 col-xs-12">
						<div class="div_botones" id="div_boton_anterior">
							<button class="btn btn-warning" id="boton_siguiente">< Anterior</button>
						</div>
						<div class="div_botones" id="div_boton_siguiente">
							<button class="btn btn-success" id="boton_siguiente">Siguiente ></button>
						</div>
					</div>
				</div>
			</div>
		</div>

  	<div class="row">
	  	<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 col_footer div_cierre">
	  	</div>
  	</div>

	</div>
</body>
<script src="../plugins/jquery/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="../plugins/jquery/jquery.validate.min.js"></script>
<script type="text/javascript" src="../plugins/jquery/jquery-ui.min.js"></script>
<script src="../items/js/encuesta.js" type="text/javascript" charset="utf-8"></script>
</html>