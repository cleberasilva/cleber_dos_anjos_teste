<?php
$db = mysqli_connect("localhost","root","","shared_path");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Falha a conectar ao banco de dados" . mysqli_connect_error();
  }
?>