<?php include("server.php"); ?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Home Page</title>
    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	<style>
		h1, li{
			text-align: center;
			padding: 10px;
		}
		form{
			padding 25px;
		}
	</style>
</head>
	
	<body>
		<div class = "header">
			<h2>Query</h2>
		</div>
		
		<form method="POST" action="contact.php">
		<?php include('errors.php'); ?>
			
			<div class="input-group">
				<label>Name</label>
				<input type="text" name="name">
			</div>
			
			<div class="input-group">
				<label>E-mail</label>
				<input type="text" name="email">
			</div>
			
			<div class="input-group">
				<label>Mobile number</label>
				<input type="text" name="InputMob">
			</div>
			
			<div class="input-group">
				<label>Message</label>
				<input type="text" name="InputMessage">
			</div>
			<div class="input-group">
				<button type="submit" name="submit" class="btn">Submit</button>
			</div>
			
		</form>
	</body>

</html>