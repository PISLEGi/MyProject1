<?php

include 'db.php';

$user_name = $_GET['name'];
$e_mail = $_GET['mail'];
$text = $_GET['message'];

$query = "INSERT INTO messages (user_name, e_mail, text) VALUES ('$user_name', '$e_mail', '$text')";
mysqli_query($link, $query);

echo true;