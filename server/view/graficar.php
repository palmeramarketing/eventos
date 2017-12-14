<?php
session_start();
  if (isset($_GET["login"])){
    $_SESSION["login"] = explode(',', $_GET["login"]);
  }elseif (!isset($_SESSION["login"])) {
    header("Location: ../index.php");
    exit;
  }
?>
<!doctype html>
<HTML>
<head>
  <title>Eventos</title>
  <?php
    include "../items/static/header.php";
  ?>
</head>
<meta charset="utf-8"> 
<BODY>
<?php
    include "../items/static/navbar.php";
?>
<input type="hidden" id="id_event" value="<?php echo $_GET['id_event']; ?>" evento="<?php echo $_GET['evento']; ?>"
tipo="<?php echo $_GET['tipo']; ?>">
<div id="contenedor"></div>

    <!-- Importo el archivo Javascript de Highcharts directamente desde su servidor -->
<script>


</script>  
<script src="../plugins/highcharts/code/highcharts.js"></script>
<!-- <script src="../plugins/highcharts/code/exporting.js"></script> -->
<script type="text/javascript" src="../items/js/graficar.js"></script> 
</BODY>

</html>