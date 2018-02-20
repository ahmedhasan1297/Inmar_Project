<?php
		$email_u=$_POST['owner_email'];
		$data2=array();
		$conn = new mysqli('localhost', 'root', '', 'batabase');
		 
		 if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		 } 
		 $sql = "SELECT  groupname,groupid FROM groups where email_u='$email_u'";
		 $result = $conn->query($sql);
		 if ($result->num_rows > 0) 
		 {
		    
		    while($row = $result->fetch_assoc()) {
		        array_push($data2,array('groupname'=>$row['groupname'],'groupid'=>$row['groupid']));
		    }
		 } else 
		 {
		    echo "0 results";
		 }
		 echo json_encode($data2);

?>