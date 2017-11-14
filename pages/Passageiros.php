<!DOCTYPE HTML>
<?php include '../scripts/database.php'; ?>
<html>

<head>
  <title>Passageiros</title>
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="../css/style.css" />
  <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
  <script type="text/javascript" src="../js/jquery.min.js"></script>
  <script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>

<body>
<div id="main">
  <div id="header">
    <div id="logo">
      <div id="logo_text">
        <h1><a href="../index.php">Shared <span class="logo_colour">Path</span></a></h1>
        <h2>Simples. Econômico. Social.</h2>
      </div>
    </div>
    <div id="menubar">
      <ul id="menu">
        <li><a href="../index.php">Home</a></li>
        <li class="selected"><a href="Passageiros.php">Passageiros</a></li>
        <li><a href="Motoristas.php">Motoristas</a></li>
        <li><a href="Corridas.php">Corridas</a></li>
      </ul>
    </div>
  </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div id="content">
      <form method="POST" class="form-horizontal" action="../scripts/persist_passageiro.php">
        <fieldset>
            <legend>Cadastrar passageiro</legend>
            <div class="form-group">
                <label for="cpf" class="control-label col-sm-3">CPF</label>
                <div class="col-sm-4">
                    <input type="text" name="cpf" class="form-control" placeholder="Somente números" pattern="\d{11}" required>
                </div>
            </div>
            <div class="form-group">
                <label for="nome" class="control-label col-sm-3">Nome</label>
                <div class="col-sm-9">
                    <input type="text" name="nome" placeholder="Nome completo" class="form-control" required>
                </div>
            </div>
            <div class="form-group">
                <label for="sexo" class="control-label col-sm-3">Sexo</label>
                <div class="col-sm-4">
                    <select name="sexo" class="form-control" required>
                        <option value="M">Masculino</option>
                        <option value="F">Feminino</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="nascimento" class="control-label col-sm-3">Data de nascimento</label>
                <div class="col-sm-4">
                    <input type="date" name="nascimento" class="form-control" required>
                </div>
            </div>
            <button class="btn btn-default pull-right" type="reset">Limpar</button>
            <button class="btn btn-primary pull-right" type="submit">Submeter</button>
        </fieldset>
      </form>
      </div>
      </div>
      <div class="table-responsive">
        <table class="table table-responsive table-hover">
          <thead>
              <tr>
                <th>Nome</th>
                <th>CPF</th>
                <th>Nascimento</th>
                <th>Sexo</th>
              </tr>
          </thead>
          <tbody>
            <?php
              $result = $db->query("SELECT * FROM passageiros ORDER BY nome");
              while($row = $result->fetch_object()){
                echo "<tr>";
                echo "<td>".$row->nome."</td>";
                echo "<td>".$row->cpf."</td>";
                echo "<td>".$row->nascimento."</td>";
                echo "<td>".$row->sexo."</td>";
              }
            ?>
          </tbody>
        </table>
      </div>
    <div id="content_footer"></div>
    <div id="footer">
      <p><a href="../index.html">Home</a> | <a href="passageiros.php">Passageiros</a> | <a href="motoristas.php">Motoristas</a> | <a href="corridas.php">Corridas</a></p>
      
    </div>
  </div>
</body>
</html>
