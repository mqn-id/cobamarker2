<?php

$error=''; 

include "./db/connection.php";
if(isset($_POST['submit']))
{				
	$username	= $_POST['username'];
	$password	= $_POST['password'];
	$level		= $_POST['level'];
					
	$query = mysqli_query($connection, "SELECT * FROM pengguna WHERE username='$username' AND password='$password'");
	if(mysqli_num_rows($query) == 0)
	{
		$error = "Username or Password is invalid";
	}
	else
	{
		$row = mysqli_fetch_assoc($query);
		$_SESSION['username']=$row['username'];
		$_SESSION['level'] = $row['level'];
		
		if($row['level'] == "Superadmin" && $level=="1")
		{
			
			header("Location: superadmin.php");
		}
		
		else if($row['level'] == "Admin" && $level=="3")
		{
			
			header("Location: admin.php");
		}
		else
		{
			$error = "Failed Login";
		}
	}
}

			
?>