CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produto(
	id_produto BIGINT AUTO_INCREMENT,
    nome VARCHAR(25) NOT NULL,
    marca VARCHAR(10),
	preco DECIMAL(10,2),
    setor VARCHAR(15),  
	PRIMARY KEY (id_produto)
);


INSERT INTO tb_produto (nome, marca, preco, setor)
	VALUE ("Iphone","Apple","4500.00","Telefonia"),
    ("S20 Ultra","Samsung","3899.90","Telefonia"),
    ("Fire Stick TV","Amazon","229.00","Eletronicos"),
    ("Yoga 7I","Lenovo","4899.90","Informatica"),
    ("Echo Dot","Amazon","249.90","Eletronicos"),
    ("Flip 5","JBL","489.90","Som"),
    ("Odyssey G3","Samsung","1599.90","Informatica"),
    ("AirPods","Apple","1459.90","Som");
    
SELECT * FROM tb_produto WHERE preco >500;
SELECT * FROM tb_produto WHERE preco <500;

UPDATE tb_produto SET nome = "Iphone 11"  WHERE id_produto = 1;
SELECT * FROM tb_produto;

