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
	
	<p><center><font size="10" face="Arial" color="#FA8072">Choose Topic</font></center></p>
	<?php 
		include("database.php");
		$rs = mysqli_query($db, "select * from mst_submath");
		echo "<table align=center>";
		while($row=mysqli_fetch_row($rs))
		{
			echo "<tr><p align = center><a href=test.php?sub_id=$row[0]><font size=5>$row[2]</font></a></p></tr>";
		}
		mysqli_free_result($rs);
		echo "</table>";?> 
	
</body>
</html>