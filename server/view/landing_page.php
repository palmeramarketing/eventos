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
  <title>Landing Page</title>
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
        <h1 class="display-1">Lista Landing Page</h1>
        <input type="hidden" name="id_user_logeado" id="id_user_logeado" value="<?php echo $_SESSION['id']; ?>">
        <input type="hidden" name="perfil_user_logeado" id="perfil_user_logeado" value="<?php echo $_SESSION['tipo']; ?>">
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-lg-10 col-lg-offset-1 col-md-10 col-lg-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1">
        <select class="form-control" id="eventos_carga">
        <option>Selecciona un evento</option>
      </select>
      </div>
    </div>
    <br>
  <!-- /////////////////////////FORMULARIO DE REGISTRO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
    <div class="row div_registrar" hidden>
      <div class="col-lg-10 col-lg-offset-1 col-md-10 col-lg-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1">
        <div class="mensaje-div">
            <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
        </div>
        <div class="panel panel-info">
          <div class="panel-heading">
            <center><h3 class="display-3">Nuevo Langing Page</h3></center>
          </div>
          <br>
          <div class="panel-body">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <form class="form-horizontal" id="form_registro_landing">
              <div class="form-group">
                <div class="col-lg-10 col-lg-offset-1 col-md-10 col-lg-offset-1 col-sm-10 col-sm-offset-1 col-xs-12 col-xs-offset-0">
                  <input type="text" class="form-control" id="nombre_landing" tabindex=1 placeholder="Nombre Landing Page" name="nombre_landing">
                </div>
              </div>
              <div class="form-group">
                <div class="col-lg-10 col-lg-offset-1 col-md-10 col-lg-offset-1 col-sm-10 col-sm-offset-1 col-xs-12 col-xs-offset-0">
                  <label for="archivo_html">
                    Archivo HTML
                  </label>
                  <input type="file" name="archivo_html" id="archivo_html">
                  <input type="hidden" name="tipo" value="guardar_landing">
                </div>
              </div>
              <div class="form-group">
                <div class="col-lg-10 col-lg-offset-1 col-md-10 col-lg-offset-1 col-sm-10 col-sm-offset-1 col-xs-12 col-xs-offset-0">
                  <button type="submit" class="btn btn-info">Registrar</button>
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
      <div class="col-md-2 col-md-offset-8"><button type="button" class="btn btn-info nuevo_landing">Nuevo Langing Page</button></div>
    </div>

  <!-- /////////////////////////DATATABLE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
    <br>
    <div class="row">
      <div class="col-md-10 col-lg-offset-1">
        <table class="table table-striped" id="tabla_lista_landing_page" cellspacing="0" width="100%">
          <thead>
            <tr>
              <th>Id</th>
              <th>Nombre</th>
              <th>Hash</th>
              <th>Estatus</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
          </tbody>
        </table>
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
          <h4 class="modal-title">Modifica Landing Page</h4>
        </div>
        <div class="mensaje-div">
            <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
        </div>
        <div class="modal-body">
          <form role="form" class="form-horizontal" id="form_modifi_landing">
            <div class="form-group">
              <div class="col-xs-10 col-xs-offset-1">
                <input type="text" class="form-control" id="mod_nombre_landing" tabindex=1 placeholder="Nombre Landing Page" name="mod_nombre_landing">
              </div>
            </div>
            <div class="form-group">
              <div class="col-xs-10 col-xs-offset-1">
                <label for="mod_archivo_html">
                  Archivo HTML
                </label>
                <input type="file" name="mod_archivo_html" id="mod_archivo_html">
                <input type="hidden" name="tipo" value="modificar_landing">
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

  <!-- /////////////////////////MODAL GENERADOR LINK LANDING PAGE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
  <!-- Modal -->
  <div class="modal fade" id="ModalLink" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Enlace Landing Page</h4>
        </div>
        <div class="mensaje-div">
            <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
        </div>
        <div class="modal-body">
          <div class='form-group' id='div_group_generar_link'>
            <div class="row">
              <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1">
                <div class='input-group'>
                  <input type='text' id='link_input_landing' name='link_input_landing' tabindex="1" class='form-control input_style'>
                  <span class='input-group-addon' style='cursor: pointer;' onclick='copy_link()'>Copiar</span>
                </div>
              </div>
            </div>
            <br>
            <div class="row">
              <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-10 col-xs-offset-1">
                <a href="http://localhost/eventos/landings/view/index.php" class="btn btn-success center-block" target="_blank" id="vinculo_landing">Ir al Landing</a>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default cerrar_modal" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>
  <!-- /////////////////////////MODAL GENERADOR LINK LANDING PAGE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->

<script type="text/javascript" src="../items/js/landing_page.js"></script>
</body>
</html>
