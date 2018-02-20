<?php

$servername = "localhost";
$username = "root";
$password_ser = "";
$dbname = "batabase";


   $email_u=$_POST['mail'];
   $password=$_POST['pass'];


// Create connection
$conn = new mysqli($servername, $username, $password_ser, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT email_u,password FROM personal_info where email_u='example7@inmar.com' ";
$result = $conn->query($sql);

 if ($result->num_rows == 1) {
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