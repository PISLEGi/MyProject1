<?php

session_start();

include 'db.php';

$login = $_POST['login'];
$pass = $_POST['pass'];

$query = "SELECT * FROM users WHERE login='$login' AND pass='$pass'";
$result = mysqli_query($link, $query);

$user = mysqli_fetch_assoc($result);
if ($user === NULL) {
    header('Location: ../index.php?error=1');
    exit;
} else {
    $_SESSION['user_id'] = $user['user_id'];
    $_SESSION['login'] = $user['login'];

    header('Location: admin.php');
    exit;
}

var_dump($user);