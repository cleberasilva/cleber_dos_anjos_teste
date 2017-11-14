<?php include '../scripts/database.php'; ?>
<?php
    $nome=$_POST["nome"];
    $cpf=$_POST["cpf"];
    $nascimento=$_POST["nascimento"];
    $sexo=$_POST["sexo"];

    mysqli_query($db,"INSERT INTO passageiros (nome,cpf,nascimento,sexo)
    VALUES ('$nome','$cpf','$nascimento','$sexo')");
    
    if(mysqli_affected_rows($db) > 0){
        header("Location: ../pages/passageiros.php");
    } else {
        echo "Dado não foi gravado<br/>";
        echo mysqli_error ($db);
    }
?>