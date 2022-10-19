<?php
$con = mysqli_connect('localhost', 'root');
 $status = mysqli_select_db($con, 'banking');
if(!$status){
    echo "there is a problem connecting to server";
}
?>