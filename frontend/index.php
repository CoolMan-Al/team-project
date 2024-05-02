<?php
session_start();
if (isset($_SESSION["user_id"])) {
    $mysqli = require __DIR__ . "/database.php";
    $sql = "SELECT  * FROM user
            WHERE id ={$_SESSION["user_id"]}";
    $result = $mysqli->query($sql);
    $user = $result->fetch_assoc();
}
?>
<!DOCTYPE html>
<html>
    <head>
    <style>
    * {
    background-color: gainsboro;
    }

    </style>



        <title>BABA Home - Landing</title>
        <meta charset="UTF-8">

        <link rel="stylesheet" href="style/colours.css">
        <link rel="stylesheet" href="style/format.css">
        <link rel="stylesheet" href="style/text.css">
    </head>
    <body>
        <h1>BABA Home</h1>
        <?php session_start() ?>
        <?php if (isset($user)): ?>
            <p> Hello <?= htmlspecialchars($user["username"]) ?></p>
            <h2><a href="logout.php">Log out</a></h2>
        <?php else: ?>
            <h2><a href="login.php">Login</a> or <a href="signup.html">
            Signup</a></h2>
        <?php endif; ?>
    </body>
</html>