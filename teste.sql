/* Checar estrutura da tabela */

DESCRIBE usuarios; 

/* Criar Tabela */

CREATE TABLE usuarios (
  nome VARCHAR(50),
  email VARCHAR(255),
  idade INT
);

/* Inserir Dados */

INSERT INTO usuarios (nome, email, idade) VALUES(
  "Julia",
  "juliateste@teste.com",
  8
);

/* Listar Dados da Tabela */

SELECT * FROM usuarios;

/* Listar Dados da Tabela com Filtros */

SELECT * FROM usuarios WHERE idade = 8;
SELECT * FROM usuarios WHERE idade >= 18;

/* Deletar Dados da Tabela com Filtros */

DELETE FROM usuarios /* NUNCA FAZER, DELETA TODO O BANCO */
DELETE FROM usuarios WHERE idade <= 10;

/* Atualizar Dados da Tabela */

UPDATE usuarios SET nome = "Mesmo nome pra geral"/* NUNCA FAZER, TROCA TUDO */
UPDATE usuarios SET nome = "Fabiano", email = "testeupdate@teste.com" WHERE nome = "Julia";