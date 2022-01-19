 -- CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;


-- CRIAÇÃO DAS TABELAS tb_categoria E tb_pizza
CREATE TABLE tb_categoria(
	id_categoria BIGINT NOT NULL AUTO_INCREMENT,
    categoria VARCHAR(30) NOT NULL,
    disponibilidade BOOLEAN NOT NULL,
	
    PRIMARY KEY (id_categoria)
);


CREATE TABLE tb_pizza(
	id_pizza BIGINT AUTO_INCREMENT,
    sabor VARCHAR(15) NOT NULL,
    descricao TEXT,
    massa VARCHAR(10),
    preco DECIMAL(10,2) NOT NULL,
    categoria BIGINT NOT NULL,
    
    PRIMARY KEY(id_pizza),
	FOREIGN KEY (categoria)
    REFERENCES tb_categoria(id_categoria)
);


  INSERT INTO tb_categoria (categoria, disponibilidade) 
VALUE ("Pizza Tradicional - Grande","1"),
	("Pizza Especial - Grande","1"),
	("Pizza Tradicional - Broto","0"),
	("Pizza Doce - Broto","1"),
    ("Bebidas","0");
    
   
   INSERT INTO tb_pizza (sabor, descricao, massa, preco, categoria)
	VALUE ("Frango","Frango e Catupiry Original","Fina","54.90","2"),
	("Mussarela","Musarela e Oregano","Média","39.90","1"),
	("Calabresa","Calabresa e Cebola","Grossa","39.90","1"),
	("Portuguesa","Presunto, Mussarela, Ovo e Tomate","Grossa","49.90","1"),
	("Carne Seca","Carne Seca Desfiada, Cebola e Catupiry","Média","61.90","2"),
	("Brigadeiro","Chocolate e Granulado","Grossa","34.90","4"),
	("Prestigio","Chocolate e Côco raladlo","Média","39.90","4"),
	("Marguerita","Mussarela, Parmesão e Manjericão","Média","31.90","3");
     
		-- select que retorne os Produtos com o valor maior do que 45 reais.
     SELECT * FROM tb_pizza WHERE preco >50;
     
		-- select trazendo os Produtos com valor entre 29 e 60 reais.
	SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;
    
		-- select utilizando LIKE buscando os Produtos com a letra C.
	SELECT * FROM tb_pizza WHERE sabor LIKE "%C%";
		
        -- select com Inner join entre tabela categoria e pizza.
	SELECT * FROM tb_categoria
    INNER JOIN tb_pizza
    ON tb_pizza.categoria = tb_categoria.id_categoria;
    
		-- Selecionar só pizzas doces
	SELECT * FROM tb_pizza WHERE categoria = 4;
   
   describe tb_pizza
   
		
   