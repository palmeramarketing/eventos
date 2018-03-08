<nav class="navbar navbar-default">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#"><img src="../items/images/logotipo.jpg" width="30" height="30" class="img-responsive" alt="C&W"></a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav botones_menu">
          <li><a href="inicio.php">Eventos</a></li>
          <li><a href="encuesta.php">Encuestas</a></li>
          <li><a href="participantes.php">Participantes</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $_SESSION['login']; ?> <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="../view/perfil.php">Ver perfil</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="../items/static/close_session.php" id="cerrar_session">Cerrar sesi&oacute;n</a></li>
            </ul>
          </li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
  <link rel="stylesheet" type="text/css" href="../items/css/navbar.css">
  <link rel="stylesheet" type="text/css" href="../items/css/global.css">
  <script src="../items/js/navbar.js" type="text/javascript" charset="utf-8"></script>