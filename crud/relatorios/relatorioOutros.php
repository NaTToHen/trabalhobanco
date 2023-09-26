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
    <h1 class="tituloPdf">Relatório de Categorias/Fornecedoras</h1>
    <h3><?php echo $dataAtual ?></h3>
</header>

<main class="main">
    <h1 style="font-size: 20px">Fornecedoras</h1>
    <table class="ler-tabela tabelaRelatorio">
        <thead>
        <tr>
            <th>Id</th>
            <th>Nome</th>
            <th>Endereco</th>
        </tr>
        </thead>
        <tbody>
        <?php
            $sqlFornecedora = "CALL listarFornecedorEndereco()";
            $resultFornecedora = $conn->query($sqlFornecedora);
            while ($row = mysqli_fetch_array($resultFornecedora)) {
                $idFornecedora = $row['idFornecedora'];
        ?>
                  <tr class="linhaTabela">
                     <td><?php echo $row['idFornecedora'] ?></td>
                     <td><?php echo $row['nome'] ?></td>
                     <td><?php echo $row['cidade'].'/'.$row['estado'] ?></td>
                  </tr>
        <?php
            }
            $resultFornecedora->close();
            $conn->next_result();
        ?>
        </tbody>
    </table>
    <h1 style="font-size: 20px; margin-top: 50px;">Categorias</h1>
    <table class="ler-tabela tabelaRelatorio">
        <thead>
        <tr>
            <th>Id</th>
            <th>Nome</th>
        </tr>
        </thead>
        <tbody>
        <?php
        $resultCategoria = $conn->query("CALL listarCategorias()");
        while ($row = $resultCategoria->fetch_array()) {
            ?>
            <tr class="linhaTabela">
                <td><?php echo $row['idCategoria'] ?></td>
                <td><?php echo $row['nome'] ?></td>
            </tr>
            <?php
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