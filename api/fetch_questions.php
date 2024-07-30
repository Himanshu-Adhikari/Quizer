<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "quizeria";

$conn = new mysqli($servername, $username, $password, $dbname);
// echo "asdsd";
if ($conn->connect_error) {
    
    die("Connection failed: " . $conn->connect_error);
}

$category = $_GET['category'];
$activity = $_GET['activity'];

$sql = "SELECT question, option1, option2, option3, option4, answer FROM questions WHERE category='$category' AND activity='$activity'";
$result = $conn->query($sql);

$questions = array();

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $questions[] = $row;
    }
}

echo json_encode($questions);

$conn->close();
?>
