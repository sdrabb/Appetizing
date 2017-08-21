<?php
$servername = "";
$username = "";
$password = "";
$dbname = "";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);



// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$name=$_GET["name"];
$date=$_GET["date"];
$time=$_GET["time"];
$numberOfPeople=$_GET["n"];

$sql= "INSERT INTO `Prenotazione` (id, name,date,time,numberOfPeople ) VALUES ('','$name','$date','$time',$numberOfPeople)";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>
