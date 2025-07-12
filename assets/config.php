<?php
$host = "mysql.railway.internal";
$port = "3306"; // usually 3306
$dbname = "railway";
$username = "root";
$password = "XPGoBZqZdxZglWrCJRtDFLefzZLSgwaY";

$conn = new mysqli($host, $username, $password, $dbname, $port);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully!";


?>