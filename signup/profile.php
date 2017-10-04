<?php include('server.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" type="text/css" href="style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
					<li><a href="#">About Us</a></li>					
					<li><a href="sublist.php">Subjects</a></li>
					<li><a href="contact.php">Contact Us</a></li>
					<li><a href ="change_pass.php" >New password </a></li>
						<?php if(isset($_SESSION['username'])): ?>
							<b><li id="welcome"> WELCOME  <i><?php echo $_SESSION['username']; ?></i></li></b>
						<?php endif ?>							
					<li><a href="#"></a></li>
					<li id="logout"><a href="logout.php">Log Out</a></li>
				</ul>
			</nav>
		</div>
	</header>
	
	<div id="hero-image">
		<div class="wrapper">
			<h2><strong>Online Quizzing</strong><br/>
				Practice quizzes and Be a master.</h2>
			<a href="choose_subject.php" class="button-1">Get Started</a>
		</div>
	</div>
	
	
	<footer>
		<div class="wrapper">
			<div id="footer-info">
				<p>Copyright 2017 CompanyName. All rights reserved.</p>
				<p><a href="#">Terms of Service</a> I <a href="#">Privacy</a></p>
			</div>
			<div id="footer-links">
				<ul>
					<li><h5>LNMIIT</h5></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">location</a></li>
					<li><a href="#">+91 XXX-XXX-XXXX</a></li>
					<li><a href="#">http://mystudenttalks.com</a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</footer>
		
</body>
</html>