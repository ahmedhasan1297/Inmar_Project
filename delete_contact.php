<?php
		$groupid=$_POST['groupid'];
		$name=$_POST['name'];
		$phone=$_POST['phone'];
		$email_c=$_POST['email_c'];
		$email_u=$_POST['email_u'];
		$data1=array();
		$conn = new mysqli('localhost', 'root', '', 'batabase');
		 
		 if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		 } 
		 $sql1 = "INSERT INTO contacts VALUES ('$name', '$phone', '$email_c','$email_u','NULL') where groupid='$groupid' and phone='$phone'";
		 $result = $conn->query($sql1);

		 $sql = "SELECT  * FROM contacts where groupid='$groupid'";
		 $result = $conn->query($sql);
		 if ($result->num_rows > 0) 
		 {
		    
		    while($row = $result->fetch_assoc()) {
		        array_push($data1,array('name'=>$row['name'],'phone'=>$row['phone'],'email_c'=>$row['email_c'],'email_u'=>$row['email_u'],'groupid'=>$row['groupid']));
		    }
		 } else 
		 {
		    echo "0 results";
		 }
		 echo json_encode($data1);

?>