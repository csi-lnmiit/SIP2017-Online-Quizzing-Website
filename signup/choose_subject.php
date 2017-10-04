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
</head>
 
<body>

	
	<header rel="stylesheet" type="text/css" href="style.css">
		<div class="wrapper">
			<h1>JEE Champs<span class="color"></span></h1>
			<nav>
				<ul>
					<li><a href="profile.php">Home</a></li>
					<li><a href="#">About Us</a></li>					
					<li><a href="sublist.php">Subject</a></li>	
					<li><a href="contact.php">Contact Us</a></li>
					<li><a href="#"></a></li>										
						<?php if(isset($_SESSION['username'])): ?>
							<b><li id="welcome"> WELCOME  <i><?php echo $_SESSION['username']; ?></i></li></b>
						<?php endif ?>
					<li><a href="#"></a></li>		
					<li id="logout"><a href="logout.php">Log Out</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<hr>
	<hr>
	
	<div class="Quiz">
		<p><center><font size="10" face="Arial" color="#FA8072">Welcome to Online Exam</font></center></p>
		<p><a href="sublist.php"><center><font size="5"><i class="fa fa-file"></i> Choose subject</font></center></a></p>
		<p><a href="paper.php"><center><font size="5"><i class="fa fa-bars"></i> JEE papers</font></center></a></p>
	</div>

	
</body>
</html>