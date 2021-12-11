<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
include "connection.php";

$data_from_ionic = json_decode(file_get_contents("php://input")); 
$email = $data_from_ionic->email;
$psw = $data_from_ionic->psw;
$qrcode = $data_from_ionic->qrcode;
// $file = $data_from_ionic->file;
$hashed_password = hash("sha256", $psw);
$query = "INSERT INTO users(email,psw,qrcode) VALUES (?,?,?)";

$stmt = $cnnx->prepare($query);
$stmt->bind_param('sss',$email,$hashed_password,$qrcode);
$stmt->execute();

$response= [];
$response[] = "Mabrouk";

$result_json = json_encode($response);
echo $result_json;

    
    
?>