<?php
	session_start();
  if (isset($_REQUEST["hash"])){
    $_SESSION["hash"] = $_REQUEST["hash"];
  } elseif (!isset($_SESSION["hash"])) {
    header("Location: error.php");
    exit;
  }
?>

<!DOCTYPE html>

<html lang=es>

	 <head>

			<meta charset="utf-8">

			<meta name="viewport" content="width=device-width, initial-scale=1">

			<title>CHECK-IN</title>

			<meta content="../assets/images/menarini_icon.jpg" name="msapplication-TileImage">

			<link href="../assets/images/menarini_icon.jpg" rel="icon" sizes="32x32">

			<link href="../assets/images/menarini_icon.jpg" rel="icon" sizes="192x192">

			<link href="../assets/images/menarini_icon.jpg" rel="apple-touch-icon-precomposed">

			<!-- Bootstrap y CSS -->

			<link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

			<link href="../assets/css/fonts.css" rel="stylesheet">

			<link href="../assets/css/index.css" rel="stylesheet">

			<!-- Jquery -->

			<script type="text/javascript" src="../assets/plugins/jquery/jquery-3.2.1.min.js"></script>

			<script type="text/javascript" src="../assets/plugins/jquery/jquery.validate.min.js"></script>

			<script type="text/javascript" src="../assets/plugins/jquery/jquery-ui.min.js"></script>

			<script type="text/javascript" src="../assets/plugins/datatable/jquery.dataTables.min.js"></script>

			<script type="text/javascript" src="../assets/plugins/datatable/dataTables.bootstrap.js"></script>

			<script type="text/javascript" src="../assets/plugins/datatable/dataTables.buttons.min.js"></script>

	 </head>

	 <body>

		<div class="container-fluid">

			<div class="row">

				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding">

					<div id="imagen_header">

						<img src="../assets/images/baner_check-in.jpg" alt="" width="100%">

					</div>

					<div id="imagen_header_bienvenido" style="display:none" >

						<img src="../assets/images/Web_Found.jpg" alt="" width="100%">

					</div>

					<div id="imagen_header_error" style="display:none">

						<img src="../assets/images/Web_Not-Found.jpg" alt="" width="100%">

					</div>

					<div id="imagen_header_registro" style="display:none">

						<img src="../assets/images/Web_Registro.jpg" alt="" width="100%">

					</div>

				</div>

			</div>



      <div class="row " id="formBusqueda"  >

        <div class="col-lg-offset-1 col-md-offset-1  col-sm-offset-1 col-xs-offset-1 col-lg-10  col-md-10  col-sm-10 col-xs-10 text-center ">

					<div id="div_contenedor_formulario">

						<div id="div_busqueda" class="div_parrafo_superior_formulario centrar">

							<p class="text_medium p_texto_morado">

								Ingrese su correo electrónico para verificar<br> si estas inscrito en la base de datos.

							</p>

							<br>

							<p class="text_medium p_texto_pequeno">

								De lo contrario, podrá registarse de inmediato!

							</p>

						</div>

						<div id="div_bienvenido" class="div_parrafo_superior_formulario centrar" style="display: none">

							<p class="text_medium p_texto_morado">

								El correo electrónico fué encontrado exitosamente.

							</p>

							<br>

							<p class="text_medium p_texto_morado" style="color: #00bf24">

								¡BIENVENIDO!

							</p>

						</div>

						<div id="div_error" class="div_parrafo_superior_formulario centrar" style="display: none">

							<p class="text_medium p_texto_morado">

								El correo electrónico no fué encontrado en nuestra base de datos.

							</p>

						</div>

            <form class="form-horizontal" id="frm" method="post" target="_self">

                <input class=" inputCheck" tabindex="1" type="email" name=correo id=correo  placeholder="Ingrese su correo">

              <div class="center-button">

                <input class="btn button-form" id="buscar" name=enviar tabindex=8 type=submit value=Buscar>

              </div>

            </form>

						<input class="btn button-form" id="continuar" style="background: #00bf24; display:none" type=button value=Continuar>

						<input class="btn button-form" id="regresar"  style="display:none" type=button value=Regresar>

						<input class="btn button-form" id="regisDatos" style="display:none" type=button value="Registrar datos" >

          </div>





        </div>

      </div>



      <div class="row" id="formRegistro" style="display:none">

        <div class="col-lg-offset-1 col-md-offset-1  col-sm-offset-1 col-xs-offset-1 col-lg-10  col-md-10  col-sm-10 col-xs-10 text-center ">

					<div id="div_contenedor_formulario">

						<div id="div_parrafo_superior_formulario" class="centrar">

							<p class="text_book p_texto_gris">

								Complete sus datos para asistir

							</p>

						</div>
						<form class="form-horizontal" method="post" id="form_register_express">
							<div class="col-lg-6  col-md-6  col-sm-6 col-xs-6">

	            	<input class="form-control input-form" type="text" tabindex="1" placeholder="NOMBRES:" name="nombre" id="nombre" />

							</div>

							<div class="col-lg-6  col-md-6  col-sm-6 col-xs-6">

	            	<input class="form-control input-form" type="text" tabindex="2" placeholder="PRIMER APELLIDO:" name="apellido_1" id="apellido_1"/>

							</div>

							<div class="col-lg-6  col-md-6  col-sm-6 col-xs-6">

								<input class="form-control input-form" type="text" tabindex="3" placeholder="SEGUNDO APELLIDO:" name="apellido_2" id="apellido_2"/>

							</div>

							<div class="col-lg-6  col-md-6  col-sm-6 col-xs-6">

			        	<input class="form-control input-form" type="text" tabindex="4" placeholder="ESPECIALIDAD:" name="especialidad" id="especialidad" />

							</div>

							<div class="col-lg-6  col-md-6  col-sm-6 col-xs-6">

								<input class="form-control input-form" type="text" tabindex="5" placeholder="No. COLEGIADO:" name="colegiado" id="colegiado" />

							</div>

							<div class="col-lg-6  col-md-6  col-sm-6 col-xs-6">

								<input class="form-control input-form" type="text" tabindex="6" placeholder="No. CELULAR:" name="celular" id="celular" />

							</div>

							<div class="col-lg-6  col-md-6  col-sm-6 col-xs-6">

								<input class="form-control input-form" type="text" tabindex="7" placeholder="EMAIL:" name="email" id="email" />

							</div>

							<div class="col-lg-6  col-md-6  col-sm-6 col-xs-6">

								<input class="form-control input-form" type="text" tabindex="8" placeholder="CIUDAD:" name="ciudad" id="ciudad" />

							</div>

							<div class="col-lg-6  col-md-6  col-sm-6 col-xs-6">

								<input class="form-control input-form" type="text" tabindex="9" placeholder="PAÍS:" name="pais" id="pais" />

							</div>

							<div class="col-lg-6  col-md-6  col-sm-6 col-xs-6">

								<input class="form-control input-form" type="text" tabindex="10" placeholder="DIRECCIÓN:" name="direccion" id="direccion" />

							</div>

							<div class="col-lg-6  col-md-6  col-sm-6 col-xs-6">

								<input class="form-control input-form" type="text" tabindex="11" placeholder="TELÉFONO:" name="telefono" id="telefono" onkeypress="doKey(arguments[0] || window.event)" maxlength="13" />

							</div>

								<input type="hidden" name="url" id="url" value="../controller/controller.php">

								<input type="hidden" name="url_gracias" id="url_gracias" value="../view/gracias_checkin.html"/>

								<input type="hidden" value="<?php echo $_SESSION['hash']; ?>" name="hash" id="hash">

								<input type="hidden" value="Con asistencia" name="asistencia" id="asistencia">

							<div class="col-lg-12  col-md-12  col-sm-12 col-xs-12">

		            <div class="center-button">

		            	<input type="checkbox" value="1" name="terminos" id="terminos" tabindex="12" class="ui-corner-all"><span class="span_terminos">Acepto las políticas de manejo de datos</span></center>

		            </div>

							</div>

							<div class="col-lg-12  col-md-12  col-sm-12 col-xs-12">

		            <div class="center-button">

		            	<button type="submit" class="btn button-form" style="background: #2c4c72" >Completar Registro</button>

									<div >

										<a id="volver" class="text_medium p_texto_morado centrar">< Regresar</a>

									</div>

		            </div>

							</div>

		        </form>

					</div>

        </div>

      </div>



      <div class="col-lg-offset-3 col-md-offset-3  col-sm-offset-3 col-xs-offset-3 col-lg-6  col-md-6  col-sm-6 col-xs-6">

        <div id="alertas" class="alert alert-warning alert-dismissable" style="display:none">

          <button type="button" class="close" data-dismiss="alert">&times;</button>

          <p id="text-alert"></p>

        </div>

      </div>

     <span style="float: left; font-size: 70px; visibility: hidden; display: none;" id="nombre_participante"></span>

	<div id="div_img_gafete" style="width: 100%; visibility: hidden; display: none;"></div>

    </div>

	<form role="form" method="post"  action="../controller/controller.php"  name="FormGafete" id="FormGafete" target="_blank">
		<input type="hidden" name="accion" id="accion" value="imprimir_gafete">
	</form>

   </body>

	 <!-- JS -->

	 <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	 <script src="../assets/js/validate.js"></script>



</html>
