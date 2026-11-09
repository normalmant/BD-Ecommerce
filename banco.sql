CREATE TABLE Produto 
( 
 ID INT PRIMARY KEY AUTO_INCREMENT,  
 Preco FLOAT(2,2) NOT NULL,  
 Categoria VARCHAR(100) NOT NULL,  
 Nome VARCHAR(100) NOT NULL,  
 Quantidade INT,  
 Descricao TEXT NOT NULL 
); 

CREATE TABLE Compra 
( 
 ID INT PRIMARY KEY,  
 idCliente INT NOT NULL,  
 data DATETIME NOT NULL,  
 forma_pag VARCHAR (50)NOT NULL,  
 Total INT NOT NULL
); 

CREATE TABLE Cliente 
( 
 ID INT PRIMARY KEY,  
 Nome VARCHAR(100) NOT NULL,  
 CPF INT NOT NULL,  
 UNIQUE (CPF)
); 

CREATE TABLE Endereco 
( 
 ID INT PRIMARY KEY,  
 idCliente INT NOT NULL,  
 Rua VARCHAR(150) NOT NULL,  
 CEP CHAR (9)NOT NULL,  
 Numero INT NOT NULL,  
 Bairro VARCHAR(150) NOT NULL,  
 Cidade VARCHAR(100)NOT NULL,  
 Estado CHAR(2) NOT NULL,  
 Complemento VARCHAR(100) NOT NULL
); 

CREATE TABLE Produto_compra 
( 
 ID_compra INT,  
 ID_produto INT,  
 valor_unitario FLOAT(2,2),  
 quantidade INT,  
 desconto INT,  
 ID_produtoCompra INT PRIMARY KEY AUTO_INCREMENT
); 

CREATE TABLE Compra_endereco 
( 
 ID_compra INT,  
 ID_endereco INT,  
 ID_compraEndereco INT PRIMARY KEY AUTO_INCREMENT
); 

ALTER TABLE Compra ADD FOREIGN KEY(idCliente) REFERENCES Cliente (ID);
ALTER TABLE Endereco ADD FOREIGN KEY(idCliente) REFERENCES Cliente (ID);
ALTER TABLE Produto_compra ADD FOREIGN KEY(ID_compra) REFERENCES Produto (ID);
ALTER TABLE Produto_compra ADD FOREIGN KEY(ID_produto) REFERENCES Compra (ID);
ALTER TABLE Compra_endereco ADD FOREIGN KEY(ID_compra) REFERENCES Endereco (ID);
ALTER TABLE Compra_endereco ADD FOREIGN KEY(ID_endereco) REFERENCES Compra (ID);




