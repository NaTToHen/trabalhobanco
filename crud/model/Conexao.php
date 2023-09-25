<?php

class Conexao {
   private $host = "localhost";
    private $db_name = "trabalhobanco";
    private $username = "root";
    private $password = "";
    private $conn;

    public function __construct() {
      try {
         $this->conn = new PDO(
            "mysql:host={$this->host};dbname={$this->db_name}",
            $this->username,
            $this->password
         );
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      } catch (PDOException $exception) {
         echo "Erro de conexão: " . $exception->getMessage();
      }
   }

   public function mostraDados($tabela, $id) {
      try {
         $sql = "SELECT * FROM {$tabela} ORDER BY {$id} DESC";
         $stmt = $this->conn->query($sql);
         return $stmt->fetchAll(PDO::FETCH_ASSOC);
      } catch (PDOException $exception) {
         echo "Erro ao buscar dados no banco: " . $exception->getMessage();
         return array();
      }
    }
}