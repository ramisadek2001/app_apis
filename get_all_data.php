<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
include "connection.php";

$query = "SELECT * FROM data";

$stmt = $cnnx->prepare($query);
$stmt ->execute();

$results = $stmt->get_result();

$response = [];

while ($data = $results->fetch_assoc()) {
    $response[] = $data;
}
    $alerts_json = json_encode($response);

    echo $alerts_json;
    
    
    
?>