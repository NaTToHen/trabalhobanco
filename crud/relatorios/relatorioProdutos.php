<?php
global $conn;
include('../conexao.php');

date_default_timezone_set('America/Sao_Paulo');
$dataAtual = date('d-m-Y H:i');
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produtos - Relatórios</title>
    <link rel="stylesheet" href="../../index.css">
    <link rel="stylesheet" href="../../relatorio.css">
</head>
<body>

<header class="headerPdf">
    <h1 class="tituloPdf">Relatório de Produtos Cadastrados</h1>
    <h3><?php echo $dataAtual ?></h3>
</header>

<main class="main">
    <table class="ler-tabela tabelaRelatorio">
        <thead>
        <tr>
            <th>Id</th>
            <th>Nome</th>
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
                     <td>'.$row['NomeCategoria'].'</td>
                     <td>'.$row['NomeFornecedora'].'</td>
                     <td>R$ '.$row['ValorProduto'].'</td>';
        }
        ?>
        </tbody>
    </table>
</main>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js" integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="../../index.js"></script>
<script src="../relatorio.js"></script>
</body>
</html>