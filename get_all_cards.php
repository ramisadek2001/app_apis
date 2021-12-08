<?php

include "connection.php";

$query = "SELECT * FROM users";

$stmt = $cnnx->prepare($query);
$stmt ->execute();

$results = $stmt->get_result();

$response = [];

while ($user = $results->fetch_assoc()) {
    $response[] = $user;
}
    $users_json = json_encode($response);

    echo $users_json;
    
    
    
?>