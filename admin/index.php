<?php
if (isset($_GET['error'])) {
    echo '<p>Ошибка авторизации. Неверный логин или пароль</p>';
} 
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="../icons/castle.png">
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="style.scss">
    <title>Администраторская панель</title>
</head>
<body class="text-center">
    <div class="container">
        <form class="form-signin" action="authorized/auth.php" method="POST">
            <img class="mb-4" src="../icons/castle.png" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Авторизуйтесь</h1>
            <label for="inputLogin" class="sr-only">Логин</label>
            <input type="login" id="inputLogin" class="form-control" placeholder="Введите логин" required="" autofocus="">
            <label for="inputPassword" class="sr-only">Пароль</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Введите пароль" required="">
            <button class="btn btn-lg btn-primary btn-block" type="submit">Войти</button>
            <p class="mt-5 mb-3 text-muted">© 2017-2018</p>
        </form>
    </div>

    <script scr="jquery-3.3.1.min.js"></script>
    <script scr="popper.min.js"></script>
    <script scr="bootstrap.min.js"></script>
    <script scr="main.js"></script>
</body>
</html>
