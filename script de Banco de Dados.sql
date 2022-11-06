CREATE DATABASE Nome_escolhido;

USE Nome_escolhido;

CREATE TABLE usuários (
	id INT NOT NULL AUTO_INCREMENT,
    usuários_nome VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
ALTER TABLE usuários ADD sobrenome VARCHAR(255);

CREATE TABLE endereços (
	id INT NOT NULL AUTO_INCREMENT,
    endereço VARCHAR(255) NOT NULL,
    cep VARCHAR(255) NOT NULL,
    telefone INT NOT NULL, 
	usuários_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (usuários_id) REFERENCES endereços(id)
    );

CREATE TABLE pagamento (
	id INT NOT NULL AUTO_INCREMENT,
    pagamento_id VARCHAR(255) NOT NULL,
    dia_recebimento VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE cidade (
	id INT NOT NULL AUTO_INCREMENT,
    cidade_id VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
    ); 
    
# A criar toda essa primeira parte, abri cada table em uma query separada: 

SELECT * FROM nome_escolhido.pagamento;

INSERT INTO pagamento (pagamento_id, dia_recebimento)
values 
('George', 'dia 05'),
('Joao', 'dia 05'),
('Bete', 'dia 05'),
('Gilvaldo', 'dia 05'),
('Vitor', 'dia 05'),
('Camila', 'dia 05'),
('Alvenazio','dia 05');

SELECT * FROM nome_escolhido.cidade;

INSERT INTO cidade (cidade_id, estado)
    VALUES 
    ('Brasília','Distrito Federal'),
    ('São paulo','São paulo'),
    ('Petrópolis','Rio de Janeiro'),
    ('Belém','Pará'),
    ('Palmas','Tocantins'),
    ('Belo Horizonte','Minas Gerais');

SELECT * FROM nome_escolhido.usuários;

INSERT INTO usuários (usuários_nome, sobrenome, nome_pai, nome_mae)

VALUES 
('George', 'Albuquerque','Jose', 'Joselita'),
('Joao', 'Silva','Jailton', 'Silvana'),
('Bete', 'Feia','Bruno', 'Fernanda'),
('Gilvaldo', 'Costa','Gervasio', 'Carminha'),
('Vitor','Camargo','Valtes', 'Celia'),
('Camila', 'Vargas','Carlos', 'Vilma'),
('Jucelino', 'Kubistchek','Juremo', 'Verdilta');

SELECT * FROM nome_escolhido.endereços;

INSERT INTO endereços (endereço, cep, telefone,usuários_id)
VALUES
('QNL 21','72152119','984479788','1'),
('QNL 21','72151512','981181189','2'),
('QNL 21','72157749','985145697','3'),
('QNL 21','72145151','985774958','4'),
('QNL 21','72155689','981516894','5'),
('QNL 21','72151568','985115548','6'),
('QNL 21','72115152','981115689','7')


