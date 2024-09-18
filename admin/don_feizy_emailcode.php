<?php
  $to = "joshua_atansuyi@yahoo.com";
  $sub = "JOBASTECH";
  $msg="God is good all the time.";
  if(mail($to,$sub,$msg))
      echo "Your Mail is sent successfully.";
  else
      echo "Your Mail is not sent. Try Again.";
?> 