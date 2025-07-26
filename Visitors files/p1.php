<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page 1</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <a href="p1.php">page 1</a>
    <a href="p2.php">page 2</a>
    <a href="p3.php">page 3</a>
    <a href="p4.php">output</a>
</body>
Our tiktok handle !


The link 👇

https://www.tiktok.com/@birnin.kebbi.kalg?_t=ZM-8yCLZtqWJba&_r=1

Twitter 

https://x.com/Bkbstudentforum?t=C9r-hcp8kmh3QNaehdUGQA&s=09

Facebook 

https://www.facebook.com/birnin.kebbi.kalgo.bunza.student.forum

WhatsApp 

https://chat.whatsapp.com/LR6pk2gTXV8Gd2XgNcbODD?mode=ac_t
<?php
    // session_start();

    // $_SESSION["p1"] = $_POST["p1"];
    // echo $_SESSION["p1"];
   
    $con = new mysqli("localhost","root","","visitors");
    if($con->connect_error){
        die("failed:".$con->connect_error);
    }

    $userIp = $_SERVER["REMOTE_ADDR"];
    $result = mysqli_query($con,$query);
    if($result->num_rows == 0){
        $InsertQuery = "insert into visitortable(ip) VALUES('$userIp') ";
        mysqli_query($con,$InsertQuery);
    }else{
        $row = $result->fetch_assoc();
        if(!preg_match('/'.$userIp.'/',$row['ip'])){
            $newIp = "$row[ip] $userIp";

            $updateQuery = "update visitortable set 'ip' = '$newIp', 'views' = '$views' + 1 ";
            mysqli_query($con,$updateQuery);
        }
    }
?>
</html>