# Usa a imagem oficial do PHP na versão 8.2 com o servidor Apache já configurado.
FROM php:8.2-apache

# Instala as dependências do sistema (libpq-dev) e a extensão pdo_pgsql do PHP
# para permitir a conexão com o banco de dados PostgreSQL.
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql
