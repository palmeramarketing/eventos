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
    <title>Registro</title>
	<?php
		include "../items/static/header.php";
	?>
	<link rel="stylesheet" type="text/css" href="http://<?php echo $_SERVER['HTTP_HOST']; ?>/eventos/server/items/css/inicio.css">
</head>
<body>
  <?php
    include "../items/static/navbar.php";
  ?>
  <input type="hidden" value="<?php echo $_SESSION['login']; ?>" id="login">
  <div class="container-fluid div_titulo">
    <div class="row">
      <div class="col-md-6 col-md-offset-1">
        <h1 class="display-1">Certificado</h1>
        <input type="hidden" name="id_user_logeado" id="id_user_logeado" value="<?php echo $_SESSION['id']; ?>">
        <input type="hidden" name="perfil_user_logeado" id="perfil_user_logeado" value="<?php echo $_SESSION['tipo']; ?>">
        <input type="hidden" name="id-evento" id="id-evento" value="<?php echo $_GET['id_event']; ?>">
        <input type="hidden" name="evento" id="evento" value="<?php echo $_GET['evento']; ?>">
      </div>
    </div>
  </div>
  <div class="container" id="registroCert" style="display: none">
    <div class="row">
    </div>
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <div class="panel panel-info">
          <div class="panel-heading">
            <center><h3 class="display-3">Registrar un certificado</h3></center>
          </div>
          <br>
          <div class="panel-body">
            <div class="col-md-10 col-lg-offset-2">
              <form role="form" class="form-horizontal" id="form_registrar_certificado" name="form_registrar_certificado">
                <div class="form-group">
                  <div class="col-xs-10 ">
                    <label for="nombre">
                      Evento
                    </label>
                    <select class="form-control" id="eventos_carga" name="eventos_carga" >
                      <option value="" >Selecciona un evento</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-10 ">
                    <label for="nombre">
        							Nombre del Certificado
        						</label>
        						<input type="text" name="nombre" id="nombre" class="form-control input_style">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-xs-10 ">
                    <label for="archivo_html">
        							Archivo HTML
        						</label>
                    <input type="file" name="archivo_html" id="archivo_html">
        						<input type="hidden" name="tipo" value="guardar_certificado">
                  </div>
                </div>
                <div class="form-group text-center">
                  <div class="col-xs-10 ">
                    <button type="submit" class="btn btn-success ">Registrar</button>
                  </div>
                </div>
              </form>
            </div>
            <div class="col-md-10 col-md-offset-1">
              <div class="mensaje-div">
                <strong class="mensaje-strong"></strong><span class="mensaje-span"></span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

 <div class="row">
    <div class="col-md-2 col-md-offset-9"><center><button type="button" id="nuevo_cert" class="btn btn-info">Nuevo Certificado</button></center></div>
  </div>

  <!-- /////////////////////////DATATABLE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
     <br>
    <div class="row">
      <div class="col-md-10 col-lg-offset-1">
        <table class="table table-striped" id="tabla_lista_cert" cellspacing="0" width="100%">
        <thead>
          <tr>
            <th>Id</th>
            <th>Evento</th>
            <th>Nombre</th>
            <th>Acciones</th>
          </tr>
        </thead>
      </table>
      </div>
    </div>
  </div>

  <form role="form" method="post"  action="../controller/certificado.php"  name="formCertificado" id="formCertificado" target="_blank">
    <input type="hidden" name="tipo" id="tipo" value="imprimir_certificado">
    <input type="hidden" name="id_certificado" id="id_certificado" value="">
  </form>
  <!-- /////////////////////////DATATABLE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->


    <script src="http://<?php echo $_SERVER['HTTP_HOST']; ?>/eventos/server/items/js/configurar_certificado.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
