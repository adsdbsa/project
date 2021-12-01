<?php
    include_once("database.php");
    $get = file_get_contents('php://input');
    $get = json_decode($get);
 
    $email = $_COOKIE["email"];
    $sql = "select * from ship where (email='".$email."')";
    $result = mysqli_query($connection,$sql);
    
    if(mysqli_num_rows($result)>0)
    {
        $data = mysqli_fetch_assoc($result);
        echo json_encode($data);
    }
    else
    {
        echo "No Record Found";
    }
 

?>



