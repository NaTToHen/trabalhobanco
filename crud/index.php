<?php
global $conn;
include('conexao.php');
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
      <table class="ler-tabela">
         <thead>
            <tr>
               <th>Id</th>
               <th>Nome</th>
               <th>Desc</th>
               <th>Categoria</th>
               <th>Fornecedora</th>
               <th>Valor</th>
            </tr>
         </thead>
         <tbody>
            <?php
            $sqlProduto = "SELECT * FROM ViewProduto ORDER BY idProduto ASC";
            $resultProduto = $conn->query($sqlProduto);
            while ($row = mysqli_fetch_array($resultProduto)) {
               $idProduto = $row['idProduto'];
               echo '
                  <tr class="linhaTabela">
                     <td>'.$row['idProduto'].'</td>
                     <td>'.$row['NomeProduto'].'</td>
                     <td>'.$row['DescricaoProduto'].'</td>
                     <td>'.$row['NomeCategoria'].'</td>
                     <td>'.$row['NomeFornecedora'].'</td>
                     <td>R$ '.$row['ValorProduto'].'</td>';
            }
            ?>
         </tbody>
      </table>
   </main>
   <p class="valorTotal">Valor total: RS 5000.00 </p>

   <script src="../index.js"></script>
</body>
</html>