CREATE TABLE Categoria(
	idCategoria INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50)
);

INSERT INTO Categoria(nome) VALUES
	('Alimento'),('Roupa'),('Sapato'),('Eletreonico');
	


CREATE TABLE EnderecoFabri(
	idEnderecoFabri INT AUTO_INCREMENT PRIMARY KEY,
	rua VARCHAR(50),
	bairro VARCHAR(50),
	cidade VARCHAR(50),
	estado VARCHAR(50)
);

INSERT INTO EnderecoFabri (rua, bairro, cidade, estado) VALUES
   ('Rua das Flores', 'Jardim Primavera', 'São Paulo', 'SP'),
   ('Avenida Principal', 'Centro', 'Rio de Janeiro', 'RJ'),
   ('Rua da Praia', 'Praia da Costa', 'Vila Velha', 'ES'),
   ('Rua das Palmeiras', 'Vila Verde', 'Belo Horizonte', 'MG'),
   ('Avenida da Amizade', 'Amizade', 'Fortaleza', 'CE');
   
   
   
   
CREATE TABLE EnderecoFisico(
	idEnderecoFisico INT AUTO_INCREMENT PRIMARY KEY,
	rua VARCHAR(50),
	bairro VARCHAR(50),
	cidade VARCHAR(50),
	estado VARCHAR(50)
);

INSERT INTO EnderecoFisico (rua, bairro, cidade, estado) VALUES
   ('Avenida Gaúcha', 'Centro', 'Porto Alegre', 'RS'),
   ('Rua dos Pinheiros', 'Vila Pinheiro', 'Caxias do Sul', 'RS'),
   ('Avenida Beira-Rio', 'Praia da Beira', 'Pelotas', 'RS'),
   ('Rua das Oliveiras', 'Jardim das Oliveiras', 'Santa Maria', 'RS');
   
   
   
   
CREATE TABLE Fornecedora(
	idFornecedora INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50),
	fkEnderecoFisico INT,
	FOREIGN KEY (fkEnderecoFisico) REFERENCES EnderecoFisico(idEnderecoFisico)
);

INSERT INTO Fornecedora (nome, fkEnderecoFisico) VALUES
   ('Nike', 1),
   ('HP', 2),
   ('Sadia', 3),
   ('Perdigão', 4);
    
    
    
CREATE TABLE Produto(
	idProduto INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50),
	valor DOUBLE(10,2),
	descricao TEXT,
	fkCategoria INT,
	fkFornecedora INT,
	fkEnderecoFabri INT,
	FOREIGN KEY (fkCategoria) REFERENCES Categoria(idCategoria),
	FOREIGN KEY (fkFornecedora) REFERENCES Fornecedora(idFornecedora),
	FOREIGN KEY (fkEnderecoFabri) REFERENCES EnderecoFabri(idEnderecoFabri)
);
    
INSERT INTO Produto (nome, valor, descricao, fkCategoria, fkFornecedora, fkEnderecoFabri) VALUES
   ('Produto 1', 29.99, 'Descrição do Produto 1', 1, 1, 1),
   ('Produto 2', 49.99, 'Descrição do Produto 2', 2, 2, 2),
   ('Produto 3', 19.99, 'Descrição do Produto 3', 1, 3, 3),
   ('Produto 4', 39.99, 'Descrição do Produto 4', 3, 4, 4);    
   

   
CREATE TABLE Total (
   total DECIMAL(10, 2)
);
   
   
CREATE VIEW ViewProduto AS SELECT
   p.idProduto,
   p.nome AS NomeProduto,
   p.valor AS ValorProduto,
   p.descricao AS DescricaoProduto,
   f.nome AS NomeFornecedora,
   c.nome AS NomeCategoria FROM
   Produto p JOIN Fornecedora f ON p.fkFornecedora = f.idFornecedora
	JOIN Categoria c ON p.fkCategoria = c.idCategoria;
   
   
SELECT * FROM ViewProduto;



DELIMITER //
CREATE PROCEDURE listarProdutos()
BEGIN
   SELECT * FROM Produto;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE listarFornecedorEndereco()
BEGIN
    SELECT F.idFornecedora, F.nome, E.rua, E.bairro, E.cidade, E.estado
    FROM Fornecedora AS F
    INNER JOIN EnderecoFisico AS E ON F.fkEnderecoFisico = E.idEnderecoFisico;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE listarCategorias()
BEGIN
   SELECT * FROM Categoria;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE listarEnderecosFabri()
BEGIN
	SELECT * FROM EnderecoFabri;
END //
DELIMITER ;



DELIMITER //
CREATE PROCEDURE listarEnderecosFisicos()
BEGIN
	SELECT * FROM EnderecoFisico;
END //
DELIMITER ;

-- Atualiza valor total dos produtos
DELIMITER //
CREATE TRIGGER atualizaTotal AFTER INSERT ON Produto FOR EACH ROW
BEGIN
   UPDATE Total SET total = (SELECT SUM(valor) FROM Produto);
END;
//
DELIMITER ;



DELIMITER //
CREATE TRIGGER atualizaTotalEditar AFTER UPDATE ON Produto FOR EACH ROW
BEGIN
   UPDATE Total SET total = (SELECT SUM(valor) FROM Produto);
END;
//
DELIMITER ;



DELIMITER //
CREATE TRIGGER atualizaTotalExcluir AFTER DELETE ON Produto FOR EACH ROW
BEGIN
   UPDATE Total SET total = (SELECT SUM(valor) FROM Produto);
END;
//
DELIMITER ;