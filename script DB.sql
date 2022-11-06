CREATE DATABASE atps2;

USE atps2;

CREATE TABLE produtos (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco FLOAT
    );
    
    CREATE TABLE historico_produtos (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_mod datetime,
    id_produto INT NOT NULL,
    valor_ant float,
    valor_novo float
    );
    
CREATE TABLE usuarios (
	id INT NOT NULL AUTO_INCREMENT,
    usuarios_nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    nome_pai VARCHAR(255) NOT NULL,
    nome_mae VARCHAR(255) NOT NULL,    
	usuarios_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (usuarios_id) REFERENCES usuarios(id)
);

CREATE TABLE endereços (
	id INT NOT NULL AUTO_INCREMENT,
    endereço VARCHAR(255) NOT NULL,
    cep VARCHAR(255) NOT NULL,
    telefone INT NOT NULL, 
	usuarios_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (usuarios_id) REFERENCES endereços(id)
    );

CREATE TABLE pagamento (
	id INT NOT NULL AUTO_INCREMENT,
    pagamento_id VARCHAR(255) NOT NULL,
    dia_recebimento VARCHAR(255) NOT NULL,
    salario INT (255) NOT NULL,
    alter_salario INT (255) NOT NULL, 
	usuarios_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (usuarios_id) REFERENCES pagamento(id)
);
CREATE TABLE cidade (
	id INT NOT NULL AUTO_INCREMENT,
    cidade_id VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL,
    usuarios_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (usuarios_id) REFERENCES cidade(id)
    ); 
    
# A criar toda essa primeira parte, abri cada table em uma query separada: 

SELECT * FROM atps2.produtos;

INSERT INTO produtos (nome, preco)
values
('notbook', 2150),
('mouse', 50);

SELECT * FROM atps2.pagamento;

INSERT INTO pagamento (pagamento_id, dia_recebimento, salario, alter_salario, usuarios_id)
values 
('George', 'dia 05', 1000, 2054,'1'),
('Joao', 'dia 05', 2515, 3000,'2'),
('Bete', 'dia 05', 2548, 2454,'3'),
('Gilvaldo', 'dia 05', 1521, 2156,'4'),
('Vitor', 'dia 05', 1452, 5478,'5'),
('Camila', 'dia 05', 2000, 3514,'6'),
('Alvenazio','dia 05', 2514, 2025,'7');

SELECT * FROM atps2.cidade;

INSERT INTO cidade (cidade_id, estado, usuarios_id)
    VALUES 
    ('Brasília','Distrito Federal','1'),
    ('São paulo','São paulo','2'),
    ('Petrópolis','Rio de Janeiro','3'),
    ('Belém','Pará','4'),
    ('Palmas','Tocantins','5'),
    ('Belo Horizonte','Minas Gerais','6');

SELECT * FROM atps2.usuarios;

INSERT INTO usuarios (usuarios_nome, sobrenome, nome_pai, nome_mae, usuarios_id)

VALUES 
('George', 'Albuquerque','Jose', 'Joselita','1'),
('Joao', 'Silva','Jailton', 'Silvana','2'),
('Bete', 'Feia','Bruno', 'Fernanda','3'),
('Gilvaldo', 'Costa','Gervasio', 'Carminha','4'),
('Vitor','Camargo','Valtes', 'Celia','5'),
('Camila', 'Vargas','Carlos', 'Vilma','6'),
('Jucelino', 'Kubistchek','Juremo', 'Verdilta','7');

SELECT * FROM atps2.endereços;

INSERT INTO endereços (endereço, cep, telefone, usuarios_id)
VALUES
('QNL 21','72152119','984479788','1'),
('QNL 21','72151512','981181189','2'),
('QNL 21','72157749','985145697','3'),
('QNL 21','72145151','985774958','4'),
('QNL 21','72155689','981516894','5'),
('QNL 21','72151568','985115548','6'),
('QNL 21','72115152','981115689','7');

ALTER TABLE usuarios ADD salario int (255);
