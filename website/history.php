<!DOCTYPE html>

<html>

<head>
    <style>
        * {
            background-color: gainsboro;
        }
        
            </style>

<link rel="stylesheet" href="style/colours.css">
<link rel="stylesheet" href="style/format.css">
<link rel="stylesheet" href="style/text.css">

<title>BABA's HOME - History</title>

</head>

<header>
<ul>
  <li><img src="temp.png" width = 100px height=100px"></li>
  <li><a href="home.php">Home</a></li>
  <li><a href="history.php">History</a></li>
  <li><a href="about.php">About</a></li>
  <li><a href="index.php">Log Out</a></li>
</ul>
</header>

<body>

<div id="pagewrap">

<header>

<h1>Past Readings</h1>

<h2>
<form method="POST" action = "history.php">
  <label for="Date">Date:</label>
  <input type="Date" name="input_date">
  <input type="submit" value="Submit" name ="date_submit">
</form>

</h2>

<h2>
<?php
include 'displayhistory.php';
?>
</h2>


</header>



</body>

</html>