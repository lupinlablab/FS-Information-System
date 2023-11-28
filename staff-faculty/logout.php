<?php
include("connection.php");
session_start();   
if(isset($_SESSION['admin'])){
    $info="admin:Administrator logged out!";
    $id = $_SESSION['user_id'];
} else{
$fname =  $_SESSION['fname'];
$lname =  $_SESSION['lname'];

$info = "user: ".$fname." ".$lname." logged out!";
$id =  $_SESSION['user_id'];
}
$sqlForLog = "INSERT INTO logs (log_info) VALUES ('$info')";
mysqli_query($conn,$sqlForLog);

session_destroy();
header("location: login.php");
?>