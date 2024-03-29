<?php

session_start();

if (isset($_POST["usuario"])) {
  $_SESSION["login"] = $_POST["usuario"];
  $_SESSION["id"] = $_POST["id_user"];
  $_SESSION["tipo"] = $_POST["tipo_user"];
}elseif (!isset($_SESSION["login"])) {
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
  <div class="container-fluid div_titulo">
    <div class="row">
      <div class="col-md-6 col-md-offset-1">
        <h1 class="display-1">Lista de Eventos</h1>
        <input type="hidden" name="id_user_logeado" id="id_user_logeado" value="<?php echo $_SESSION['id']; ?>">
        <input type="hidden" name="perfil_user_logeado" id="perfil_user_logeado" value="<?php echo $_SESSION['tipo']; ?>">
      </div>
    </div>
  </div>
  <!-- /////////////////////////FORMULARIO DE REGISTRO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
  <div class="container">
    <div class="row div_registrar" hidden>
      <div class="col-md-10 col-lg-offset-1">
    <div class="panel panel-info">
      <div class="panel-heading">
          <center><h3 class="display-3">Nuevo Evento</h3></center>
      </div>
    <br>
      <div class="panel-body">
        <div class="col-md-10 col-lg-offset-2">
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
            <div class="col-sm-offset-0 col-sm-10">
            <button type="submit" class="btn btn-info btn-block">Registrar</button>
            </div>
          </div>
          </form>
        </div>
        <div class="col-sm-12">
          <div class="mensaje-div">
            <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
          </div>
        </div>
      </div>
    </div>
    </div>
    </div>
  <!-- /////////////////////////FORMULARIO DE REGISTRO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->

    <div class="row">
      <div class="col-md-2 col-md-offset-9"><center><button type="button" class="btn btn-info nuevo_evento">Nuevo Evento</button></center></div>
    </div>

  <!-- /////////////////////////DATATABLE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
    <br>
    <div class="row">
      <div class="col-md-10 col-lg-offset-1">
        <table class="table table-striped" id="tabla_lista_eventos" cellspacing="0" width="100%">
        <thead>
          <tr>
            <th>Nombre</th>
            <th>Fecha</th>
            <th>Direcci&oacute;n</th>
            <th>Acciones</th>
          </tr>
        </thead>
      </table>
      <br>
      <button class="btn btn-link" id="actualizar_datatable">Actualizar</button>
      <button class="btn btn-link" id="destruir">Destruir</button>
      </div>
    </div>
  </div>
  <!-- /////////////////////////DATATABLE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->

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
<script type="text/javascript" src="../items/js/inicio.js"></script>
</body>
</html>
