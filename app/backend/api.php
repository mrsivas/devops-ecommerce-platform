<?php
header("Content-Type: application/json");

$response = [
    "service" => "Backend API",
    "status" => "Running",
    "timestamp" => date("Y-m-d H:i:s")
];

echo json_encode($response);
?>
