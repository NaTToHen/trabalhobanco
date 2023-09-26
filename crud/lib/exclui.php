<?php

global $conn;
include('../conexao.php');
$id = $_GET['id'];

$nome = $conn->query("SELECT nome FROM Produto WHERE idProduto = '$id'");
echo $nome;