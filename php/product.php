<?php
  header("Access-Control-Allow-Origin: *");


    include("database.php");
    $get = file_get_contents('php://input');
    $get = json_decode($get);
 
    $sql = "SELECT * FROM product";
    $result = mysqli_query($connection,$sql);
    
    if($result)
    {
        $i = 0;
        while($res = mysqli_fetch_assoc($result))
        {   
            $response[$i]['id'] = $res['id'];
            $response[$i]['title'] = $res['title'];
            $response[$i]['price'] = $res['price'];
            $response[$i]['description'] = $res['description'];
            $response[$i]['category'] = $res['category'];
            $response[$i]['image'] = $res['image'];
            
            $i++;
        }
        // $data = mysqli_fetch_assoc($result);
         echo json_encode($response);
    }
    else
    {
        echo "No Record Found";
    }
 

?>


