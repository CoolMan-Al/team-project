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
</head>
<body>

<?php
include 'database.php'; 
$selected_date = date("y-m-d");
$query = "SELECT temp FROM value WHERE date = '$selected_date' ORDER BY valueID DESC"; 
$result = mysqli_query($mysqli, $query);
?>


<?php
$row = mysqli_fetch_assoc($result)
?>
    
        <?php echo $row['temp']; ?>
    

</body>
</html>
