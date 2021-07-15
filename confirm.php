<?php
    $token = $_GET['token'];
    $username = $_GET['username'];
 
    $koneksi=mysql_connect('localhost','root','');
    mysql_select_db('untuk_blog',$koneksi);
 
    $query = mysql_query("UPDATE users SET aktif = 'Y' WHERE token = '".$token."'") or die (mysql_error());
 
    if($query) {
        echo "Member dengan username <strong>".$username."</strong> telah diaktifkan";
    } else {
        echo "Gagal diaktifkan";
    }
?>
