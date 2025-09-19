<?php

$conn = mysqli_connect ("localhost", "root", "", "hotel");

if (!$conn) { 
die ("Connection failed");
}

$username = $_POST ['username'];
$password = $_POST ['password'];

$sql = "Select * FROM guests Where mobile = '$username' And password = '$password'";
$result = mysqli_query ($conn, $sql);

if (mysqli_num_rows ($result) > 0 ) {
    echo "yay";
} else {
    echo "failed";
}

mysqli_close ($conn);

?>