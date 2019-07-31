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
  <title>Evento</title>
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
        <h1 class="display-1">Evento</h1>
        <input type="hidden" name="id_user_logeado" id="id_user_logeado" value="<?php echo $_SESSION['id']; ?>">
        <input type="hidden" name="perfil_user_logeado" id="perfil_user_logeado" value="<?php echo $_SESSION['tipo']; ?>">
        <input type="hidden" name="id_evento" id="id_evento" value="<?php echo $_GET['id_evento']; ?>">
      </div>
    </div>
  </div>

  <div class="container-fluid">
      <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
        <div class="panel panel-default">
          <div class="panel-heading">Encuestas</div>
          <div class="div_container panel-body" id="div_container_encuestas">
          </div>
        </div>
      </div>
      <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
        <div class="panel panel-default">
          <div class="panel-heading">Facilitadores</div>
          <div class="div_container panel-body" id="div_container_facilitadores">
          </div>
        </div>
      </div>
  </div>

<script type="text/javascript" src="../items/js/eventos.js"></script>
<link rel="stylesheet" type="text/css" href="../items/css/eventos.css">
</body>
</html>
