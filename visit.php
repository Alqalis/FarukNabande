<?php

$con = mysqli_connect("localhost","root","","youtube");
$ip = $_SERVER["REMOTE_ADDR"];

//echo $ip . "<br>";

$sql = "INSERT INTO visitors(ip) VALUES('$ip')";
mysqli_query($con, $sql);

$select = "SELECT * FROM visitors";
$count_visitors = mysqli_num_rows(mysqli_query($con, $select));

echo "<div id='visitors_counter'>Total visitors Are: ".$count_visitors. "</div>";
echo "<style>
#visitors_counter
{
    width: fit-content;
    font-size: min(1rem, 3vw);
    position: relative;
    // top: -120px;
}</style>"
?>