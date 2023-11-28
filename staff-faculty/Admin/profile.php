<?php
session_start();
include("../connection.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel = "stylesheet" href = "../css/profile.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>


    <div class = "containerB">
           <div class = "profile">
            <img src = "<?php 
                
                $id = $_SESSION['user_id'];

                $sql = "SELECT profile FROM registrations WHERE id = $id";

                $result = mysqli_query($conn,$sql);

                while($check = mysqli_fetch_assoc($result)){                  
                      echo $check['profile'];
                }

             
            ?>" style = "border: 3px solid black;" id="preview-image">
        <form action="profile.php" method="post" enctype="multipart/form-data">
            <div class = "changeProfileButton">
                    <label for="changeProfile">
                                <svg xmlns="http://www.w3.org/2000/svg"  width="30" height="30" fill="green" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                </svg>
                    </label>

        
                    <input type = "file" id = "changeProfile" name = "changePicValue" value = "profilePic" onchange="previewImage(event)">

            </div>

            </div>

            <div class = "input1">
                    <label for = "fname">Firstname</label>
                    <input type = "text" name = "fname" id = "fname" class = "form-control">                   
            </div>
           
            <div class = "input2">
                    <label for = "age">Age</label>
                    <input type = "text" name = "age" id = "age" class = "form-control">                   
            </div>
            <div class = "input3">
                    <label for = "gmail">Gmail</label>
                    <input type = "text" name = "gmail" id = "gmail" class = "form-control">                   
            </div>

            <button class = "btn btn-primary" id = "editBtn" value = "click" onclick="editprofile()">CONFIRM EDIT</button>
            </form>
            <a href="mainpage.php"><button class = "btn btn-primary" id = "editBtn"   >Home</button></a> 
     
    </div>
    










          <!--   <form action="" method="post" enctype="multipart/form-data">
            
                <input type = "file" id = "changeProfile" name = "changePicValue" value = "profilePic">

                    <label for = "fname">Firstname</label>
                    <input type = "text" name = "fname" id = "fname" class = "form-control"> 

                    <label for = "lname">Lastname</label>
                    <input type = "text" name = "lname" id = "lname" class = "form-control"> 

                    <label for = "gmail">Gmail</label>
                    <input type = "text" name = "gmail" id = "gmail" class = "form-control"> 

                    <button type = "submit" name="upload"> Confirm Edit</button>

                    <div class="back">
                        <a href="user-mainpage.php">Home</a>

                    </div>
            </form>    
 -->







    

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
       <script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>   
       
       <script>
        // Function to Preview Image
        function previewImage(event) {
            var preview = document.getElementById('preview-image');
            preview.src = URL.createObjectURL(event.target.files[0]);
            preview.style.display = 'block';
        }

       </script>

<script>

function editprofile(){

    //     var fullname = $('#fname').val();
    //     var age = $('#age').val();
    //     var gmail = $('#gmail').val();
        
  
    //      // Get the file input value
    //         var profilePath = $('#changeProfile').val();

    //     // Replace "C:\\fakepath\\" with an empty string
    //     var profilePic = profilePath.replace(/C:\\fakepath\\/i, '');


        
    //     console.log(profilePic); //check rani if me replace ba
                    

    // $.ajax({

    //         url: "../ajax/user_ajax.php",
    //         type: 'post',
    //         data: {
    //             fullname:fullname,
    //             age:age,
    //             gmail:gmail,
    //             profilePic:profilePic
               
    //         },
    //         success: function (data, status) {
    //             refreshIfClose();
    //         }

    //         });

}


</script>





    <!-- function pra inig click sa close mo reload sija -->
     <script>
            // function refreshIfClose(){
            //     location.reload();
            // }
     </script>

 
   
</body>
</html>