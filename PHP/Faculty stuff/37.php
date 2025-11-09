<!DOCTYPE html>
<html>
    <body>
        <h1>O formulário HTML e o script PHP</h1>
        <h2>Características</h2>
        <ul>
            <li>HTML tem recursos para criação de formulários, que ãso amplamente utilizados em diversas aplicações, sejam aquelas que envolvem login e senha de acesso, sejam aquelas que envolvem campos de endereço para uma compra online;</li>
            <li>Além disso, é importante validar os dados antes do envio efetivamente;</li>
            <li>Uma vez que os dados sejam enviados, pode-se utilizar códigos em PHP que recebam estes dados e que também façam a devida validação, aumentando a segurança das aplicações;</li>
            <li>Além disso, como foi estudado anteriormente, é possível utilizar PHP para a conexão com os bancos de dados e realizar as operações CRUD necessárias.</li>
        </ul>
        <h2>Conclusão</h2>
        <ul>
            <li>Formulários HTML:</li>
            <ul>
                <li>Usados para coletar dados do usuário em páginas web;</li>
                <li>Enviar os dados ao servidor por meio dos métodos GET ou POST;</li>
            </ul>
            <li>Scripts PHP:</li>
            <ul>
                <li>Processam dados provenientes de formulários HTML;</li>
                <li>Executados no servidor e podem interagir com Banco de Dados;</li>
                <li>Retornam respostas ao navegador do usuário, como confirmações ou mensagens de erro.</li>
            </ul>
        </ul>
        <h2>Exemplos:</h2>
        <p>A instrução SQL a seguir contém um exemplo de como a tabela cliente pode ser criada, observe:
            <pre><code>CREATE TABLE cliente (
     id_cliente serial NOT NULL,
     nome_cliente varchar(255),
     cpf_cliente varchar(11),
     email_cliente varchar(255),
     data_nascimento_cliente timestamp,
     PRIMARY KEY (id_cliente)
    );
    </code></pre> 
        </p>
    </body>
</html>