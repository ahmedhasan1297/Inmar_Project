<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "batabase";


   $email_u=$_POST['mail'];
   $password=$_POST['password'];


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT email_u,password FROM personal_info where username='$email_u'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      $email_u2=$row["email_u"];
      $password2=$row["password"];
        //echo "<br> id: ". $row["id"]. " - Name: ". $row["firstname"]. " " . $row["lastname"] . "<br>";
    }
} 
else {
    echo "0 results";
}
   if((($email_u==$email_u2)&&($password==$password2))&&(($email_u!="")&&($password!="")))
   {
       setcookie("test","x", time() + (86400 * 30), "/");
       setcookie("test2","$email_u2", time() + (86400 * 30), "/");
       //echo "<h1>This is fine</h1>";
       header("Location:homepage.html");
   }
   else
   {
         //echo "string1234";
         header("Location:login.html");
   }
?>