<?php
    include 'conexao.php';
    global $conn;

    if(isset($_GET['id'])) {
        $id = $_GET['id'];

        $sqlProduto = $conn->query("SELECT * FROM Produto WHERE idProduto = '$id'");
        while ($produto = $sqlProduto->fetch_array()) {
            $nome = $produto['nome'];
            $desc = $produto['descricao'];
            $valor = $produto['valor'];
        }
    }

?>


<!DOCTYPE html>
<html lang="pt-br">
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
       <form action="lib/edita.php" method="post" class="edita">
           <input type="hidden" value="<?php echo $id ?>" name="id">
           <input type="text" placeholder="nome" name="nome" required value="<?php echo $nome ?>">
           <input type="text" placeholder="descrição" name="descricao" required value="<?php echo $desc ?>">
           <input type="number" step="0.01" min="0" placeholder="valor" name="valor" required value="<?php echo $valor ?>">
           <select class="select-form" name="categoria" required>
               <option value="" disabled selected>Selecione a categoria</option>
               <?php
               $sqlCategoria = "SELECT idCategoria, nome FROM Categoria ORDER BY idCategoria DESC";
               $resultCategoria = $conn->query($sqlCategoria);
               while ($Categoria = mysqli_fetch_array($resultCategoria)) {
                   ?>
                   <option value="<?php echo $Categoria['idCategoria'] ?>"><?php echo $Categoria['nome'] ?></option>
               <?php } ?>
           </select>
           <select class="select-form" name="fornecedora" required>
               <option value="" disabled selected>Selecione a fornecedora</option>
               <?php
               $sqlFornecedora = "SELECT idFornecedora, nome FROM Fornecedora ORDER BY idFornecedora DESC";
               $resultFornecedora = $conn->query($sqlFornecedora);
               while ($Fornecedora = mysqli_fetch_array($resultFornecedora)) {
                   ?>
                   <option value="<?php echo $Fornecedora['idFornecedora'] ?>"><?php echo $Fornecedora['nome'] ?></option>
               <?php } ?>
           </select>
           <select class="select-form" name="endereco" required>
               <option value="" disabled selected>Selecione o endereço</option>
               <?php
               $sqlEndereco = "SELECT idEnderecoFabri, cidade, estado, rua FROM EnderecoFabri ORDER BY idEnderecoFabri DESC";
               $resultEndereco = $conn->query($sqlEndereco);
               while ($EnderecoFabri = mysqli_fetch_array($resultEndereco)) {
                   ?>
                   <option value="<?php echo $EnderecoFabri['idEnderecoFabri'] ?>"><?php echo $EnderecoFabri['rua'].', '.$EnderecoFabri['cidade'].' - '.$EnderecoFabri['estado'] ?></option>
               <?php } ?>
           </select>
           <button type="submit" class="btnEditar">Editar</button>
       </form>
   </main>

   <script src="../index.js"></script>
</body>
</html>