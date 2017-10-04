<?php include("server.php");?>
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
	</style>
</head>

<body>
<header rel="stylesheet" type="text/css" href="style.css">
		<div class="wrapper">
			<h1>JEE Champs<span class="color"></span></h1>
			<nav>
				<ul>
					<li><a href="profile.php">Home</a></li>
						<?php if(isset($_SESSION['username'])): ?>
							<b><li id="welcome"> WELCOME  <i><?php echo $_SESSION['username']; ?></i></li></b>
						<?php endif ?>
					<li id="logout"><a href="logout.php">Log Out</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<hr>
	<hr>
	
	<div class="list">
	<p><center><font size="10" face="Arial" color="#FA8072">Choose Subject</font></center></p>
		<ul>
			<li><font size="5" color="#FA8072"><a href="math.php">Mathematics</a></font></li>      
			<li><font size="5" color="#FA8072"><a href="phy.php">Physics</a></font></li>
			<li><font size="5" color="#FA8072"><a href="chem.php">Chemistry</a></font></li>
		</ul> 
	</div>
	
</body>
</html>
	
	