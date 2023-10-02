<?php
    $servername ='localhost';
    $username = 'root';
    $password = '';
    $dbname = "rk";

    //create connection
    $conn = new mysqli($servername,$username,$password,$dbname);

    //check Connection

    if($conn->connect_error){
        die("connection failed :".$conn->connect_error);
    }
    //echo "Connected Successfully";

    $v=time();

?>