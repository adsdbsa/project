<?php
  header("Access-Control-Allow-Origin: *");

 require 'database.php';
 $post = file_get_contents('php://input');
 $post = json_decode($post);
 $email = $_COOKIE["email"];
//  $email ="a@gmail.com";
 $sql1 = "SELECT * FROM ship where email = '".$email."'"; 
 $result1 = mysqli_query($connection,$sql1);
 if(mysqli_num_rows($result1)>0) 
 { 
   
 }
 else
 {

  $sql = "INSERT INTO ship (`name`, `email`, `address`, `city`, `state`, `zip`) VALUES ('".$post->name."','".$email."','".$post->adr."','".$post->city."','".$post->state."','".$post->zip."')";
  $result = mysqli_query($connection,$sql);
  

 $qry = "delete from ship where(email=' ')";
 mysqli_query($connection,$qry);

 } 
 $data = mysqli_fetch_assoc($result1);   
 echo json_encode($data);
?>