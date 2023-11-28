<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

     <!--icon link-->
     <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

     <!--CSS link-->
     <link rel="stylesheet" href="/Staff&Faculty/css/style.css"/>
     
      <!--font style sidemenu_bar-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Comfortaa&family=Nosifer&family=Playfair+Display&display=swap" rel="stylesheet">

    <title>Staff and Faculty</title>
</head>
<body>
    <div class="container">
         <div class="title">
                <h1>STAFF AND FACULTY</h1>
                <h2>Mental Elementary School</h2>
            </div>
        <div class="image">
            <a href="profile.php"><img src="/Staff&Faculty/user_img/user1.jpg" alt="Error" width="120px" height="120px"></a>     
        </div>
        <div class="side-icon">
            <ul>
                <li>
                    <a href="">
                        <ion-icon name="apps-outline"></ion-icon>
                    </a>
                </li>
                <li>
                    <a href="schedule/schedule.php">
                         <ion-icon name="calendar-clear-outline"></ion-icon>
                    </a>
                </li>
                <li>
                    <a href="sf-users/staff.php">
                         <ion-icon name="people-outline"></ion-icon>
                    </a>
                </li>
                <li>
                    <a href="logs/logs.php">
                         <ion-icon name="receipt-outline"></ion-icon>
                    </a>
                </li>
                <li>
                    <a href="/Staff&Faculty/logout.php">
                        <ion-icon name="log-out-outline"></ion-icon>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="body">
        <div class="main-box">

            <a href="sf-users/staff.php">
                <div class="box">
                    <div>
                            <div class="cardName">Staff</div>
                    </div>
                    <div class="card-icon">
                        <ion-icon name="people-outline"></ion-icon>
                    </div>
                </div>
            </a>

            <a href="sf-users/faculties.php">
                <div class="box">
                    <div>
                            <div class="cardName">Faculty</div>
                    </div>
                    <div class="card-icon">
                        <ion-icon name="people-circle-outline"></ion-icon>
                    </div>
                </div>
            </a>

            <a href="schedule/schedule.php">
                <div class="box">
                    <div>
                        <div class="cardName">Schedule</div>               
                    </div>
                    <div class="card-icon">
                        <ion-icon name="time-outline"></ion-icon>
                    </div>
                </div>
            </a>

            <a href="profile.php">
                <div class="box">
                    <div>             
                            <div class="cardName">Profile</div>
                    </div>
                    <div class="card-icon">
                        <ion-icon name="person-circle-outline"></ion-icon>
                    </div>
                </div>
             </a>

             <a href="logs/logs.php">
                <div class="box">
                    <div>             
                            <div class="cardName">Logs</div>
                    </div>
                    <div class="card-icon">
                        <ion-icon name="receipt-outline"></ion-icon>
                    </div>
                </div>
             </a>
    </div>
    <!--icon link-->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>