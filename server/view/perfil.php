<?php
session_start();
  if (isset($_REQUEST["login"])){
    $_SESSION["login"] = $_REQUEST["login"];
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
<link rel="stylesheet" type="text/css" href="../items/css/inicio.css">
<script type="text/javascript" src="../items/js/perfil.js"></script>
</body>
</html>