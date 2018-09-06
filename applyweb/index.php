<?php
	session_start();
  if (isset($_REQUEST["hash"])){
    $_SESSION["hash"] = $_REQUEST["hash"];
  } elseif (!isset($_SESSION["hash"])) {
    header("Location: login.html");
    exit;
  }
?>

<!DOCTYPE html>

<html>

<head>

	<title>Inicio Cuestionario</title>



	<?php include 'items/static/header.php';?>



</head>

<body>

	<div class="container-fluid">

		<div class="row">

			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 quitar_padding">

				<div id="imagen_header">

					<img src="items/images/baner_encuesta.jpg" alt="" width="100%">

				</div>

			</div>

		</div>

		<div class="row">

			<div class="col-lg-offset-1 col-md-offset-1  col-sm-offset-1 col-xs-offset-1 col-lg-10  col-md-10  col-sm-10 col-xs-10 text-center ">

				<div id="div_contenedor_formulario">

					<div class="div_parrafo_superior_formulario centrar" >

						<p class="text_medium p_texto_gris">

							Bienvenido a el sistema de encuestas.

						</p>

					</div>

					<form role="form" class="form-horizontal" id="form-inicio-sesion" method="POST" action="view/index.php">

						<input type="hidden" id="hash" value="<?php echo $_SESSION['hash']; ?>" name="hash">

						<input type="text" id="email" name="email" tabindex=1 placeholder="EMAIL" class="inputCheck">

						<div class="center-button">

							<button type="submit" class="btn button-form" id="comenzar">Enviar</button>

						</div>

					</form>

					<div class="mensaje-div">

						<strong id="mensaje-strong"></strong><span id="mensaje-span"></span>

					</div>

				</div>

			</div>

		</div>

	</div>

	<script type="text/javascript" src="items/static/funciones_constantes.js"></script>

</body>

</html>
