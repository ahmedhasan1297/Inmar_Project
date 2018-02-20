
    <?php
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "batabase";

		// Create connection
		$conn = new mysqli($servername, $username, $password, $dbname);
		// Check connection
		if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		} 
			$firstname=$_POST['fname'];
			$lastname=$_POST['lname'];
			$mobileno=$_POST['mobileno'];
			$mail=$_POST['mail'];
			$pass=$_POST['pass'];
			$gender=$_POST['gender'];
			$adhar=$_POST['adhar'];


		$sql = "INSERT INTO personal_info(firstname,lastname,phone,adhar,email_u,password,gender ) VALUES ('$firstname', '$lastname', '$mobileno','$adhar','$mail','$pass','$gender')";


		if ($conn->query($sql) === TRUE) {
		    echo "New record created successfully";
		    echo "<a href='login.html'>go to loginpage</a><br>";
		    echo "<a href='signup.html'>go to homepage</a>";
		}
		else {
                echo "Error: " . $sql . "<br>" . $conn->error;
        }

            $conn->close();

	?>
	
