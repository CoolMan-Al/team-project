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
$query = "SELECT time, temp FROM value WHERE date = '$selected_date' ORDER BY valueID desc limit 0,3"; 
$result = mysqli_query($mysqli, $query);
?>

<table>
    <tr>
        <th>Time</th>
        <th>Temp °C</th>
    </tr>

<?php
while ($row = mysqli_fetch_assoc($result)) {
    $time = substr_replace($row['time'], "", 5,3);
?>
    <tr>
        <td><?php echo $time; ?></td>
        <td><?php echo $row['temp']; ?></td>
    </tr>
<?php
}
?>

</table>

</body>
</html>
