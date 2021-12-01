<?php
  header("Access-Control-Allow-Origin: *");

    include("database.php");
    $get = file_get_contents('php://input');
    $get = json_decode($get);
 
    // $email = $_COOKIE["email"];
    $email ="a@gmail.com";
    $sql = "SELECT price FROM cart where (email='".$email."')";
    $result = mysqli_query($connection,$sql);
    
    if($result)
    {
        $i = 0;
        $total =0;

        while($res = mysqli_fetch_assoc($result))
        {     
           $total+= $res['price'];
           $i++;
        }
        
        $qry = "UPDATE cart SET grand_total= '.$total.' where (email='".$email."')";
        
       $resu = mysqli_query($connection,$qry);
    echo json_encode($total);
    }
    else
    {
        echo "No Record Found";
    }
 

?>


