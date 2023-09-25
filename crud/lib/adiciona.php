<?php
global $conn;
include('../conexao.php');

$id = $_POST['id'];
$nome = $_POST['nome'];
$desc = $_POST['descricao'];
$valor = $_POST['valor'];
$fornecedora = $_POST['fornecedora'];
$categoria = $_POST['categoria'];
$endereco = $_POST['endereco'];

$insere = $conn->query("INSERT INTO Produto(nome, descricao, valor, fkFornecedora, fkCategoria, fkEnderecoFabri)
VALUES ('$nome','$desc','$valor','$fornecedora','$categoria','$endereco')");

if ($insere->num_rows > 0) {
    header('Location: ../index.php?alterado=false');
} else {
    header('Location: ../index.php?alterado=true');
}

