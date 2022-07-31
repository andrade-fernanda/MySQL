CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    pizza_salgada VARCHAR(255),
    pizza_doce VARCHAR(255)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(255),
    tamanho CHAR,
    preco DECIMAL(5,2),
    quantidade INT,
    categoria_id BIGINT,
    
    FOREIGN KEY(categoria_id)REFERENCES tb_categorias(id)
);

ALTER TABLE tb_categorias DROP COLUMN pizza_doce;
ALTER TABLE tb_categorias DROP COLUMN pizza_salgada;

ALTER TABLE tb_categorias ADD COLUMN tipo_pizza VARCHAR(255);

INSERT INTO tb_categorias(tipo_pizza)VALUES("Doce");
INSERT INTO tb_categorias(tipo_pizza)VALUES("Salgada");
INSERT INTO tb_categorias(tipo_pizza)VALUES("Vegana");
INSERT INTO tb_categorias(tipo_pizza)VALUES("Sem glúten");
INSERT INTO tb_categorias(tipo_pizza)VALUES("Sem lactose");

INSERT INTO tb_pizzas(sabor,tamanho,preco,quantidade,categoria_id)VALUES("Brigadeiro","M",19,3,1);
INSERT INTO tb_pizzas(sabor,tamanho,preco,quantidade,categoria_id)VALUES("Calabresa","G",15,10,2);
INSERT INTO tb_pizzas(sabor,tamanho,preco,quantidade,categoria_id)VALUES("Rúcula e ricota","M",20,3,3);
INSERT INTO tb_pizzas(sabor,tamanho,preco,quantidade,categoria_id)VALUES("Queijo","G",25,2,4);
INSERT INTO tb_pizzas(sabor,tamanho,preco,quantidade,categoria_id)VALUES("Frango","M",25,2,5);

INSERT INTO tb_pizzas(sabor,tamanho,preco,quantidade,categoria_id)VALUES("Portuguesa","G",46.90,1,2);
INSERT INTO tb_pizzas(sabor,tamanho,preco,quantidade,categoria_id)VALUES("Mussarela","G",55,2,2);


ALTER TABLE tb_pizzas DROP COLUMN preco;

ALTER TABLE tb_pizzas ADD COLUMN preco DECIMAL(5,2);

SELECT * FROM tb_pizzas WHERE preco>45;
SELECT * FROM tb_pizzas WHERE preco>=50 AND preco<=100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
SELECT * FROM tb_pizzas WHERE sabor LIKE "%u%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id =  tb_pizzas.categoria_id;









