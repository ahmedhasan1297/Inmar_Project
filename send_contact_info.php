<?php
		$email_u=$_POST['owner_email'];
		$data1=array();
		$conn = new mysqli('localhost', 'root', '', 'batabase');
		 
		 if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		 } 
		 $sql = "SELECT  name , phone, email_c FROM contacts where email_u='$email_u'";
		 $result = $conn->query($sql);
		 if ($result->num_rows > 0) 
		 {
		    
		    while($row = $result->fetch_assoc()) {
		        array_push($data1,array('name'=>$row['name'],'phone'=>$row['phone'],'email'=>$row['email_c']));
		    }
		 } else 
		 {
		    echo "0 results";
		 }
		 echo json_encode($data1);

?>