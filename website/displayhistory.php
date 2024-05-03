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
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>

<?php
include 'database.php'; 

if (isset($_POST['date_submit']))
{
    $selected_date = $_POST['input_date'];
    $query = "SELECT * FROM value WHERE date = '$selected_date' ORDER BY valueID desc limit 0,20"; 
}else {
    $selected_date = date("y-m-d");
    $query = "SELECT * FROM value WHERE date = '$selected_date' ORDER BY valueID desc limit 0,20"; 
}
$timestamp = strtotime($selected_date);	 
$date = date("d-m-Y", $timestamp);
$date = substr_replace($date, "/", 5,1);
$date = substr_replace($date, "/", 2,1);
$result = mysqli_query($mysqli, $query);
echo $date;
?>
<br>
<br>
<table id="history_table">
    <tr>
        <th>Date (dd/mm/yy)</th>
        <th>Time (hh/mm)</th>
        <th>Temp (°C)</th>
        <th>Humidity (%)</th>
        <th>AirPressure (hPa)</th>        
    </tr>

<?php
while ($row = mysqli_fetch_assoc($result)) {

    $timestamp = strtotime($row['date']);	 
	$new_date = date("d-m-Y", $timestamp);
    $trim_date = substr_replace($new_date, "/", 5,1);
    $trim_date = substr_replace($trim_date, "/", 2,1);
    $trim_time = substr_replace($row['time'], "", 5,3);
?>
    <tr>
        <td><?php echo $trim_date; ?></td>
        <td><?php echo $trim_time; ?></td>
        <td><?php echo $row['temp']; ?></td>
        <td><?php echo $row['humid']; ?></td>
        <td><?php echo $row['press']; ?></td>
    </tr>
<?php
}
?>

</table>

</body>
</html>