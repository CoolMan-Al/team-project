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



<title>BABA's HOME - Home</title>


</head>

<body>

<div id="pagewrap">

<header>
<ul>
  <li><img src="temp.png" width = 100px height=100px"></li>
  <li><a href="home.php">Home</a></li>
  <li><a href="history.php">History</a></li>
  <li><a href="about.php">About</a></li>
  <li><a href="logout.php">Log Out</a></li>
</ul>
</header>
<?php

?>
<h1>BABA Home</h1>
<div class = "mainsplit" > <!-- left side-->
    <h2>Temperature °C</h2>
    <h2 style="font-size:150px;">
        <?php
        include 'displaytemp.php';
        ?>
    </h2>
    
</div>

<div class = "mainsplit" > <!--right side-->
    <h2><a>Recent Records</a></h2>
    <h2>
    <?php

    include 'displayvalues.php';
  
    ?>
    </h2>
</div>




<br>
<br>






</body>





</html>

