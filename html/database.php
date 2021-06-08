<?php
    $user = "root";
    $pass = "R0b0t1cs!";

    $conn = mysqli_connect('mysql', $user, $pass, 'users');

    if (!conn) {
        echo "Connection failed!";
    }

?>