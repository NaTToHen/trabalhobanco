/* Delimitador alterado para ; */
/* Conectando em 127.0.0.1 via MariaDB or MySQL (TCP/IP), usuário root, usando a senha: No... */
SELECT CONNECTION_ID();
SHOW VARIABLES;
/* CharacterSet: utf8mb4 */
SHOW /*!50002 GLOBAL */ STATUS;
SELECT NOW();
/* Conectado. Thread-ID: 8 */
/* Reading function definitions from C:\Program Files\HeidiSQL\functions-mysql.ini */
SHOW TABLES FROM `information_schema`;
SHOW DATABASES;
SHOW OPEN TABLES FROM trabalhobanco WHERE `in_use`!=0;
USE `trabalhobanco`;
/* Entrando na sessão "Unnamed" */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='trabalhobanco';
SHOW TABLE STATUS FROM `trabalhobanco`;
SHOW FUNCTION STATUS WHERE `Db`='trabalhobanco';
SHOW PROCEDURE STATUS WHERE `Db`='trabalhobanco';
SHOW TRIGGERS FROM `trabalhobanco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='trabalhobanco';
/* Conectando em 127.0.0.1 via MariaDB or MySQL (TCP/IP), usuário root, usando a senha: No... */
SELECT CONNECTION_ID();
SHOW VARIABLES;
/* CharacterSet: utf8mb4 */
SHOW /*!50002 GLOBAL */ STATUS;
SELECT NOW();
/* Conectado. Thread-ID: 9 */
/* Reading function definitions from C:\Program Files\HeidiSQL\functions-mysql.ini */
SHOW TABLES FROM `information_schema`;
/* Conectando em 127.0.0.1 via MariaDB or MySQL (TCP/IP), usuário root, usando a senha: No... */
SELECT CONNECTION_ID();
SHOW VARIABLES;
/* CharacterSet: utf8mb4 */
SHOW /*!50002 GLOBAL */ STATUS;
SELECT NOW();
/* Conectado. Thread-ID: 10 */
/* Reading function definitions from C:\Program Files\HeidiSQL\functions-mysql.ini */
SHOW TABLES FROM `information_schema`;
SHOW DATABASES;
SHOW OPEN TABLES FROM trabalhobanco WHERE `in_use`!=0;
USE `trabalhobanco`;
/* Entrando na sessão "Unnamed" */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='trabalhobanco';
SHOW TABLE STATUS FROM `trabalhobanco`;
SHOW FUNCTION STATUS WHERE `Db`='trabalhobanco';
SHOW PROCEDURE STATUS WHERE `Db`='trabalhobanco';
SHOW TRIGGERS FROM `trabalhobanco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='trabalhobanco';
/* Redimensionando controles para tela DPI: 100% */
SHOW DATABASES;
CREATE TABLE Categoria(
	idCategoria INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50)
);
INSERT INTO Categoria(nome) VALUES
('Alimento'),('Roupa'),('Sapato'),('Eletreonico');
/* Registros afetados: 4  Registros encontrados: 0  Avisos: 0  Duração de 2 consultas: 0,030 seg. */
/* Entrando na sessão "Unnamed" */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='trabalhobanco';
SHOW TABLE STATUS FROM `trabalhobanco`;
SHOW FUNCTION STATUS WHERE `Db`='trabalhobanco';
SHOW PROCEDURE STATUS WHERE `Db`='trabalhobanco';
SHOW TRIGGERS FROM `trabalhobanco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='trabalhobanco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='categoria' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `categoria` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='categoria'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='categoria'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW ENGINES;
SHOW COLLATION;
SHOW CREATE TABLE `trabalhobanco`.`categoria`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='categoria' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `trabalhobanco`.`categoria` LIMIT 1000;
UPDATE `trabalhobanco`.`categoria` SET `nome`='Eletronico' WHERE  `idCategoria`=4;
SELECT `idCategoria`, `nome` FROM `trabalhobanco`.`categoria` WHERE  `idCategoria`=4;
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
/* Registros afetados: 5  Registros encontrados: 0  Avisos: 0  Duração de 2 consultas: 0,016 seg. */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='trabalhobanco';
SHOW TABLE STATUS FROM `trabalhobanco`;
SHOW FUNCTION STATUS WHERE `Db`='trabalhobanco';
SHOW PROCEDURE STATUS WHERE `Db`='trabalhobanco';
SHOW TRIGGERS FROM `trabalhobanco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='trabalhobanco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='categoria' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `categoria` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='categoria'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='categoria'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `trabalhobanco`.`categoria`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='categoria' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
/* Entrando na sessão "Unnamed" */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='enderecofabri' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `enderecofabri` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='enderecofabri'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='enderecofabri'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `trabalhobanco`.`enderecofabri`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='enderecofabri' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `trabalhobanco`.`enderecofabri` LIMIT 1000;
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
/* Registros afetados: 4  Registros encontrados: 0  Avisos: 0  Duração de 2 consultas: 0,047 seg. */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='trabalhobanco';
SHOW TABLE STATUS FROM `trabalhobanco`;
SHOW FUNCTION STATUS WHERE `Db`='trabalhobanco';
SHOW PROCEDURE STATUS WHERE `Db`='trabalhobanco';
SHOW TRIGGERS FROM `trabalhobanco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='trabalhobanco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='enderecofabri' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `enderecofabri` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='enderecofabri'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='enderecofabri'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `trabalhobanco`.`enderecofabri`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='enderecofabri' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
/* Entrando na sessão "Unnamed" */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='enderecofisico' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `enderecofisico` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='enderecofisico'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='enderecofisico'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `trabalhobanco`.`enderecofisico`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='enderecofisico' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `trabalhobanco`.`enderecofisico` LIMIT 1000;
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
   ('Perdigão', 4),
   ('Adidas', 5);
/* Erro SQL (1452): Cannot add or update a child row: a foreign key constraint fails (`trabalhobanco`.`fornecedora`, CONSTRAINT `fornecedora_ibfk_1` FOREIGN KEY (`fkEnderecoFisico`) REFERENCES `enderecofisico` (`idEnderecoFisico`)) */
/* Registros afetados: 0  Registros encontrados: 0  Avisos: 0  Duração de 1 de 2 consultas: 0,062 seg. */
CREATE TABLE EnderecoFisico(
	idEnderecoFisico INT AUTO_INCREMENT PRIMARY KEY,
	rua VARCHAR(50),
	bairro VARCHAR(50),
	cidade VARCHAR(50),
	estado VARCHAR(50)
);
/* Erro SQL (1050): Table 'enderecofisico' already exists */
/* Registros afetados: 0  Registros encontrados: 0  Avisos: 0  Duração de 0 de 4 consultas: 0,000 seg. */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='trabalhobanco';
SHOW TABLE STATUS FROM `trabalhobanco`;
SHOW FUNCTION STATUS WHERE `Db`='trabalhobanco';
SHOW PROCEDURE STATUS WHERE `Db`='trabalhobanco';
SHOW TRIGGERS FROM `trabalhobanco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='trabalhobanco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='enderecofisico' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `enderecofisico` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='enderecofisico'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='enderecofisico'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `trabalhobanco`.`enderecofisico`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='enderecofisico' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
/* Entrando na sessão "Unnamed" */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='fornecedora' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `fornecedora` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='fornecedora'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='fornecedora'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `trabalhobanco`.`fornecedora`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='fornecedora' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `trabalhobanco`.`fornecedora` LIMIT 1000;
SHOW CREATE TABLE `trabalhobanco`.`enderecofisico`;
SELECT * FROM `trabalhobanco`.`enderecofisico` LIMIT 1000;
CREATE TABLE Fornecedora(
	idFornecedora INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50),
	fkEnderecoFisico INT,
	FOREIGN KEY (fkEnderecoFisico) REFERENCES EnderecoFisico(idEnderecoFisico)
);
/* Erro SQL (1050): Table 'fornecedora' already exists */
/* Registros afetados: 0  Registros encontrados: 0  Avisos: 0  Duração de 0 de 2 consultas: 0,000 seg. */
INSERT INTO Fornecedora (nome, fkEnderecoFisico) VALUES
   ('Nike', 1),
   ('HP', 2),
   ('Sadia', 3),
   ('Perdigão', 4);
/* Registros afetados: 4  Registros encontrados: 0  Avisos: 0  Duração de 1 consulta: 0,046 seg. */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='trabalhobanco';
SHOW TABLE STATUS FROM `trabalhobanco`;
SHOW FUNCTION STATUS WHERE `Db`='trabalhobanco';
SHOW PROCEDURE STATUS WHERE `Db`='trabalhobanco';
SHOW TRIGGERS FROM `trabalhobanco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='trabalhobanco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='enderecofisico' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `enderecofisico` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='enderecofisico'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='enderecofisico'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `trabalhobanco`.`enderecofisico`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='enderecofisico' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
/* Entrando na sessão "Unnamed" */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='fornecedora' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `fornecedora` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='fornecedora'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='fornecedora'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `trabalhobanco`.`fornecedora`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='fornecedora' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `trabalhobanco`.`fornecedora` LIMIT 1000;
DROP TABLE Fornecedora;
/* Registros afetados: 0  Registros encontrados: 0  Avisos: 0  Duração de 1 consulta: 0,047 seg. */
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
/* Registros afetados: 4  Registros encontrados: 0  Avisos: 0  Duração de 2 consultas: 0,032 seg. */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='trabalhobanco';
SHOW TABLE STATUS FROM `trabalhobanco`;
SHOW FUNCTION STATUS WHERE `Db`='trabalhobanco';
SHOW PROCEDURE STATUS WHERE `Db`='trabalhobanco';
SHOW TRIGGERS FROM `trabalhobanco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='trabalhobanco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='fornecedora' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `fornecedora` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='fornecedora'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='fornecedora'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `trabalhobanco`.`fornecedora`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='fornecedora' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
/* Entrando na sessão "Unnamed" */
SHOW CREATE TABLE `trabalhobanco`.`fornecedora`;
SELECT * FROM `trabalhobanco`.`fornecedora` LIMIT 1000;
CREATE TABLE Produto(
	idProduto INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50),
	valor DOUBLE(50),
	descricao TEXT,
	fkCategoria INT,
	fkFornecedora INT,
	fkEnderecoFabri INT
);
/* Erro SQL (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '),
	descricao TEXT,
	fkCategoria INT,
	fkFornecedora INT,
	fkEnderecoFabri I' at line 4 */
/* Registros afetados: 0  Registros encontrados: 0  Avisos: 0  Duração de 0 de 1 consulta: 0,000 seg. */
CREATE TABLE Produto(
	idProduto INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50),
	valor DOUBLE(50),
	descricao TEXT,
	fkCategoria INT,
	fkFornecedora INT,
	fkEnderecoFabri INT,
	FOREIGN KEY (fkCategoria) REFERENCES Categoria(idCategoria),
	FOREIGN KEY (fkFornecedora) REFERENCES Fornecedora(idFornecedora),
	FOREIGN KEY (fkEnderecoFabri) REFERENCES EnderecoFabri(idEnderecoFabri)
);
/* Erro SQL (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '),
	descricao TEXT,
	fkCategoria INT,
	fkFornecedora INT,
	fkEnderecoFabri I' at line 4 */
/* Registros afetados: 0  Registros encontrados: 0  Avisos: 0  Duração de 0 de 1 consulta: 0,000 seg. */
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
/* Registros afetados: 0  Registros encontrados: 0  Avisos: 1  Duração de 1 consulta: 0,031 seg. */
SHOW WARNINGS LIMIT 5;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='trabalhobanco';
SHOW TABLE STATUS FROM `trabalhobanco`;
SHOW FUNCTION STATUS WHERE `Db`='trabalhobanco';
SHOW PROCEDURE STATUS WHERE `Db`='trabalhobanco';
SHOW TRIGGERS FROM `trabalhobanco`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='trabalhobanco';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='fornecedora' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `fornecedora` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='fornecedora'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='fornecedora'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `trabalhobanco`.`fornecedora`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='fornecedora' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
/* Entrando na sessão "Unnamed" */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='produto' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `produto` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='produto'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='produto'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `trabalhobanco`.`produto`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='produto' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
INSERT INTO Produto (nome, valor, descricao, fkCategoria, fkFornecedora, fkEnderecoFabri) VALUES
   ('Produto 1', 29.99, 'Descrição do Produto 1', 1, 1, 1),
   ('Produto 2', 49.99, 'Descrição do Produto 2', 2, 2, 2),
   ('Produto 3', 19.99, 'Descrição do Produto 3', 1, 3, 3),
   ('Produto 4', 39.99, 'Descrição do Produto 4', 3, 4, 4);
/* Registros afetados: 4  Registros encontrados: 0  Avisos: 0  Duração de 1 consulta: 0,031 seg. */
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='trabalhobanco' AND TABLE_NAME='enderecofabri' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `enderecofabri` FROM `trabalhobanco`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='trabalhobanco'   AND TABLE_NAME='enderecofabri'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='trabalhobanco'   AND TABLE_NAME='enderecofabri'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `trabalhobanco`.`enderecofabri`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='trabalhobanco' AND tc.TABLE_NAME='enderecofabri' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `trabalhobanco`.`enderecofabri` LIMIT 1000;
SHOW CREATE TABLE `trabalhobanco`.`produto`;
SELECT  `idProduto`,  `nome`,  `valor`, LEFT(`descricao`, 256),  `fkCategoria`,  `fkFornecedora`,  `fkEnderecoFabri` FROM `trabalhobanco`.`produto` LIMIT 1000;
SHOW CHARSET;
SELECT 'trabalhobanco' AS `Database`, 'categoria' AS `Table`, 4 AS `Rows`, 0 AS `Duration`;
/*!40101 SET @OLD_LOCAL_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
SELECT 'trabalhobanco' AS `Database`, 'categoria' AS `Table`, 4 AS `Rows`, 0 AS `Duration`;
/*!40101 SET @OLD_LOCAL_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
SELECT 'trabalhobanco' AS `Database`, 'enderecofabri' AS `Table`, 5 AS `Rows`, 0 AS `Duration`;
SELECT 'trabalhobanco' AS `Database`, 'enderecofisico' AS `Table`, 4 AS `Rows`, 0 AS `Duration`;
SELECT 'trabalhobanco' AS `Database`, 'fornecedora' AS `Table`, 4 AS `Rows`, 0 AS `Duration`;
SELECT 'trabalhobanco' AS `Database`, 'produto' AS `Table`, 4 AS `Rows`, 0 AS `Duration`;
/*!40101 SET SQL_MODE=IFNULL(@OLD_LOCAL_SQL_MODE, '') */;
/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
SHOW VARIABLES;
SHOW CREATE DATABASE `trabalhobanco`;