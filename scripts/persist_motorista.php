<?php include '../scripts/database.php'; ?>
<?php
    $nome=$_POST["nome"];
    $cpf=$_POST["cpf"];
    $nascimento=$_POST["nascimento"];
    $sexo=$_POST["sexo"];
    $status=$_POST["status"];
    $modelo=$_POST["modelo"];

    


    mysqli_query($db,"INSERT INTO motoristas (nome,cpf,nascimento,modelo,status,sexo)
    VALUES ('$nome','$cpf','$nascimento','$modelo','$status','$sexo')");
    
    if(mysqli_affected_rows($db) > 0){
        header("Location: ../pages/motoristas.php");
    } else {
        echo "Dado não foi gravado<br/>";
        echo mysqli_error ($db);
    }
?>