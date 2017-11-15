<!DOCTYPE html>
<html>
<head>
	<title>Main</title>
	<?php
		include "../items/static/header.php";
	?>
	<link rel="stylesheet" href="http://<?php echo $_SERVER['HTTP_HOST']; ?>/evento/server/items/css/main.css">
</head>
<body>
	<?php
		require_once "../items/static/menu.php"
	?>
	<div class="container">
		<div class="row">
			<div class="col-xs-10 col-xs-offset-1 main">
				<div class="table-responsive">
					<table class="table table-bordered">
						<caption>table title and/or explanatory text</caption>
						<thead>
							<tr>
								<th>header</th>
								<th>header</th>
								<th>header</th>
								<th>header</th>
								<th>header</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>data</td>
								<td>data</td>
								<td>data</td>
								<td>data</td>
								<td>data</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>