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
    <div class="relatorio">
        <h1 class="tituloRelatorio">Produtos cadastrados</h1>
        <button class="btnRelatorio"><a href="relatorios/relatorioProdutos.php" class="linkRelatorio">Gerar pdf</a></button>
    </div>

    <div class="relatorio">
        <h1 class="tituloRelatorio">Outras tabelas</h1>
        <button class="btnRelatorio"><a href="relatorios/relatorioOutros.php" class="linkRelatorio">Gerar pdf</a></button>
    </div>

    <div class="relatorio">
        <h1 class="tituloRelatorio">Endereços cadastrados</h1>
        <button class="btnRelatorio"><a href="relatorios/relatorioEnderecos.php" class="linkRelatorio">Gerar pdf</a></button>
    </div>
</main>

<script src="../index.js"></script>
</body>
</html>