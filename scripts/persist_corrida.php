<?php include '../scripts/database.php'; ?>
<?php
    $passageiro=$_POST["passageiro"];
    $motorista=$_POST["motorista"];
    $valor=$_POST["valor"];
   


    mysqli_query($db,"INSERT INTO corridas (cpf_mot,cpf_pas,valor)
    VALUES ('$motorista','$passageiro','$valor)");
    
    if(mysqli_affected_rows($db) > 0){
        header("Location: ../pages/corridas.php");
    } else {
        echo "Dado não foi gravado<br/>";
        echo mysqli_error ($db);
    }
?>