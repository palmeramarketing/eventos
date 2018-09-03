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
  <title>Cuestionario</title>
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
        <h1 class="display-1">Lista de Encuestas</h1>
        <input type="hidden" name="id_user_logeado" id="id_user_logeado" value="<?php echo $_SESSION['id']; ?>">
        <input type="hidden" name="perfil_user_logeado" id="perfil_user_logeado" value="<?php echo $_SESSION['tipo']; ?>">
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-md-10 col-lg-offset-1">
        <select class="form-control" id="eventos_carga">
        <option>Selecciona un evento</option>
      </select>
      </div>
    </div>
    <br>

  <!-- /////////////////////////FORMULARIO DE REGISTRO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
    <div class="row div_registrar" hidden>
      <div class="col-md-10 col-lg-offset-1">
        <div class="mensaje-div">
            <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
        </div>
    <div class="panel panel-info">
      <div class="panel-heading">
      <center><h3 class="display-3">Nueva Pregunta</h3></center>
    </div>
    <br>
  <div class="panel-body">
    <div class="col-md-10 col-lg-offset-2">
    <form class="form-horizontal" id="form_registro_pregunta">
      <div class="form-group">
        <div class="col-sm-10">
        <input type="text" class="form-control" id="crear_pregunta" tabindex=1 placeholder="Pregunta" name="crear_pregunta">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-6">
          <select class="form-control" id="tipo_pregunta" tabindex=1>
            <option value="0">Selecciona un tipo de pregunta</option>
            <option value="simple">Selecci&oacute;n simple</option>
            <option value="multi">Selecci&oacute;n m&uacute;ltiple</option>
            <option value="libre">Respuesta libre</option>
          </select>
        </div>
      </div>
      <div class='form-group sistema_opciones' id='div-opcion-1' hidden>
        <div class='col-xs-8 col-xs-offset-1'>
          <input type='text' id='opcion-1' name='opcion-1' tabindex=2 placeholder='Opci&oacute;n' class='form-control input_style'>
        </div>
      </div>
      <div class='form-group sistema_opciones' id='div-opcion-2' hidden>
        <div class='col-xs-8 col-xs-offset-1'>
          <input type='text' id='opcion-2' name='opcion-2' tabindex=3 placeholder='Opci&oacute;n' class='form-control input_style'>
        </div>
      </div>
      <div class="form-group div_agregar_respuesta sistema_opciones" hidden>
        <div class="col-md-10 col-md-offset-1">
          <button type="button" class="btn btn-link" id="agregar_respuesta">Agregar opci&oacute;n</button>
        </div>
      </div>
      <div class="form-group textarea_opcion" hidden>
        <div class="col-md-10 col-md-offset-0">
          <textarea class="form-control" rows="5" name="respuesta_libre" placeholder="En respuesta libre estar&aacute; habilitada un cuadro de texto como &eacute;ste." style="width: 600px;" disabled></textarea>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-0 col-sm-10">
          <button type="submit" class="btn btn-info btn-block">Agregar</button>
        </div>
      </div>
      </form>
    </div>
    </div>
  </div>

      </div>
    </div>
  <!-- /////////////////////////FORMULARIO DE REGISTRO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->

    <div class="row">
      <div class="col-md-2 col-md-offset-8"><button type="button" class="btn btn-info nueva_pregunta">Crear pregunta</button></div>
    </div>

  <!-- /////////////////////////DATATABLE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
    <br>
    <div class="row">
      <div class="col-md-10 col-lg-offset-1">
        <table class="table table-striped" id="tabla_lista_preguntas" cellspacing="0" width="100%">
        <thead>
          <tr>
            <th>Pregunta</th>
            <th>Tipo</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
        </tbody>
      </table>
      </div>
    </div>
  <!-- /////////////////////////DATATABLE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->

  </div>

  <!-- /////////////////////////MODAL MODIFICAR EVENTO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
  <!-- Modal -->
  <div class="modal fade cerrar_modal" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close cerrar_modal" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Detalles</h4>
        </div>
        <div class="mensaje-div">
            <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
        </div>
        <div class="modal-body">
          <form role="form" class="form-horizontal" id="form_modifi_preguntas">
            <div class="form-group div_titulo">
              <div class="col-xs-10 col-xs-offset-1">
                <h3 id="mod_pregunta"></h3>
                <!-- <input type="text" id="mod_pregunta" name="mod_pregunta" tabindex=1 placeholder="Pregunta" class="form-control input_style"> -->
              </div>
            </div>
            <div class="form-group tipo_pregunta">
              <div class="col-xs-10 col-xs-offset-1">
                <h4><span id="mod_tipo_pregunta"></span></h4>
                <!-- <input type="text" id="mod_tipo_pregunta" name="mod_tipo_pregunta" tabindex=2 placeholder="Tipo de pregunta" class="form-control col-xs-12 input_style"> -->
              </div>
            </div>

            <!-- <div class="form-group">
              <button type="submit" class="btn btn-primary center-block">Guardar Cambios</button>
            </div> -->
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default cerrar_modal" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>
  <!-- /////////////////////////MODAL MODIFICAR EVENTO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->

<script type="text/javascript" src="../items/js/encuesta.js"></script>
<link rel="stylesheet" type="text/css" href="../items/css/encuesta.css">
</body>
</html>
