<?php
session_start();
  if (!isset($_SESSION["login"])) {
    header("Location: ../index.php");
    exit;
  }
?>
<!DOCTYPE html>
<html>
<head>
  <title>Inicio</title>
  <?php
    include "../items/static/header.php";
  ?>
</head>
<body>
  <?php
    include "../items/static/navbar.php";
  ?>
  <input type="hidden" value="<?php echo $_SESSION['login']; ?>" id="login">
  <div class="container-fluid div_titulo">
    <div class="row">
      <div class="col-md-6 col-md-offset-1">
        <h1 class="display-1">Perfil</h1>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <div class="mensaje-div">
            <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <div class="panel panel-info">
          <div class="panel-heading">
            <center><h3 class="display-3">Perfil de Usuario</h3></center>
          </div>
          <br>
          <div class="panel-body">
            <div class="col-md-10 col-lg-offset-2">
            <form class="form-horizontal" id="form_registro_pregunta">
              <div class='form-group sistema_opciones' id='div-opcion-1'>
                <div class='col-xs-8 col-xs-offset-1'>
                  <center><h3 id="email-show"></h3></center>
                </div>
              </div>
              <div class='form-group sistema_opciones' id='div-opcion-1'>
                <div class='col-xs-8 col-xs-offset-1'>
                  <h4>Nombre de Usuario: </h4>
                  <span id="usuario-show" style="margin-left: 30px;"></span>
                  <input type='text' id='opcion-1' name='opcion-1' tabindex=2 placeholder='Opci&oacute;n' class='form-control input_style' style="display: none;">
                </div>
              </div>
              <div class='form-group sistema_opciones' id='div-opcion-1'>
                <div class='col-xs-8 col-xs-offset-1'>
                  <h4>Tipo de Usuario: </h4>
                  <span id="tipo-show" style="margin-left: 30px;"></span>
                  <input type='text' id='opcion-1' name='opcion-1' tabindex=2 placeholder='Opci&oacute;n' class='form-control input_style' style="display: none;">
                </div>
              </div>
              <div class='form-group sistema_opciones' id='div-opcion-1'>
                <div class='col-xs-8 col-xs-offset-1'>
                  <button class="btn btn-danger" style="float: right;">Eliminar perfil</button>
                </div>
              </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- /////////////////////////MODAL MODIFICAR EVENTO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modifica tu Evento</h4>
        </div>
        <div class="modal-body">
        <div class="mensaje-div">
            <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
        </div>
          <form role="form" class="form-horizontal" id="form_modifi_evento">
            <div class="form-group">
              <div class="col-xs-10 col-xs-offset-1">
                <input type="text" id="mod_nombre_evento" name="mod_nombre_evento" tabindex=1 placeholder="Nombre del Evento" class="form-control input_style">
              </div>
            </div>
            <div class="form-group">
              <div class="col-xs-10 col-xs-offset-1 input-group date div_datepicker">
                <input type="text" id="mod_fecha_evento" name="mod_fecha_evento" tabindex=2 placeholder="Fecha del Evento" class="form-control col-xs-12 input_style"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
              </div>
            </div>
            <div class="form-group">
              <div class="col-xs-10 col-xs-offset-1">
                <input type="text" id="mod_direccion_evento" name="mod_direccion_evento" tabindex=3 placeholder="Direcci&oacute;n del Evento" class="form-control input_style">
              </div>
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary center-block">Guardar Cambios</button>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default cerrar_modal" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>
  <!-- /////////////////////////MODAL MODIFICAR EVENTO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
<link rel="stylesheet" type="text/css" href="../items/css/inicio.css">
<script type="text/javascript" src="../items/js/perfil.js"></script>
</body>
</html>
