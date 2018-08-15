<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Configuraci&oacute;n de Evento</title>
	<link rel="stylesheet" href="../plugins/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="../items/css/main_style.css">
	<link rel="stylesheet" href="../items/css/descargar_evento.css">
</head>
<body>
	<div class="container-fluid container_background">
		<div id="div_contenedor">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 div_transparente">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="page-header">
								<h1>Selecciona y descarga tu evento</h1>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div id="div_parrado">
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur eius quam porro debitis ut vero iusto dolor. Sunt tempora fugiat accusantium, possimus aliquid ab, officia eaque, quae non voluptatum soluta.
								</p>
							</div>
						</div>
					</div>
					<div class="row div_row_cargar_evento">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="div_cargar_evento">
								<select name="select_evento" id="select_evento" class="form-control">
									<option value="null" selected disabled>Selecciona tu evento</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row div_row_cargar_evento">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="div_cargar_evento">
								<input type="button" class="btn btn-block btn-info button_cargar_evento" disabled value="DESCARGAR EVENTO">
							</div>
						</div>
					</div>
					<div class="row" id="row_mensajes_alertas">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div id="div_mensajes">
								<div class="alert alert-success">
									<strong>Evento descargado!</strong> Ya puede realizar su encuesta.<a href="mi_evento.php" id="a_redireccion_success">Redirecci&oacute;n en 5 segundos.</a>
								</div>
								<div class="alert alert-info">
								  <strong>Informaci&oacute;n</strong> Ya existe un evento registrado en el dispositivo.<a href="mi_evento.php" id="a_redireccion_info">Redirecci&oacute;n en 5 segundos.</a>
								</div>

								<div class="alert alert-warning">
								  <strong>Advertencia</strong> hubo un error al descargar el evento.
								</div>

								<div class="alert alert-danger">
								  <strong>Peligro</strong> Existe un error interno del sistema.
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="../plugins/jquery/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../items/js/descargar_evento.js" type="text/javascript" charset="utf-8"></script>
</html>