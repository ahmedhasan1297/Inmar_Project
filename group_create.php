<?php
	
					$groupid=$_POST['gid'];
    				$groupname=$_POST['gname'];
    				$email_u=$_POST['owner_email'];	

    				$conn = new mysqli('localhost', 'root', '', 'batabase');
    				// Check connection
    				if ($conn->connect_error) 
    				{ 
       					die("Connection failed: " . $conn->connect_error);
    				} 
    				$sql = "insert into groups values('$groupname','$groupid','$email_u')";
    				$result = $conn->query($sql);
    				if($result==true)
    				{
    					echo "<h4>user created successfully</h4>";	
    				}	
    				else
    				{
    					echo "<h4>Registration failed</h4>";	
    				}	
?>