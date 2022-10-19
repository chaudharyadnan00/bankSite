<?php
include '../connection/conn.php';

$payer_acc = $_POST['payer'];
$payee_acc = $_POST['payee'];
// $payer_acc = 122345; 
// $payee_acc = 23464758;  

$sql = "select * from customers where accountNumber = '$payer_acc'";
$result = mysqli_query($con, $sql);
if (mysqli_num_rows($result) == 1) {
    $sql2 = "select * from customers where accountNumber = '$payee_acc'";
    $result2 = mysqli_query($con, $sql2);
    if (mysqli_num_rows($result2) == 1) {
        if ($payer_acc == $payee_acc) {
            echo "*Payer and Payee account can't be same";
        } else {
            echo "right";
        }
    } else {
        echo "*Payee account number not found";
    }
} else {
    echo "*Payer account number not found";
}
