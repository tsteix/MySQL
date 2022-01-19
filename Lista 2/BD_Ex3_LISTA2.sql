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
    lote VARCHAR (20) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade BIGINT NOT NULL,
    
    PRIMARY KEY(id_produto),
	FOREIGN KEY (id_categoria)
    REFERENCES tb_categoria(id_categoria)
);


  INSERT INTO tb_categoria (categoria, apresentacao) 
VALUE ("Similar","Comprimidos Revestidos"),
	("Generico","Comprimidos Revestidos"),
	("Referência","Comprimido"),
	("Referência","Xarope"),
    ("Generico","Pomada");
    
      INSERT INTO tb_produto (medicamento, laboratorio, lote, preco, quantidade) 
VALUE ("Dorflex","Sanofi","OLB23R","15.90","3"),
("Dipirona Sódica","Pratti-Donaduzzi","CRX34EE","03.99","10"),
("Cetobeta","Delta","POM1234","12.29","5"),
("Doralgina","Neo Quimica","DOR4321","03.99","4"),
("Neosaldina","Takeda","NZSK879OUY","05.90","8"),
("Vick 44E","P&G","XYERPTAS3","22.35","2"),
("Bepantol","Bayer","4OPOS34","19.59","1"),
("Paracetamol","EMS","CPP012","04.00","6");
	
	