<?php
  header("Access-Control-Allow-Origin: *");

 require 'database.php';
 $post = file_get_contents('php://input');
 $post = json_decode($post);
 
 
 
 $sql1 = "SELECT * FROM users where email = '".$post->email."'"; 
 $result1 = mysqli_query($connection,$sql1);
 if(mysqli_num_rows($result1)>0) 
 { 
   
 }
 else
 {
  $sql = "INSERT INTO users (name,email ,password) VALUES ('".$post->name."','".$post->email."','".$post->pwd."')";
  $result = mysqli_query($connection,$sql);
  $data = mysqli_fetch_assoc($result1);   
 }
  echo json_encode($data);
 
?>