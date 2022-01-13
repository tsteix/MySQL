CREATE DATABASE db_rh;

USE db_rh;


CREATE TABLE tb_funcionario(
	nome VARCHAR(25) not null,
    cpf BIGINT(11) NOT NULL,
    funcao VARCHAR(20),
    salario FLOAT(10,2),
    matricula BIGINT AUTO_INCREMENT,
	PRIMARY KEY (matricula)
);


select * from tb_funcionario;


INSERT INTO tb_funcionario (nome, cpf, funcao, salario)
VALUES ('Edgar Boss','0000000001','Semi - Deus','6500'),
('Evelyn','222552522','Dev - Pleno','3500'),
('David','112211111','Design','1900'),
('Gabi','301111111','Dev - Junior','2000'),
('Lucas','012222123','Dev - Junior','2000');


SELECT * FROM tb_funcionario WHERE salario >2000;
SELECT * FROM tb_funcionario WHERE salario <=2000;


UPDATE tb_funcionario SET salario = 2500 WHERE matricula = 4;
SELECT * FROM tb_funcionario;
UPDATE tb_funcionario SET cpf = 100000001 WHERE matricula = 1;
SELECT * FROM tb_funcionario;
