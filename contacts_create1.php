<?php
		$cname=$_POST['cname'];
		$cphone=$_POST['cphone'];
		$email_c=$_POST['cmail'];
		$email_u=$_POST['email_u'];
		//$groupid=$_POST['groupid'];


		//$data1=array();
		$conn = new mysqli('localhost', 'root', '', 'batabase');
		 
		 if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		 } 



	$sql="INSERT into contacts (name,phone,email_c,email_u) values ('$cname','$cphone','$email_c','$email_u')";
	if($conn->query($sql))
	{
      echo "successfull";//header('location:contacts.html');
	}
    else
    {
   	  echo "failed to enter the data" .$conn->error ;
    }
	
?>