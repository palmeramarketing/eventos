<!DOCTYPE html>
<html>
<head>
  <title>Participantes</title>
  <?php
    include "../items/static/header.php";
  ?>
</head>
<body>
  <?php
    include "../items/static/navbar.php";
  ?>
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
    <div class="col-md-10 col-lg-offset-1">
      <h1>Registro de Eventos</h1>
    </div>
    <div class="col-md-10 col-lg-offset-1">
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
        <button type="submit" class="btn btn-info">Registrar</button>
        <button type="button" class="btn btn-info boton_listar">Listar</button>
        </div>
      </div>
      </form>
    </div>
      </div>
    </div>
  <!-- /////////////////////////FORMULARIO DE REGISTRO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->


    <div class="row">
      <div class="col-md-2 col-md-offset-8"><button type="button" class="btn btn-info nuevo_participante">Nuevo Participante</button></div>
    </div>

  <!-- /////////////////////////DATATABLE\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
    <br>
    <div class="row">
      <div class="col-md-10 col-lg-offset-1">
        <table class="table table-striped" id="tabla_lista_participantes" cellspacing="0" width="100%">
        <thead>
          <tr>
            <th>Correo</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Direcci&oacute;n</th>
            <th>tel&eacute;fono</th>
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
          <h4 class="modal-title">Modifica Participante</h4>
        </div>
        <div class="mensaje-div">
            <strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
        </div>
        <div class="modal-body">
          <form role="form" class="form-horizontal" id="form_modifi_participante">
            <div class="form-group">
              <div class="col-xs-10 col-xs-offset-1">
                <input type="text" id="mod_email_participante" name="mod_email_participante" tabindex=1 placeholder="Correo" class="form-control input_style">
              </div>
            </div>
            <div class="form-group">
              <div class="col-xs-10 col-xs-offset-1">
                <input type="text" id="mod_nombre_participante" name="mod_nombre_participante" tabindex=2 placeholder="Nombre" class="form-control col-xs-12 input_style">
              </div>
            </div>
            <div class="form-group">
              <div class="col-xs-10 col-xs-offset-1">
                <input type="text" id="mod_apellido_participante" name="mod_apellido_participante" tabindex=3 placeholder="Apellido" class="form-control input_style">
              </div>
            </div>
            <div class="form-group">
              <div class="col-xs-10 col-xs-offset-1">
                <input type="text" id="mod_direccion_participante" name="mod_direccion_participante" tabindex=4 placeholder="Direcci&oacute;n" class="form-control input_style">
              </div>
            </div>
            <div class="form-group">
              <div class="col-xs-10 col-xs-offset-1">
                <input type="text" id="mod_telefono_participante" name="mod_telefono_participante" tabindex=5 placeholder="Tel&eacute;fono" class="form-control input_style">
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

<script type="text/javascript" src="../items/js/participantes.js"></script>
</body>
</html>