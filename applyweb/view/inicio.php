<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Inicio</title>
	<link rel="stylesheet" href="../plugins/bootstrap/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12">
				<div class="page-header">
				  <h1>Inicio</h1>
				</div>
				<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">Informaci&oacute;n general</h3>
				  </div>
				  <div class="panel-body">
				    <div class="titulo_dato">
				    	<span>Evento activo:</span>
							<span id="evento"></span>
				    </div>
				    <div class="titulo_dato">
				    	<span>Fecha:</span>
							<span id="fecha_evento"></span>
				    </div>
				    <div class="titulo_dato">
				    	<span>Direcci&oacute;n:</span>
							<span id="dir_evento"></span>
				    </div>
				  </div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12">
				<div id="comenzar">
					<a href="participante.php" class="btn btn-block btn-info">COMENZAR</a>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="../plugins/jquery/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../items/js/inicio.js" type="text/javascript" charset="utf-8"></script>
</html>