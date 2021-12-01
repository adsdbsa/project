<?php
  header("Access-Control-Allow-Origin: *");
    $con = mysqli_connect("localhost","root","","smart-farmer");
    $response = array();
    if($con)
    {
        $qry= mysqli_query($con,"select * from users");
     
        if($qry)
        {
            header("Content-Tpye: JSON");
            $i = 0;
            while($row = mysqli_fetch_assoc($qry))
                {   
                    $response[$i]['Id'] =$row['id'];
                    $response[$i]['name'] =$row['name'];
                    $response[$i]['email'] =$row['email'];
                    $response[$i]['pwd'] =$row['password'];
                    
                 $i++;
                }
            echo json_encode($response,JSON_PRETTY_PRINT);
    
        }
    }
    else
    {
        echo "Connection Faild";
    }
?>