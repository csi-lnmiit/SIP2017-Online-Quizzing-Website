<?php include("server.php"); ?>
<!DOCTYPE html>
<html>
	<head>
		<title>USER REGISTERATION</title>
		<link rel = "stylesheet" type = "text/css" href = "style.css"> 
	</head>
	
	<body>
		<div class = "header">
			<h2>Sign Up</h2>
		</div>
		
		<form method="POST" action="register.php">
		<?php include('errors.php'); ?>
			
			<div class="input-group">
				<label>Fullname</label>
				<input type="text" name="fullname" value = "<?php echo $fullname; ?>">
			</div>
			
			<div class="input-group">
				<label>Username</label>
				<input type="text" name="username" value = "<?php echo $username; ?>">
			</div>
			
			<div class="input-group">
				<label>E-mail</label>
				<input type="text" name="email" value="<?php echo $email; ?>">
			</div>
			
			<div class="input-group">
				<label>Password</label>
				<input type="password" name="password_1">
			</div>
			<div class="input-group">
				<label>Confirm Password</label>
				<input type="password" name="password_2">
			</div>
			<div class="input-group">
				<button type="submit" name="register" class="btn">Sign Up</button>
			</div>
			<p>
				Already a member? <a href="login.php">Sign In</a>
			</p>
		</form>
	</body>

</html>