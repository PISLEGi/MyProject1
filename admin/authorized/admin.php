<?php

session_start();

if (isset($_SESSION['user_id'])) {
    echo 'Привет!, ' . $_SESSION['login'];
    echo '<br><a href="unauth.php">Выйти из аккаунта</a>';
} else {
    header('Location: ../index.php');
    exit;
}
// echo 'HEY!, ' . $_SESSION['login'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Администраторская панель</title>
</head>
<body>

</body>
</html>
