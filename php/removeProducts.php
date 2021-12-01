<?php
    include_once("database.php");
    $get = file_get_contents('php://input');
    $get = json_decode($get);
 
    $id = $_COOKIE["id"];
    $email = $_COOKIE["email"];
    // $id = 3;
    // $email = "a@gmail.com";

    $qry = "delete from cart where(id=0)";
    mysqli_query($connection,$qry);

    $sql = "delete from cart where(email='".$email."' and id=$id)";
    
    $result = mysqli_query($connection,$sql);
  
        echo json_encode($result);
   
 

?>