<?php
    $user = "root";
    $pass = "password";

    $conn = mysqli_connect('mysql', $user, $pass, 'users');

    if (!conn) {
        echo "Connection failed!";
    }

?>