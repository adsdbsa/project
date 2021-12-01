<?php
    include_once("database.php");
    $get = file_get_contents('php://input');
    $get = json_decode($get);
 
    $sql = "select email,password from users where (email='".$get->email."' and password='".$get->pwd."')";
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



