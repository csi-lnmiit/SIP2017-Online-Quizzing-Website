<?php
	session_start();
	$fullname="";
	$username="";
	$email="";
	$query="";
	$InputName="";
	$InputMob ="";
	$InputMessage="";
	$errors= array();
	
	include("database.php");
	
	
	//if register button is clicked
	if(isset($_POST['register'])) 
	{
			$fullname = mysqli_real_escape_string($db, $_POST['fullname']);
			$username = mysqli_real_escape_string($db, $_POST['username']);
			$email = mysqli_real_escape_string($db, $_POST['email']);
			$password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
			$password_2= mysqli_real_escape_string($db, $_POST['password_2']);
	
	
		//ensure that form fields are filled properly
		
		if(empty($fullname)){
			array_push($errors, "Fullname is required");
		}
	
		if(empty($username)){
			array_push($errors, "Username is required");
		}
    
		if(empty($email)){
			array_push($errors, "Email is required");
		}
	
		if(empty($password_1)){
			array_push($errors, "Password is required");
		}
	
		if($password_1 != $password_2){
			array_push($errors, "The passwords do not match! Enter password again");
		}
	
		if(!empty($username)){
			$t = "SELECT * FROM users WHERE username='$username'";
			$r = mysqli_query($db, $t);
			$num = mysqli_num_rows($r);
			if($num>0){
				array_push($errors, "Sorry! Username already exists");
			}
		}

			
		//if there are no errors, save user to database
		if(count($errors)==0){
			//$password = md5($password_1);
			$sql = "INSERT INTO users(fullname, username, email, password) VALUES ('$fullname', '$username', '$email', '$password_1')";
			mysqli_query($db, $sql);
			$_SESSION['username'] = $username;
			header('location: profile.php');
		}
	}
	
	//login user from login page
	if(isset($_POST['login'])){
		$username = mysqli_real_escape_string($db, $_POST['username']);
		$password = mysqli_real_escape_string($db, $_POST['password']);
		if(empty($username)){
			array_push($errors, "Username is required");
		}
		if(empty($password)){
			array_push($errors, "Password is required");
		}
		if(count($errors)==0)
		{
			//$password = md5($password);
			$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
			$result = mysqli_query($db, $query);
			if(mysqli_num_rows($result)==1)
			{
				$_SESSION['username'] = $username;
				header('location: profile.php');
			}
			else
			{
				array_push($errors, "Wrong username/password");
			}
		}
		
	}
	
	

	if(isset($_POST['submit'])) 
	{
		$email = mysqli_real_escape_string($db, $_POST['email']);
		$query = mysqli_real_escape_string($db, $_POST['query']);
		$username = $_SESSION['username'];
		if(empty($email)){
			array_push($errors, "Email is required");
		}
		if(empty($username)){
			array_push($errors, "Username is required");
		}
		
		if(count($errors)==0){
			$sql = "INSERT INTO contact(username, email, query) VALUES ('$username', '$email', '$query')";
			mysqli_query($db, $sql);
			header('location: profile.php');
		}
	}
	
	if(isset($_POST['pass'])){
		
		$errors= array();
		$password = mysqli_real_escape_string($db, $_POST['password']);
		$passnew_1 = mysqli_real_escape_string($db, $_POST['passnew_1']);
		$passnew_2 = mysqli_real_escape_string($db, $_POST['passnew_2']);
		$username = $_SESSION['username'];		

		if(empty($password)){
			array_push($errors, "Current password is required");
		}
		if(empty($passnew_1)){
			array_push($errors, "New password is required");
		}
		if($passnew_1 != $passnew_2){
			array_push($errors, "The new passwords do not match! Enter password again");
		}

		if(count($errors)==0){
			//$password = md5($passnew_1);
			$sql = "UPDATE users SET password = '$passnew_1' WHERE username ='$username'";
			mysqli_query($db, $sql);
			header('location: profile.php');
		}
	}
	
	
	if(isset($_POST['contact']) )
	{
		$errors= array();
		$InputName = mysqli_real_escape_string($db, $_POST['InputName']);
		$email = mysqli_real_escape_string($db, $_POST['email']);
		$InputMob = mysqli_real_escape_string($db, $_POST['InputMob']);
		$InputMessage = mysqli_real_escape_string($db, $_POST['InputMessage']);
		
		if(empty($InputName)){
			array_push($errors, "Name is required");
		}
		if(empty($email)){
			array_push($errors, "Email is required");
		}
		if(empty($InputMob)){
			array_push($errors, "Mob is required");
		}
		if(empty($InputMessage)){
			array_push($errors, "Message is required");
		}
		
		if(count($errors)==0){
			$sql = "INSERT INTO contact_us(InputName, email, InputMob, InputMessage) VALUES ('$InputName','$email','$InputMob','$InputMessage')";
			mysqli_query($db, $sql);
			header('location:profile.php');
		}
	}
        	
?>


