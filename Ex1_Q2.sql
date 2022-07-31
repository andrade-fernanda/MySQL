CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
marca VARCHAR(255),
categoria VARCHAR(255),
valor DECIMAL,
quantidade INT
);

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(nome,marca,categoria,valor,quantidade)VALUES("TV","Samsung","Eletrodomésticos",1799,29);
INSERT INTO tb_produtos(nome,marca,categoria,valor,quantidade)VALUES("Geladeira","Brastemp","Eletrodomésticos",2500,15);
INSERT INTO tb_produtos(nome,marca,categoria,valor,quantidade)VALUES("Notebook","LeNovo","Dispositivos eletrônicos",3000,23);
INSERT INTO tb_produtos(nome,marca,categoria,valor,quantidade)VALUES("Smartphone","Samsung","Dispositivos eletrônicos",1800,5);
INSERT INTO tb_produtos(nome,marca,categoria,valor,quantidade)VALUES("Luminária","Lumus","Decoração",149,30);
INSERT INTO tb_produtos(nome,marca,categoria,valor,quantidade)VALUES("Mesa de escritório","Estude Bem","Móveis",299,8);
INSERT INTO tb_produtos(nome,marca,categoria,valor,quantidade)VALUES("Máquina de lavar","Brastemp","Eletrodomésticos",3999,20);
INSERT INTO tb_produtos(nome,marca,categoria,valor,quantidade)VALUES("Liquidificador","Oster","Eletrodomésticos",155,5);

SELECT valor FROM tb_produtos WHERE valor>500;
SELECT valor FROM tb_produtos WHERE valor<500;

UPDATE tb_produtos SET marca="EscriVânia" WHERE id=7;