<?php
include "../connection/conn.php";


$payerName = array();
$payer = array();
$payeeName = array();
$payee = array();
$amount = array();
$time = array();
$sql = "SELECT * FROM history";
$result = mysqli_query($con, $sql);
while ($pass = mysqli_fetch_assoc($result)) {
    array_push($payerName, $pass['payerName']);
    array_push($payer, $pass['payer']);
    array_push($payeeName, $pass['payeeName']);
    array_push($payee, $pass['payee']);
    array_push($amount, $pass['amount']);
    array_push($time, $pass['time']);
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../styles/fundTransfer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="../connection/jquery-3.6.0.js"></script>
    <title>Fund Transfer</title>
</head>

<body>
    <div id="box">
        <div id="head-box">
            <h2 id="customer">Customers Details</h2>
        </div>
        <table>
            <tr>
                <th>S.No.</th>
                <th>Payer</th>
                <th>Payer<br>Account Number</th>
                <th>Payee</th>
                <th> Payee <br>Account Number</th>
                <th>Amount Transferred (&#8377)</th>
                <th>Date and Time</th>
            </tr>
            <?php
            for ($i = 0; $i < count($time); $i++) {
            ?>
                <tr class="bxt">
                    <td><?php echo $i + 1 ?></td>
                    <td><?php echo $payerName[$i]   ?></td>
                    <td><?php echo $payer[$i]   ?></td>
                    <td><?php echo $payeeName[$i]   ?></td>
                    <td><?php echo $payee[$i]   ?></td>
                    <td><?php echo $amount[$i]   ?></td>
                    <td><?php echo $time[$i]   ?></td>
                    <!-- <td> <button class="pay-btn" onclick="pay(this)">Pay <i style="font-size:10px;" class="fa fa-forward"></i> </button></td> -->
                </tr>
            <?php
            }
            ?>
        </table>
    </div>
</body>

</html>