<?php

session_start();

if (isset($_SESSION['user_id'])) {
    unset($_SESSION['user_id']);
    unset($_SESSION['login']);
    session_destroy();

}

header('Location: ../index.php');
exit;