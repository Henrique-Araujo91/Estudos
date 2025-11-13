# Meus Estudos de PHP

Este repositório contém os exercícios e exemplos que desenvolvi durante meus estudos de PHP, utilizando um ambiente de desenvolvimento moderno e encapsulado com Docker.

## Sobre o Ambiente Docker

O projeto utiliza Docker e Docker Compose para criar um ambiente de desenvolvimento completo e portátil, que inclui:

*   **Serviço `web`**: Um container com **PHP 8.2** e servidor **Apache**, pronto para executar os scripts.
*   **Serviço `db`**: Um container com o banco de dados **PostgreSQL 15**.

### Inicialização Automática do Banco de Dados

Para que os exemplos de login (como o `33.php`) funcionem imediatamente, o banco de dados é configurado automaticamente na primeira vez que o ambiente é iniciado.

O arquivo `schema.sql` é executado para criar a tabela `usuario` e inserir um usuário de teste com as seguintes credenciais:
*   **Login:** `admin`
*   **Senha:** `123`

## Como Executar os Exemplos

### Pré-requisitos

Você precisa ter o **Docker** e o **Docker Compose** instalados. A forma mais fácil é instalar o Docker Desktop, que já inclui ambos.

### Passo 1: Executar o Projeto

1.  Clone este repositório para a sua máquina.
2.  Abra um terminal na pasta raiz do projeto (a pasta que contém o arquivo `docker-compose.yml`).
3.  Execute o seguinte comando para construir as imagens e iniciar os containers:
    ```bash
    docker compose up -d --build
    ```

### Passo 2: Acessar os Exercícios

Com os containers em execução, abra seu navegador e acesse o seguinte endereço:

➡️ **http://localhost:8080**

Você verá uma página de índice (`index.php`) que lista todos os exercícios. Basta clicar no link de um exercício para executá-lo.

## Gerenciando o Ambiente Docker

*   **Para parar o ambiente:**
    ```bash
    docker compose down
    ```
*   **Para recomeçar do zero (apagando o banco de dados):**
    ```bash
    docker compose down -v
    ```
*   **Para liberar espaço em disco:** Periodicamente, você pode limpar recursos não utilizados do Docker (containers parados, imagens antigas, etc.) com o comando `docker system prune`.

---

### Alternativa: Servidor Embutido do PHP (Não recomendado para os exemplos com BD)

Se não quiser usar o Docker, você pode usar o servidor de desenvolvimento que já vem com o PHP para os scripts mais simples.

1.  **Instale o PHP** e a extensão `php-pgsql` em seu sistema.
2.  Abra um terminal na pasta deste projeto.
3.  Execute o comando: `php -S localhost:8000`.
4.  Acesse o projeto no navegador pelo endereço: `http://localhost:8000/`.

> **Nota:** Esta abordagem não funcionará para os exercícios que dependem do banco de dados, a menos que você tenha um servidor PostgreSQL configurado localmente.
```bash
sudo usermod -aG docker ${USER}
```

⚠️ **Importante:** Após executar o comando, você precisa **fazer logout e login novamente** ou **reiniciar o computador** para que a alteração tenha efeito.

#### Passo 3: Executar o Projeto

1.  Abra um terminal (ou PowerShell no Windows).
2.  Navegue até a pasta raiz deste projeto (a pasta que contém o arquivo `docker-compose.yml`).
3.  Execute o seguinte comando para construir a imagem e iniciar o container em segundo plano:
    ```bash
    docker compose up -d
    ```

#### Passo 4: Acessar os Exercícios

Com o container em execução, abra seu navegador e acesse o seguinte endereço:

➡️ **http://localhost:8080**

Você verá uma página de índice (`index.php`) que lista automaticamente todos os exercícios. Basta clicar no link de um exercício para executá-lo.

### Gerenciando o Ambiente Docker

*   **Para parar o ambiente:** Navegue até a pasta do projeto e execute `docker compose down`.
*   **Para liberar espaço em disco:** Periodicamente, você pode limpar recursos não utilizados do Docker (containers parados, imagens antigas, etc.) com o comando `docker system prune`.

---

### Alternativa: Servidor Embutido do PHP (Leve e Rápido)

Se não quiser usar o Docker, você pode usar o servidor de desenvolvimento que já vem com o PHP.

1.  **Instale o PHP** em seu sistema (ex: `sudo apt install php-cli` no Ubuntu).
2.  Abra um terminal na pasta deste projeto.
3.  Execute o comando: `php -S localhost:8000`.
4.  Acesse o projeto no navegador pelo endereço: `http://localhost:8000/`.