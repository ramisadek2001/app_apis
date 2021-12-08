<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
include "connection.php";


$data_from_ionic = json_decode(file_get_contents("php://input"));
$email = $data_from_ionic->email;
$password = $data_from_ionic->psw;
$file = $data_from_ionic->file;

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