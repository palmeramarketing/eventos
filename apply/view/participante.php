<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Participantes</title>
	<link rel="stylesheet" href="../plugins/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="../items/css/main_style.css">
	<link rel="stylesheet" href="../items/css/participante.css">
</head>
<body>
	<div class="container-fluid container_background">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 col_header">
				<div class="page-header">
				  <h1>Participante</h1>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 col_content">
				<div id="div_busqueda_participante">
					<div class="input-group">
						<input id="buscar_email_participante" placeholder="Buscar por Correo" class="form-control input_style" type="text">
						<span class="input-group-addon glyphicon glyphicon-search buscar_participante" style="cursor: pointer; top: 0px;"></span>
					</div>
				</div>
			</div>
		</div>
		<div class="row div_contenedor_usuario">
			<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 col_content">
				<div class="div_registrado">
					<div class="col-lg-2 col-lg-offset-4 col-md-2 col-md-offset-4 col-sm-2 col-sm-offset-4 col-xs-6">
						<div class="div_titulo_registrado">
							<span>Nombre:</span>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
						<div class="div_dato_registrado">
							<span id="span_nombre">N/A</span>
						</div>
					</div>
				</div>
				<div class="div_registrado">
					<div class="col-lg-2 col-lg-offset-4 col-md-2 col-md-offset-4 col-sm-2 col-sm-offset-4 col-xs-6">
						<div class="div_titulo_registrado">
							<span>Apellido:</span>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
						<div class="div_dato_registrado">
							<span id="span_apellido">N/A</span>
						</div>
					</div>
				</div>
				<div class="div_registrado">
					<div class="col-lg-2 col-lg-offset-4 col-md-2 col-md-offset-4 col-sm-2 col-sm-offset-4 col-xs-6">
						<div class="div_titulo_registrado">
							<span>Direcci&oacute;n:</span>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
						<div class="div_dato_registrado">
							<span id="span_direccion">N/A</span>
						</div>
					</div>
				</div>
				<div class="div_registrado">
					<div class="col-lg-2 col-lg-offset-4 col-md-2 col-md-offset-4 col-sm-2 col-sm-offset-4 col-xs-6">
						<div class="div_titulo_registrado">
							<span>Tel&eacute;fono:</span>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
						<div class="div_dato_registrado">
							<span id="span_telefono">N/A</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	  <!-- /////////////////////////FORMULARIO DE REGISTRO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
    <div class="row div_contenedor_registrar">
      <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 col_content">
        <div class="mensaje-div">
          <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
        </div>
		    <div class="panel panel-info">
		    	<!-- <div class="panel-heading">
		      		<center><h3 class="display-3">Nuevo Participante</h3></center>
		    	</div> -->
			    <br>
			    <div class="panel-body">
			      <div class="col-md-10 col-lg-offset-2">
			      <form class="form-horizontal" id="form_registro_participante">
			        <div class="form-group">
			          <div class="col-sm-10">
			          <input type="text" class="form-control" id="email_participante" tabindex=1 placeholder="Correo" name="email_participante">
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-sm-10">          
			          <input type="text" class="form-control" id="nombre_participante" tabindex=2 placeholder="Nombre" name="nombre_participante">
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-sm-10">
			          <input type="text" class="form-control" id="apellido_participante" tabindex=3 placeholder="Apellido" name="apellido_participante">
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-sm-10">
			          <input type="text" class="form-control" id="direccion_participante" tabindex=4 placeholder="Direccion" name="direccion_participante">
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-sm-10">
			          <input type="text" class="form-control" id="telefono_participante" tabindex=5 placeholder="Tel&eacute;fono" name="telefono_participante">
			          </div>
			        </div>
			        <div class="form-group">        
			          <div class="col-sm-offset-0 col-sm-10">
			          	<button type="submit" class="btn btn-info btn-block">Registrar</button>
			          </div>
			        </div>
			        </form>
			      </div>
			    </div>
		  	</div>
      </div>
    </div>
    <div class="row">
    	<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-12 col_content">
    		<div id="div_continuar_encuesta" class="div_opciones_menu">
    			<form action="encuesta.php" method="POST">
							<input type="hidden" id="id_participante" name="id_participante">
							<input type="submit" class="btn btn-info btn_menu_personalizado" id="continuar_encuesta" value="Continuar Encuesta">
					</form>
    		</div>
    	</div>
    	<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-12 col_content">
    		<div id="div_volver" class="div_opciones_menu">
    			<a href="mi_evento.php" class="btn btn-link btn_menu_personalizado">Volver</a>
    		</div>
    	</div>
    </div>
  	<!-- /////////////////////////FORMULARIO DE REGISTRO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
  	<div class="row">
	  	<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-12 col_footer div_cierre">
	  	</div>
  	</div>
	</div>
</body>
<script src="../plugins/jquery/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="../plugins/jquery/jquery.validate.min.js"></script>
<script type="text/javascript" src="../plugins/jquery/jquery-ui.min.js"></script>
<script src="../items/js/participantes.js" type="text/javascript" charset="utf-8"></script>
</html>