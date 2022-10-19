<?php
include "../connection/conn.php";
$name = array();
$email = array();
$accountNumber = array();
$balance = array();
$sql = "select * from customers";
$result = mysqli_query($con, $sql);
while ($pass = mysqli_fetch_assoc($result)) {
  array_push($name, $pass['name']);
  array_push($email, $pass['email']);
  array_push($accountNumber, $pass['accountNumber']);
  array_push($balance, $pass['balance']);
}
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="../styles/customersDetails.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="../connection/jquery-3.6.0.js"></script>
  <title>Customers Details</title>
</head>

<body>
  <div id="box">
    <div id="head-box">
      <h2 id="customer">Customers Details</h2>
    </div>
    <table>
      <tr>
        <th>S.No.</th>
        <th>Name</th>
        <th>Email</th>
        <th>Account Number</th>
        <th>Balance (&#8377;)</th>
        <th>Transaction</th>
      </tr>
      <?php
      for ($i = 0; $i < count($name); $i++) {
      ?>
        <tr class="bxt">
          <td><?php echo $i + 1 ?></td>
          <td><?php echo $name[$i]   ?></td>
          <td><?php echo $email[$i]   ?></td>
          <td><?php echo $accountNumber[$i]   ?></td>
          <td><?php echo $balance[$i]   ?></td>
          <td> <button class="pay-btn" onclick="pay(this)">Pay <i class="fa fa-forward"></i></button></td>
        </tr>
      <?php
      }
      ?>
      <!-- <form id="myForm" action="transaction.php" method="post">
        <input type='hidden' id='hiddenField' name='id' value=''>
      </form> -->

      <script type="text/javascript">
        function pay(e) {
          var name = e.parentElement.parentElement.children[3].innerHTML;
          console.log(name);
          // document.getElementById('hiddenField').value = name;
          // document.getElementById("myForm").submit();
          window.location.href=("transaction.php?id="+name);
        }
      </script>
    </table>
  </div>
</body>

</html>