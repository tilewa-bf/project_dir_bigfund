<?php
$memberphone = '07048032566';

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://api.smslive247.com/api/v4/sms",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "{\"senderID\":\"BIGFUND\",\"messageText\":\"Your loan balance is N4,000. Kindly balance up. Signed Bigfund.\",\"deliveryTime\":\"2024-08-24T20:35:00.056Z\",\"mobileNumber\":\"$memberphone\",\"route\":\"string\"}",
  CURLOPT_HTTPHEADER => [
    "Authorization: Bearer MA-936297c9-291e-4b24-8701-0c6aafdb4a8f",
    "accept: application/json",
    "content-type: application/*+json"
  ],
]);

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}
