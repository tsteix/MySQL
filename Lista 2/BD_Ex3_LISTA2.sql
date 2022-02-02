	-- CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

-- CRIAÇÃO DAS TABELAS tb_produto e tb_categoria
CREATE TABLE tb_categoria(
	id_categoria BIGINT NOT NULL AUTO_INCREMENT,
    categoria VARCHAR(25) NOT NULL,
    apresentacao VARCHAR (25),
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produto(
	id_produto BIGINT AUTO_INCREMENT,
    medicamento VARCHAR(30) NOT NULL,
    laboratorio VARCHAR(20),
	preco DECIMAL(10,2) NOT NULL,
    quant BIGINT NOT NULL,
    
    PRIMARY KEY(id_produto),
	FOREIGN KEY (quant) REFERENCES tb_categoria(id_categoria)
);


  INSERT INTO tb_categoria (categoria, apresentacao) 
VALUE ("Similar","Comprimidos Revestidos"),
	("Generico","Comprimidos Revestidos"),
	("Referência","Comprimido"),
	("Referência","Xarope"),
    ("Generico","Pomada");
    
      INSERT INTO tb_produto (medicamento, laboratorio, preco, quant) 
VALUE ("Dorflex","Sanofi","15.90","10"),
("Dipirona Sódica","Pratti-Donaduzzi","03.99","20"),
("Cetobeta","Delta","12.29","05"),
("Doralgina","Neo Quimica","03.99","30"),
("Neosaldina","Takeda","05.90","35"),
("Vick 44E","P&G","22.35","25"),
("Bepantol","Bayer","19.59","15"),
("Paracetamol","EMS","04.00","50");
	
	