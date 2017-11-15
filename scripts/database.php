<?php
$db = mysqli_connect("us-cdbr-iron-east-05.cleardb.net","b3da6858429f6a","5dbab86d","heroku_e1e969c683cfd1c");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Falha a conectar ao banco de dados" . mysqli_connect_error();
  }
?>
