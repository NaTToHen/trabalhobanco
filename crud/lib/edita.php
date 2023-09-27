<?php
global $conn;
include('../conexao.php');

var_dump($_POST['id']);

if(!empty($_POST['id'])) {

    $id = $_POST['id'];
    $nome = $_POST['nome'];
    $desc = $_POST['descricao'];
    $valor = $_POST['valor'];
    $fornecedora = $_POST['fornecedora'];
    $categoria = $_POST['categoria'];
    $endereco = $_POST['endereco'];

    if (isset($id, $nome, $desc, $valor, $fornecedora, $categoria, $endereco)) {
        $insere = $conn->query("UPDATE Produto SET nome='$nome', descricao='$desc', valor='$valor',
                   fkFornecedora='$fornecedora', fkCategoria='$categoria', fkEnderecoFabri='$endereco' WHERE idProduto='$id'");

        if ($insere->num_rows > 0) {
            header('Location: ../index.php?editado=false');
        } else {
            header('Location: ../index.php?editado=true');
        }
    } else {
        header('Location: ../index.php?editado=false');
    }
} else {
    header('Location: ../index.php?editado=false');
}




