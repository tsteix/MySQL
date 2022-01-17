 -- criando banco de dados.
CREATE DATABASE db_generation_game_online;

   -- seleção do banco de dados a ser utilizado.
USE db_generation_game_online;

-- criação da tabela Classe com 3 tipos de dados.
CREATE TABLE tb_classe(
	id_classe INT AUTO_INCREMENT,
    classe VARCHAR(25) NOT NULL,
	elemento VARCHAR(15) NOT NULL,
    PRIMARY KEY(id_classe)
);

-- criação da tabela Personagem com 5 tipos de dados.
CREATE TABLE tb_personagem(
	id_personagem BIGINT AUTO_INCREMENT,
    nome VARCHAR(25) NOT NULL,
    ataque DECIMAL(10,2),
	defesa DECIMAL(10,2), 
    classe INT NOT NULL,
    
	PRIMARY KEY (id_personagem),
    FOREIGN KEY (classe) REFERENCES tb_classe (id_classe)
);

   -- insert de dados na tabela classe (5 diferentes.
INSERT INTO tb_classe (classe, elemento)
	VALUE ("Human","Fogo"),
    ("Elfo","Terra"),
    ("Fairy","Ar"),
    ("Mage","Energia"),
    ("Druid","Água");
    
    -- insert de dados na tabela personagem.
INSERT INTO tb_personagem (nome, ataque, defesa, classe)
	VALUE ("Drakus","7000.00","3200.00","1"),
    ("Shinon","3000.00","1099.00","1"),
    ("Anko","2090.00","900.00","3"),
    ("Uchidan","1900.00","2750.00","2"),
    ("Bot2","1750.00","1900.00","4"),
    ("Cerberus","2100.00","2900.00","4"),
    ("Odyssey","3000.00","1907.00","4"),
    ("Gainom","2050.00","1500.00","5");
     
     
	-- select para "filtrar" os dados.
		-- ATAQUE MAIOR QUE 2000.
SELECT * FROM tb_personagem WHERE ataque >2000.00;
		-- DEFESA ENTRE 1000 E 2000.
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
		-- SELECT LIKE - PERSONAGENS COM A LETRA "C".
SELECT * FROM tb_personagem WHERE nome LIKE "%C%";


    -- fazer um Inner Join das duas tabelas
SELECT * FROM tb_classe
INNER JOIN tb_personagem
ON tb_personagem.classe = tb_classe.id_classe;
	
    
    -- Select que busca todos os personagem de uma classe específica
SELECT * FROM tb_personagem WHERE classe = 1;


