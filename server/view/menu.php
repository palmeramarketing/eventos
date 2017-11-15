<!DOCTYPE html>
<html>
<head>
	<title>Main</title>
	<?php
		include "../items/static/header.php";
	?>
	<link rel="stylesheet" href="http://<?php echo $_SERVER['HTTP_HOST']; ?>/eventos/server/items/css/menu.css">
</head>
<body>
	<header class="header_menu"><span class="glyphicon glyphicon-menu-hamburger mostrar"></span></header>
		<div class="content-menu">
			<li><span class="glyphicon glyphicon-home"></span><h4 class="text-menu-1">Inicio</h4></li>
			<li><span class="glyphicon glyphicon-asterisk"></span><h4 class="text-menu-2">Videos</h4></li>
			<li><span class="glyphicon glyphicon-minus"></span><h4 class="text-menu-3">Productos</h4></li>
			<li><span class="glyphicon glyphicon-th"></span><h4 class="text-menu-4">Galeria</h4></li>
			<li><span class="glyphicon glyphicon-ok"></span><h4 class="text-menu-5">Foro</h4></li>
			<li><span class="glyphicon glyphicon-remove"></span><h4 class="text-menu-6">Blog</h4></li>
			<li><span class="glyphicon glyphicon-signal"></span><h4 class="text-menu-7">Mensajes</h4></li>
			<li><span class="glyphicon glyphicon-file"></span><h4 class="text-menu-8">Contactos</h4></li>
			<li><span class="glyphicon glyphicon-road"></span><h4 class="text-menu-9">Nosotros</h4></li>
		</div>	
	<script src="http://<?php echo $_SERVER['HTTP_HOST']; ?>/eventos/server/items/js/menu.js" type="text/javascript"></script>
</body>
</html>