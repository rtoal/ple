<?php
date_default_timezone_set('UTC');
$serverDate = date('Y-m-d H:i:s');
$serverIP = $_SERVER['SERVER_ADDR'] ?? 'IP not available';
echo "Server Date: " . $serverDate . "Z<br>";
echo "Server IP: " . $serverIP;
?>
