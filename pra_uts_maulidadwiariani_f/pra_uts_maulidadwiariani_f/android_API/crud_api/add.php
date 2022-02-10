<?php
include 'connection.php';

$uid = $_POST['uid'];
$name = $_POST['name'];
$phone = $_POST['phone'];
$address = $_POST['address'];
$response = array();
$query = mysqli_query($con, "INSERT INTO data VALUES (null,'$uid','$name','$phone','$address')");

if ($query) {
  $response['success'] = 'true';
  $response['message'] = 'Data Inserted Successfully';
} else {
  $response['success'] = 'false';
  $response['message'] = $con->error;
}

echo json_encode($response);
