<?php
$db=mysqli_connect("localhost","root","", "math") or die("Could not Connect My Sql");
mysqli_select_db($db, "math")  or die("Could connect to Database");
?>