<?php
include "../connection/conn.php";
$payer = $_POST['action1'];
$payee = $_POST['action2'];
$balance = $_POST['action3'];
// echo $payer . "\n";
// echo $payee . "\n";
// echo $balance . "\n";
$payerOldBalance;
$payeeOldBalance;
$payerNewBalance;
$payeeNewBalance;
$payerName;
$payeeName;
$payerEmail;
$payeeEmail;

$sql1 = "SELECT *FROM customers WHERE accountNumber='$payer'";
$result1 = mysqli_query($con, $sql1);
if ($pass = mysqli_fetch_assoc($result1)) {
    $payerOldBalance = $pass['balance'];
    $payerName = $pass['name'];
    $payerEmail = $pass['email'];
}
// echo $payerName . "\n";
// echo $payerEmail . "\n";

if ($payerOldBalance < $balance) {
    echo "Your account does not have sufficient balance";
    return;
} else {
    $payerNewBalance = $payerOldBalance - $balance;
    $set1 = "UPDATE customers SET balance='$payerNewBalance' WHERE accountNumber='$payer'";
    $update1 = mysqli_query($con, $set1);

    $sql2 = "SELECT * FROM customers WHERE accountNumber='$payee'";
    $result2 = mysqli_query($con, $sql2);
    if ($pass = mysqli_fetch_assoc($result2)) {
        $payeeOldBalance = $pass['balance'];
        $payeeName = $pass['name'];
        $payeeEmail = $pass['email'];
    }
    $payeeNewBalance = $payeeOldBalance + $balance;
    $set2 = "UPDATE customers SET balance='$payeeNewBalance' WHERE accountNumber='$payee'";
    $update2 = mysqli_query($con, $set2);

    if ($update1 and $update2) {
        echo "Transaction Successfull";
        // echo $payer . "\n";
        // echo $payee . "\n";
        // echo $payeeName . "\n";
        // echo $payeeEmail . "\n";
        $sqlHistory = "INSERT INTO history (payerName, payer, payeeName, payee, amount) VALUES ('$payerName',$payer,'$payeeName',$payee,$balance)";
        $resultHistory = mysqli_query($con, $sqlHistory);

        if ($resultHistory) echo "good";
    } else {
        echo "Not commit";
    }
}


?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../styles/transactionDetails.css">
    <script src="../connection/jquery-3.6.0.js"></script>
    <title>Transaction Details</title>
</head>

<body>
    <div id="box">
        <div id="head-box">
            <h2 id="customer">Transaction Details</h2>
        </div>
        <table class="tableHTML">
            <tr>
                <th></th>
                <th>Account Holder</th>
                <th>Account Number</th>
                <th>Email</th>
                <th>Old Balance</th>
                <th>New Balance</th>
            </tr>
            <tr>
                <td>Payer</td>
                <td><?php echo $payerName; ?></td>
                <td><?php echo $payer; ?></td>
                <td><?php echo $payerEmail; ?></td>
                <td><?php echo $payerOldBalance; ?></td>
                <td><?php echo $payerNewBalance; ?></td>

            </tr>
            <tr>
                <td>Payee</td>
                <td><?php echo $payeeName; ?></td>
                <td><?php echo $payee; ?></td>
                <td><?php echo $payeeEmail; ?></td>
                <td><?php echo $payeeOldBalance; ?></td>
                <td><?php echo $payeeNewBalance; ?></td>
            </tr>
        </table>
    </div>
    <button onclick="location.href='./homePage.php'" type="button"><span aria-hidden="true"></span><span aria-hidden="true"></span><span>Home!</span></button>

</body>

</html>