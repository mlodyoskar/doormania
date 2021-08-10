<?php 
    $ini_array = parse_ini_file("../db.ini");
    $servername = $ini_array['servername'];
    $username = $ini_array['username'];
    $password = $ini_array['password'];

    function connect_to_db ($servername, $username, $password) {
        $conn = mysqli_connect($servername, $username, $password);
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
        return $conn;
    }
    $conn = connect_to_db($servername, $username, $password);
    ?>