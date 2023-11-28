<?php
    include("connection.php");
    session_start();

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $username = $_POST["Username"];
            $password = $_POST["Password"];

            $sql = "SELECT * FROM registrations";

            $result = mysqli_query($conn,$sql);

            while($test = mysqli_fetch_assoc($result)){
                    if($username == "admin"){
                    if($password == "admin"){

                        $_SESSION['admin']= 1;
                        $info = "admin:Administrator logged in!";
                        $sqlForLog = "INSERT INTO logs(log_info)VALUES ('$info')";
                        mysqli_query($conn,$sqlForLog);
                        
                        header("Location: Admin/mainpage.php");
                        break;
                            }
                    }else{
                        if($test['username'] == $username){
                            if($test['password'] == $password){
                                $_SESSION['user_id'] = $test['id'];

                                $_SESSION['fname'] = $test['first_name'];
                                $_SESSION['lname'] = $test['last_name'];


                                $info = "user: ".$test['first_name']." ".$test['last_name']." logged in!";
                                $sqlForLog = "INSERT INTO logs (log_info) VALUES ('$info')";
                                mysqli_query($conn,$sqlForLog);

                                header("Location: User/user-mainpage.php"); 
                            }
                        }
                    }
            }
        }
        if(isset($_SESSION['admin'])){
            header("Location: Admin/mainpage.php");
            exit();
        }
        elseif(isset($_SESSION['user_id'])){
            header("Location: User/user-mainpage.php"); 
            exit();
        }
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login form</title>
    <link rel="stylesheet" href="/Staff&Faculty/css/login.css">

    <!--font style sidemenu_bar-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa&family=Nosifer&family=Playfair+Display&display=swap" rel="stylesheet">

</head>
<body>

    <div class="login">
        <h3>Login</h3>

        <form action = "login.php" method = "post">
            <div class="input_box">
                <input type="text" placeholder="Username" name="Username" autocomplete="off" required>
            </div>

            <div class="input_box">
                <input type="password" placeholder="Password" name="Password" autocomplete="off" required>
            </div>
            
            <div>
                <button type="submit" class="button">Login</button>
            </div>

            <div class="link">
            <p>
             Not yet Registered?<a href="signup.php">&nbsp;Sign Up</a>
            </p>
            </div> <br>
        </form>
    </div>


</body>
</html>