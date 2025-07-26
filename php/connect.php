<?php
    $firstname = $_POST["firstname"];
    $surname = $_POST["surname"];
    $othername = $_POST["othername"];
    $gender = $_POST["gender"];
    $dob = $_POST["dob"];
    $phone = $_POST["phone"];
    $email = $_POST["email"];
    $resident_address = $_POST["resident_address"];
    $skill = $_POST["skill"];
    $lg = $_POST["lg"];
    $educational_status = $_POST["educational_status"];
    $school_name = $_POST["school_name"];
    $course_of_study = $_POST["course_of_study"];
    $level = $_POST["level"];
    $indigenePhoto = $_POST["indigenePhoto"];
    $volunteering = $_POST["volunteering"];
    $Expectations_from_the_Forum = $_POST["Expectations_from_the_Forum"];

    $conn = new mysqli("localhost","root","","kbkbdata");
    if($conn->connect_error){
        die("failed" .$conn->connect_error);
    }else{
        $stmt = $conn->prepare("INSERT INTO data(firstname,surname,othername,gender,dob,phone,email,resident_address,skill,lg,educational_status,school_name,course_of_study,level,indigenePhoto,volunteering,Expectations_from_the_Forum) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        $stmt->bind_param("sssssssssssssssss", $firstname,$surname,$othername,$gender,$dob,$phone,$email,$resident_address,$skill,$lg,$educational_status,$school_name,$course_of_study,$level,$indigenePhoto,$volunteering,$Expectations_from_the_Forum);
        $stmt->execute();
        echo '<div class="success">
        <h1>registration</h1>
        <div class="logos">
            <img src="../logo/logo.png" alt="" width="271" height="278">
        </div>
        <p>registration sucessful! <span>your details is storing</span></p>
        <link rel="stylesheet" href="../css/success.css">
        <script>
        setTimeout( () =>{
            window.location.href="../index.php"
        }, 3000);
    </script>
    </div>';
        $stmt->close();
        $conn->close();
    }
?>
           <!-- setTimeout( () =>{
                window.location.href="../index.php"
            }, 2000); -->