<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
include "connection.php";

$query = "SELECT * FROM alerts";

$stmt = $cnnx->prepare($query);
$stmt ->execute();

$results = $stmt->get_result();

$response = [];

while ($alert = $results->fetch_assoc()) {
    $response[] = $alert;
}
    $alerts_json = json_encode($response);

    echo $alerts_json;
    
    
    
?>