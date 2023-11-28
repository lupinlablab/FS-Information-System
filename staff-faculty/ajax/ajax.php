<?php

include("../connection.php");

if(isset($_POST['click'])){

    $id = $_POST['ID'];
    $fn = $_POST['fname'];
    $ln = $_POST['lname'];
    $password = $_POST['Pass'];
    $Gmail = $_POST['gmail'];
    $Profilepic = $_POST['profilepic'];
    
    $sql = "UPDATE registrations SET first_name = '$fn', last_name = '$ln', password = '$password', email_address = '$Gmail', profile = ' $Profilepic' WHERE id = ";

    $result = mysqli_query($conn,$sql);



}


?>