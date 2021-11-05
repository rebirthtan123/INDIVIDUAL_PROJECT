<?php
header('Content-Type: application/json');

$mysqli = new mysqli('localhost', 'root', '', 'inventory');

$query = sprintf("SELECT MONTH(date_updated) as months, SUM(total_amount) as total_amount FROM sales_list GROUP BY MONTH(date_updated)");
$result = $mysqli->query($query);

$data = array();
foreach ($result as $row) {
  $data[] = $row;
}

print json_encode($data);