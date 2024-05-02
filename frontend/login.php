<?php
$is_invalid = false;
$_SESSION["auth"] = 0;

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $mysqli = require __DIR__ . "/database.php";
    $sql = sprintf("SELECT * FROM user
                   WHERE username = '%s'",
                   $mysqli->real_escape_string($_POST["username"]));
    $result = $mysqli->query($sql);
    $user = $result->fetch_assoc();
    if ($user) {
        if (password_verify($_POST["password"], $user["password_hash"])) {
            session_regenerate_id();
            $_SESSION["user_id"] = $user["id"];
            $_SESSION["auth"] = 1;
            header("Location: home.php");
            exit;
        }
    }
    $is_invalid = true;
}
?>
<!DOCTYPE html>
<html>
    <head>
        <title>BABA Home - Login</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="style/colours.css">
        <link rel="stylesheet" href="style/format.css">
        <link rel="stylesheet" href="style/text.css">
    </head>
    <body>
        <h1>BABA HOME</h1>
        <?php if ($is_invalid): ?>
            <em>Invalid login</em>
        <?php endif; ?>
        <h2>
        <form method="post">
            <label for="username">Username</label>
            <input type="text" name="username" id="username" 
            value="<?= htmlspecialchars($_POST["username"] ?? "") ?>">
            <br>
            <label for="password">Password</label>
            <input type="password" name="password" id="password">
            <br>
            <button>Log in</button>
        </form>
        </h2>
    </body>
</html>