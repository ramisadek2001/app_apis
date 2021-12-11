<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
include "connection.php";

$data_from_ionic = json_decode(file_get_contents("php://input")); 
$email = $data_from_ionic->email;
$psw = $data_from_ionic->psw;
$hashed_password = hash("sha256", $psw);
$query = "SELECT * FROM users WHERE email='".$email."'AND psw='".$hashed_password."'limit 1";

$stmt = $cnnx->prepare($query);
$stmt ->execute();
$results = $stmt->get_result();
$response= [];


while ($user = $results->fetch_assoc()) {
    $response[] = $user;
}
if(!empty($response)){
$response[] = "Mabrouk";
}else {
    $response= [];
$response[] = "failed";
}
$result_json = json_encode($response);
echo $result_json;

    
    
?>