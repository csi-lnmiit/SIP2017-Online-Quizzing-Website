<?php include('server.php'); ?>
<!DOCTYPE HTML>
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
		<h2>Change Password</h2>
	</div>
	
	<form method="POST" action="change_pass.php">
	<?php include("errors.php"); ?>
	<div class="input-group">
		<label>Current Password</label>
		<input type="password" name="password">
	</div>
	<div class="input-group">
		<label>New Password</label>
		<input type="password" name="passnew_1">
	</div>
	<div class="input-group">
		<label>Confirm Password</label>
		<input type="password" name="passnew_2">
	</div>
	<div class="input-group">
		<button type="submit" name="pass" class="btn">Submit</button>
	</div>
</body>
</html>