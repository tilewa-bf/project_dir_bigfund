<?php
require_once 'HTTP/Request2.php';
$request = new HTTP_Request2();
$request->setUrl('https://app.smartsmssolutions.com/io/api/client/v1/sms/');
$request->setMethod(HTTP_Request2::METHOD_POST);
$request->setConfig(array(
  'follow_redirects' => TRUE
));
$request->addPostParameter(array(
  'token' => 'your-apix-token',
  'sender' => 'JOBASTECH',
  'to' => '08027580601',
  'message' => 'Hello World!',
  'type' => 'mesasge-type',
  'routing' => 'routing',
  'ref_id' => 'unique-ref-id',
  'simserver_token' => 'simserver-token',
  'dlr_timeout' => 'dlr-timeout',
  'schedule' => 'time-in-future'
));
try {
  $response = $request->send();
  if ($response->getStatus() == 200) {
    echo $response->getBody();
  }
  else {
    echo 'Unexpected HTTP status: ' . $response->getStatus() . ' ' .
    $response->getReasonPhrase();
  }
}
catch(HTTP_Request2_Exception $e) {
  echo 'Error: ' . $e->getMessage();
}