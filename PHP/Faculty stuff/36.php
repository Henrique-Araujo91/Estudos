<!DOCTYPE html>
<html>
    <body>
        <h1>Construir uma aplicação com Banco de Dados</h1>
        <h2>Primeiros passos</h2>
        <h3>Características</h3>
        <ul>
            <li>É comum que aplicações precisem acessar bancos de dados;</li>
            <li>Mas, como fazer isso na prática? Será que PHP possibilita o acesso a bancos de dados? Será que precisamos de recursos adicionais?</li>
            <li>As respostas a estas perguntas já foram mostradas anteriormente, mas vamos reavivar na nossa memória alguns conceitos importantes;</li>
            <li>Inicialmente, é preciso ter páginas web que possibilitem a interação com o banco por trás da interface de usuário;</li>
            <li>Além disso, é necessário ter o banco de dados efetivamente e, inicialmente, é necessário trabalhar na sua modelagem, especificando suas características.</li>
        </ul>
        <h3>Criação do Banco de Dados</h3>
        <ul>
            <li>Projeto do banco de dados</li>
            <ul>
                <li>Planejar a estrutura do banco de dados (tabelas, colunas, tipos de dados);</li>
                <li>Desenhar um diagrama ER (Entidade-Relacionamento) se necessário;</li>
            </ul>
            <li>Criação de Tabelhas:</li>
            <ul>
                <li>Utilizar recursos para criar tabelas e definir relações entre elas;</li>
                <li>Inserir dados de teste para validação inicial.</li>
            </ul>
        </ul>
        <h3>Desenvolvimento da Interface</h3>
        <ul>
            <li>Criar formulários HTML para entrada de dados do usuário;</li>
            <li>Implementar práticas de segurança para prevenir vulnerabilidades como SQL Injection;</li>
        </ul>
        <h3>Desenvolvimento da Aplicação PHP</h3>
        <ul>
            <li>Conexão com o Banco de Dados:</li>
            <ul>
                <li>Utilizar PDO (PHP Data Objects) para estabelecer uma conexão segura com o banco de dados;</li>
            </ul>
            <li>Execução de Consultas SQL:</li>
            <ul>
                <li>Preparar e executar consultas SQL (SELECT, INSERT, UPDATE, DELETE);</li>
            </ul>
            <li>Manipulação de Resultados:</li>
            <ul>
                <li>Manipular os dados retornados pelo banco de dados e exibi-los na interface do usuário.</li>
            </ul>
            <li>Processar formulários com PHP e validar entradas;</li>
            <li>Implementar operações básicas de CRUD (Create, Read, Update, Delete) na aplicação.</li>
        </ul>
        <h3>Não menos importante, testar e validar!</h3>
        <h2>Conclusão</h2>
        <ul>
            <li>Construir uma aplicação PHP integrada a um banco de dados é um processo que envolved desenovlvimento da interface, da aplicação, do banco de dados, sem contar os aspectos de segurança;</li>
            <li>Com os passos certos e uma abordagem estruturada, é possível desenvolver aplicações robustas, seguras e eficientes.</li>
        </ul>
    </body>
</html