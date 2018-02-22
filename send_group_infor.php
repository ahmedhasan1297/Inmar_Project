<?php
		$groupid=$_POST['groupid'];
		$data1=array();
		$conn = new mysqli('localhost', 'root', '', 'batabase');
		 
		 if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		 } 
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