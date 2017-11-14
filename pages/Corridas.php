<!DOCTYPE HTML>
<?php include '../scripts/database.php'; ?>
<html>

<head>
  <title>Corridas</title>
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
    <div id="menubar" class="collapse navbar-collapse">
      <ul id="menu" class="nav navbar-nav">
        <li><a href="../index.php">Home</a></li>
        <li><a href="Passageiros.php">Passageiros</a></li>
        <li><a href="Motoristas.php">Motoristas</a></li>
        <li class="selected"><a href="Corridas.php">Corridas</a></li>
      </ul>
    </div>
  </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div id="content">
      <form method="POST" class="form-horizontal" action="../scripts/persist_passageiro.php">
        <fieldset>
            <legend>Cadastrar Corrida</legend>
            <div class="form-group">
                <label for="motorista" class="control-label col-sm-3">motorista</label>
                <div class="col-sm-4">
                    <select name="motorista" class="form-control" required>
                        <?php
                          $result = $db->query("SELECT * FROM motoristas ORDER BY nome");
                          while($row = $result->fetch_object()){
                            echo "<option value=".$row->cpf.">".$row->nome."</option>";
                          }                            
                        ?>
                    </select>
                </div>
            </div>
            <div class="form-group">
              <label for="passageiro" class="control-label col-sm-3">passageiro</label>
              <div class="col-sm-4">
                  <select name="passageiro" class="form-control" required>
                      <?php
                        $result = $db->query("SELECT * FROM passageiros ORDER BY nome");
                        while($row = $result->fetch_object()){
                          echo "<option value=".$row->cpf.">".$row->nome."</option>";
                        }                            
                      ?>
                  </select>
              </div>
            </div>
            <div class="form-group">
                <label for="valor" class="control-label col-sm-3">valor</label>
                <div class="col-sm-4">
                    <input type="text" name="valor" class="form-control" placeholder="valor" required>
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
                <th>passageiro</th>
                <th>motorista</th>
                <th>valor</th>
              </tr>
          </thead>
          <tbody>
            <?php
              $result = $db->query("SELECT motoristas.nome as mnome,passageiros.nome as pnome,valor FROM corridas inner join passageiros on passageiros.cpf=cpf_pas inner join motoristas on cpf_mot=motoristas.cpf ORDER BY passageiros.nome;");
              while($row = $result->fetch_object()){
                echo "<tr>";
                echo "<td>".$row->mnome."</td>";
                echo "<td>".$row->pnome."</td>";
                echo "<td>".$row->valor."</td>";
              }
            ?>
          </tbody>
        </table>
    <div id="content_footer"></div>
    <div id="footer">
      <p><a href="../index.html">Home</a> | <a href="passageiros.php">Passageiros</a> | <a href="motoristas.php">Motoristas</a> | <a href="corridas.php">Corridas</a></p>
      
    </div>
  </div>
</div>
</body>
</html>
