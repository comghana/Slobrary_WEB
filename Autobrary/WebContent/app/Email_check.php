<?php	//중복방지문
/*
 작성자: 장지은
 */

//***********************보안 정보 취급 유의********************************//
$con = mysqli_connect("www.slobrary.com", "slo", "legoslo2020", "slo");	//아이피,아이디,비번,디비이름
//***********************보안 정보 취급 유의********************************//


$email = $_POST["email"];

$response["success"] = false;

$statement = mysqli_prepare($con, "SELECT email FROM member WHERE email = ?");
mysqli_stmt_bind_param($statement, "s", $email);
mysqli_stmt_execute($statement);
mysqli_stmt_store_result($statement);
mysqli_stmt_bind_result($statement);

$response = array();
$response["success"] = false;

while(mysqli_stmt_fetch($statement)){
    $response["success"] = true;
}

echo json_encode($response);
mysqli_close($con);
?>