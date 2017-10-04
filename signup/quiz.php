<?php
$count=0;
session_start();
error_reporting(1);
include("database.php");
extract($_POST);
extract($_GET);
extract($_SESSION);
if(isset($sub_id) && isset($test_id))
{
$_SESSION['sid']=$sub_id;
$_SESSION['tid']=$test_id;
header("location:quiz.php");
}
if(!isset($_SESSION['sid']) || !isset($_SESSION['tid']))
{
	header("location: choose_subject.php");
}
?>

<!DOCTYPE HTML>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.css">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Online Quiz</title>
    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	
	<style>

	.colorgraph {
		height: 5px;
		border-tans: 0;
		border-radius: 5px;
		color: #c4e17f;
		text-align: center;
	}
	.colorgraph1 {
		color: #97FF00;
		text-align: center;
	}
	</style>

</head>

<body>

 <script type="text/javascript"
  src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=AM_HTMLorMML-full">
  </script>


<?php
include("head.php");
echo "<table style='width:50%' , align: 'center', border: 1px solid black;>";
	echo "<tr>";
	echo "<ul>";
	echo "<th><li><a href='?id=".'1'."'>".'1'." </a></li></th>";
	echo "<th><li><a href='?id=".'2'."'>".'2'." </a></li></th>";
	echo "<th><li><a href='?id=".'3'."'>".'3'." </a></li></th>"; 
	echo "<th><li><a href='?id=".'4'."'>".'4'." </a></li></th>"; 
	echo "<th><li><a href='?id=".'5'."'>".'5'." </a></li></th>"; 
	echo "</tr>";
	extract($GET_id);
	if($id==1)
	{
		$_SESSION['qn'] = 0;
	
	}
	if($id==2)
	{	
		$_SESSION['qn'] = 1;
	}
	if($id==3)
	{	
		$_SESSION['qn'] = 2;
	}
	if($id==4)
	{	
		$_SESSION['qn'] = 3;
	}
	if($id==5)
	{	
		$_SESSION['qn'] = 4;
	}	
echo "</ul>";
echo "</table>";

$query="select * from mst_question";
$count=0;
$rs=mysqli_query($db, "select * from mst_question where test_id=$tid") or die(mysqli_error());
		
if(!isset($_SESSION[qn])&&!isset($_SESSION[pn])&&!isset($_SESSION[rn])&&!isset($_SESSION[tn]))
{
	$_SESSION[qn]=0;
	$_SESSION[tn]=0;
	$_SESSION[rn]=1;
	$_SESSION[pn]=0;
	mysqli_query($db, "delete from mst_useranswer where sess_id='" . session_id() ."'") or die(mysqli_error());
	$_SESSION[trueans]=0;
}
else
{

		if($submit=='Next Question' && (isset($ans) || !isset($ans)))
		{
				mysqli_data_seek($rs,$_SESSION[qn]);
				$row= mysqli_fetch_row($rs);	
				mysqli_query($db, "insert into mst_useranswer(sess_id, test_id, que_des, ans1,ans2,ans3,ans4,true_ans,your_ans) values ('".session_id()."', $tid,'$row[2]','$row[3]','$row[4]','$row[5]', '$row[6]','$row[7]','$ans')") or die(mysqli_error());
				if($ans==$row[7])
				{
							$_SESSION[trueans]=$_SESSION[trueans]+1;
				}
				else if(isset($ans) && $ans!=$row[7])
				{
				}
				if($_SESSION[pn]<0 && isset($ans) && $_SESSION[trueans]>0)
				{
					mysqli_query($db, "UPDATE `mst_useranswer` SET `sess_id`='".session_id()."', `your_ans`=[`$ans`]");
					$_SESSION[trueans]=$_SESSION[trueans]-1;
					if($ans==$row[7])
				{
							$_SESSION[trueans]=$_SESSION[trueans]+1;
				}
				}
				$_SESSION[qn]=$_SESSION[qn]+1;
		}
		else if($submit=='Previous Question' && !isset($ans))
		{
				mysqli_data_seek($rs,$_SESSION[qn]);
				$row= mysqli_fetch_row($rs);	
				mysqli_query($db, "insert into mst_useranswer(sess_id, test_id, que_des, ans1,ans2,ans3,ans4,true_ans,your_ans) values ('".session_id()."', $tid,'$row[2]','$row[3]','$row[4]','$row[5]', '$row[6]','$row[7]','$ans')") or die(mysqli_error());	
				if($_SESSION[qn]==0)
					{
					echo "<h2 class='colorgraph';>You are in the beginning</h2>";
				}
				else
				{
				$_SESSION[qn]=$_SESSION[qn]-1;
				$_SESSION[pn]=$_SESSION[pn]-1;
		}
	//	mysql_query("UPDATE `mst_useranswer` SET `sess_id`='".session_id()."', `your_ans`=`$ans`");
		}
	/*	else if($submit=='Next Question' && !isset($ans))
		{
				mysql_data_seek($rs,$_SESSION[qn]);
				$row= mysql_fetch_row($rs);
				mysql_query("insert into mst_useranswer(sess_id, test_id, que_des, ans1,ans2,ans3,ans4,true_ans,your_ans) values ('".session_id()."', $tid,'$row[2]','$row[3]','$row[4]','$row[5]', '$row[6]','$row[7]','$ans')") or die(mysql_error());	
				$_SESSION[qn]=$_SESSION[qn]+1;
				$_SESSION[rn]=$_SESSION[rn]-1;
		}*/
		
		else if($submit=='Get Result' && (isset($ans) || !isset($ans)))
		{
				mysqli_data_seek($rs,$_SESSION[qn]);
				$row= mysqli_fetch_row($rs);	
				mysqli_query($db, "insert into mst_useranswer(sess_id, test_id, que_des, ans1,ans2,ans3,ans4,true_ans,your_ans) values ('".session_id()."', $tid,'$row[2]','$row[3]','$row[4]','$row[5]', '$row[6]','$row[7]','$ans')") or die(mysqli_error());
				if(isset($ans) && $ans==$row[7])
				{
							$_SESSION[trueans]=$_SESSION[trueans]+1;
				}
				if(isset($ans) && $ans!=$row[7])
				{
					$_SESSION[tn]=$_SESSION[tn]+1;
				}
				else
				{
					$_SESSION[qn]=$_SESSION[qn]+1;
				}

				
				
				echo "<h1 class=head1><p align=center> Result</p></h1>";
				echo "<p align=center class=tot><td>Total Question 5</td></p>";
				echo "<p align=center class=tans><td>True Answer   <td>".$_SESSION[trueans];
				echo "<h3 class=head1><a href=choose_subject.php> Take Quiz Again</a> </h3>";
				//echo "<tr class=fans><td>Wrong Answer<td> ";
				echo "</table>";
				mysqli_query($db, "insert into mst_result(login,test_id,test_date,score) values('$login',$tid,'".date("d/m/Y")."',$_SESSION[trueans])") or die(mysqli_error());
				unset($_SESSION[qn]);
				unset($_SESSION[pn]);
				unset($_SESSION[rn]);
				unset($_SESSION[tn]);
				unset($_SESSION[sid]);
				unset($_SESSION[tid]);
				unset($_SESSION[trueans]);
				exit;
		}
}


$rs=mysqli_query($db, "select * from mst_question where test_id=$tid") or die(mysqli_error());
// ORDER BY RAND()
if($_SESSION['qn']>mysqli_num_rows($rs)-1)
{
unset($_SESSION['qn']);
echo "<h2>Some Error Occured</h2>";
session_destroy();
echo "Please <a href=sublist.php> Start Again</a>";
exit;
}
mysqli_data_seek($rs,$_SESSION['qn']);
$row= mysqli_fetch_row($rs);
echo "<form name=myfm method=post action=quiz.php>";
echo "<table width=100%> <tr> <td width=30>&nbsp;<td> <table border=0>";
$n=$_SESSION['qn']+1;
echo "<tR><td><span class=style2>Ques ".  $n .": $row[2]</style>";
echo "<tr><td class=style8><input type=radio name=ans value=1>$row[3]";
echo "<tr><td class=style8><input type=radio name=ans value=2>$row[4]";
echo "<tr><td class=style8><input type=radio name=ans value=3>$row[5]";
echo "<tr><td class=style8><input type=radio name=ans value=4>$row[6]"; 

if($_SESSION['qn']<mysqli_num_rows($rs)-1)
{
echo "<tr><td><input type=submit name=submit value='Next Question'></form>";
//echo "<tr><td><input type=submit name=submit value='Previous Question'></form>";
}
else
	 "<tr><td><input type=submit name=submit value='Previous Question'></form>";
echo "<tr><td><input type=submit name=submit value='Get Result'></form>";
echo "</table></table>";

?>



</body>
</html>