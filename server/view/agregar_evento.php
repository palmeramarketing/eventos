<?php
session_start();
  if (!isset($_SESSION["login"])) {
    header("Location: ../index.php");
    exit;
  }
?>
<!DOCTYPE html>
<html lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<title>Agregar Lista de Evento</title>
<?php
	include "../items/static/header.php";
  ?>
</head>
<body>
  <?php
	include "../items/static/navbar.php";
  ?>
  <div class="container">
	<div class="row">
		<div class="mensaje-div">
            <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
        </div>
		<div class="col-md-10 col-lg-offset-1">
			<h1>Registro de Eventos</h1>
		</div>
	  <div class="col-md-10 col-lg-offset-1">
		<form class="form-horizontal" id="form_registro_evento">
			<div class="form-group">
			  <div class="col-sm-10">
				<input type="text" class="form-control" id="nombre_evento" placeholder="Nombre del Evento" name="nombre_evento">
			  </div>
			</div>
			<div class="form-group">
			  <div class="col-sm-10 input-group date div_datepicker">          
				<input type="text" class="form-control" id="fecha_evento" placeholder="Fecha del evento" name="fecha_evento"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
			  </div>
			</div>
			<div class="form-group">
			  <div class="col-sm-10">
				<input type="text" class="form-control" id="direccion_evento" placeholder="Direcci&oacute;n del evento" name="direccion_evento">
			  </div>
			</div>
			<div class="form-group">        
			  <div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Registrar</button>
			  </div>
			</div>
		  </form>
	  </div>
	</div>
  </div>
 <style type="text/css">
 	.div_datepicker{
 		left: 15px;
		width: 80%;
 	}
 </style>
 <script type="text/javascript" src="../items/js/agregar_evento.js"></script>
</body>
</html>