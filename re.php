<?php 

include "dbconn.php";

    if (isset($_POST['update'])) {
        
        $id = $_GET['id']; 


        // $sql = "INSERT INTO `students` (`Gr_No`, `Enroll_no`, `name`, `password`, `class` ,`email`) VALUES ('$Gr_No', '$enroll_no', '$name', '$password','$class1','$email');"; 
        $sql = "UPDATE `stock` SET `status` = 'Current' WHERE `stock`.`id` = $id;";

        $result = $conn->query($sql); 

        if ($result == TRUE) {

            header('Location: index.php');

        }else{

            echo "Error:" . $sql . "<br>" . $conn->error;

        }

    } 


    ?>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

        <style>
            body{
                color:black;
            }
            input{
                border:none;
                background:transparent;
            }
        </style>

        

        <form action="" method="post">

        <section class="vh-100" style="background-color: #f4f5f7;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-lg-6 mb-4 mb-lg-0">
        <div class="card mb-3" style="border-radius: .5rem;">
          <div class="row g-0">
                <input type="submit" value="Approved" name="update" class="btn btn-Success">
                <a href = "mailto:<?php echo $email?>?subject=Verification Of Your Id&body=Hello <?php echo $name; ?> ,%0D%0AYour Id Was Verified By Admin Now You Can Use this Website https://javaprogramming.infinityfreeapp.com/login.php %0D%0A- JAVA | Dev Tanna" target="_blanck"><button value="Send Mail" class="btn btn-info">Send Mail</a>
                <div class="d-flex justify-content-start">
                  <a href="#!"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
                  <a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
                  <a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

        </form> 

        </body>

        </html> 

    <?php
    
    // else{ 

    //    // header('Location: index.php');

    // } 


?> 