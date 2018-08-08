<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Cliente</title>
	<link rel="stylesheet" href="plugins/bootstrap/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12">
				<fieldset class="col-xs-10 col-xs-offset-1 fieldset_index">
						<legend class="hidden-xs">
							<h3>Inicio de sesi&oacute;n</h3>
						</legend>
						<form role="form" class="form-horizontal" id="form-inicio-sesion" method="POST" action="view/inicio.php">
							<div class="form-group">
								<div class="col-xs-10 col-xs-offset-1">
									<input type="text" id="usuario" tabindex=1 placeholder="Usuario" class="form-control input_style">
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-10 col-xs-offset-1">
									<input type="password" id="password" tabindex=2 placeholder="Password" class="form-control col-xs-12 input_style">
								</div>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-info center-block" id="login">LogIn</button>
							</div>
								<div class="mensaje-div">
										<strong id="mensaje-strong"></strong><span id="mensaje-span"></span>
								</div>
						</form>
					</fieldset>
			</div>
		</div>
	</div>
</body>
</html>