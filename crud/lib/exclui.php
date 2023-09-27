<?php

global $conn;
include('../conexao.php');
$id = $_POST['id'];

if(isset($id)) {
    $sqlProduto = $conn->query("DELETE FROM Produto WHERE idProduto = '$id'");

    if ($sqlProduto->num_rows > 0) {
        header('Location: ../index.php?excluido=false');
    } else {
        header('Location: ../index.php?excluido=true');
    }
}
