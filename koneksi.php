<?php
 $host = "localhost"; 
 $username = "root"; 
 $password = ""; 
 $database = "spforward1"; 
 $con = mysqli_connect($host, $username, $password, $database); 

 $koneksi = mysqli_connect("localhost","root","","spforward1");
     
   if (mysqli_connect_errno()){
        echo "Koneksi database gagal : " . mysqli_connect_error();
   }
?>
