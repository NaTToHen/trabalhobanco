<?php
   include('conexao.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Produtos -Admin</title>
   <link rel="stylesheet" href="../index.css">
</head>
<body>
   <script src="https://www.w3schools.com/lib/w3.js"></script>

   <div w3-include-html="header.php"></div>
      <script>
         w3.includeHTML();
      </script>

   <main class="main">
      <form action="adiciona.php" method="post" class="adiciona">
         <input type="text" placeholder="nome">
         <input type="text" placeholder="descrição">
         <input type="text" placeholder="valor">
         <select class="select-form" name="categoria">
                  <option value="" disabled selected>Selecione a categoria</option>
                  <?php
                  $sqlCategoria = "SELECT idCategoria, nome FROM Categoria ORDER BY idCategoria DESC";
                  $resultCategoria = $conn->query($sqlCategoria);
                  while ($Categoria = mysqli_fetch_array($resultCategoria)) {
                  ?>
                     <option value="<?php echo $Categoria['idCategoria'] ?>"><?php echo $Categoria['nome'] ?></option>
                  <?php } ?>
         </select>
         <select class="select-form" name="fornecedora">
                  <option value="" disabled selected>Selecione a fornecedora</option>
                  <?php
                  $sqlFornecedora = "SELECT idFornecedora, nome FROM Fornecedora ORDER BY idFornecedora DESC";
                  $resultFornecedora = $conn->query($sqlFornecedora);
                  while ($Fornecedora = mysqli_fetch_array($resultFornecedora)) {
                  ?>
                     <option value="<?php echo $Fornecedora['idFornecedora'] ?>"><?php echo $Fornecedora['nome'] ?></option>
                  <?php } ?>
         </select>
         <select class="select-form" name="categoria">
                  <option value="" disabled selected>Selecione o endereço</option>
                  <?php
                  $sqlEndereco = "SELECT idEnderecoFabri, cidade, estado, rua FROM EnderecoFabri ORDER BY idEnderecoFabri DESC";
                  $resultEndereco = $conn->query($sqlEndereco);
                  while ($EnderecoFabri = mysqli_fetch_array($resultEndereco)) {
                  ?>
                     <option value="<?php echo $EnderecoFabri['idEnderecoFabri'] ?>"><?php echo $EnderecoFabri['rua'].', '.$EnderecoFabri['cidade'].' - '.$EnderecoFabri['estado'] ?></option>
                  <?php } ?>
         </select>
         <button type="submit">Adicionar</button>
      </form>
   </main>

   <script src="../index.js"></script>
</body>
</html>