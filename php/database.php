<?php
    header("Access-Control-Allow-Origin: *");
    header('Access-Control-Allow-Credentials: true');
    header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE");
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
    header("Content-Type: application/json; charset=UTF-8");
 
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "ecom";

    //Creating the connection 
    $connection = mysqli_connect($servername,$username,$password,$database);

    if(!$connection)
        echo mysqli_connect_error();
?>
