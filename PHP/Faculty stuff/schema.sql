-- Remove a tabela se ela já existir, para permitir recomeçar do zero.
DROP TABLE IF EXISTS usuario;

-- Cria a tabela 'usuario' com nomes de colunas em minúsculas.
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    login VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Insere um usuário de exemplo para que você possa testar o login.
-- Login: admin / Senha: 123
INSERT INTO usuario (login, password) VALUES ('admin', '123');
