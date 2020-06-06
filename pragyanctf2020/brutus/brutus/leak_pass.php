<?php
require 'db.php';
$name = "pragyan1800121";

$sql="SELECT * FROM users WHERE username=?";
$stmt=mysqli_stmt_init($conn);
mysqli_stmt_bind_param($stmt, "s", $name);
mysqli_stmt_execute($stmt);
$rows=mysqli_stmt_get_result($stmt);
if($row=mysqli_fetch_assoc($rows))
{
    $hashpwd=$row['password'];
    echo $hashpwd;
}
?>
