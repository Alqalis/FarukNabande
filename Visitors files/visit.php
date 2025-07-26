<?php

$con = mysqli_connect("localhost","root","","youtube");
$ip = $_SERVER["REMOTE_ADDR"];

//echo $ip . "<br>";

$sql = "INSERT INTO visitors(ip) VALUES('$ip')";
mysqli_query($con, $sql);

$select = "SELECT * FROM visitors";
$count_visitors = mysqli_num_rows(mysqli_query($con, $select));

echo "Total visitors Are: ".$count_visitors;
?>