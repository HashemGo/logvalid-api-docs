<?php

$url = "https://api.logvalid.com/register?email=user@example.com&key=YOUR_API_KEY";
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$response = curl_exec($ch);
curl_close($ch);
echo $response;

?>