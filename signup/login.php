<?php include('server.php'); ?>

<!DOCTYPE html>
<html>
	<head>
		<title> USER LOGIN </title>
		<link rel = "stylesheet" type = "text/css" href = "style.css"> 
	</head>
	
	<body>
		<div class = "header">
			<h2>Login</h2>
		</div>

		<form method="POST" action = "login.php">
		<?php include('errors.php'); ?>
			<div class="input-group">
				<label> Username: </label>
				<input type = "text" name = "username" />
			</div>				
			<div class="input-group">
				<label> Password: </label>
				<input type = "password" name = "password" />
			</div>				
			<div class="input-group">
				<button type = "submit" name = "login" class="btn">Login</button>
			</div>
			<p>
				Not yet a member? <a href="register.php">Sign Up</a>
			</p>
		</form>
	</body>

</html>