<!DOCTYPE html>
<html>
    <body>
        <h1>A classe PDO em Banco de Dados</h1>
        <h2>Demonstração de ataque SQL Injection</h2>
        <h3>Características</h3>
        <ul>
            <li>Considere uma aplicação que esteja conectada a um banco de dados. No código deste exemplo, suprimimos a parte de conexão porque isso já foi visto anteriormente.</li>
        </ul>
        
        <p>O código abaixo demonstra uma forma <strong>vulnerável</strong> de construir uma consulta SQL:</p>
        <pre><code>&lt;?php
    //...
    // ATENÇÃO: O código abaixo é VULNERÁVEL a SQL Injection e usa funções obsoletas (mysql_*).
    // NÃO USE EM PRODUÇÃO.
    $login = $_POST['login'];
    $pswd = $_POST['pswd'];
    $instrucaoSQL = "Select * From Usuario Where login = '$login' And password = '$pswd'";
    $result = mysql_query( $instrucaoSQL ) or die('Erro na instrução: ' . mysql_error());
    //...
?&gt;</code></pre>

        <ul>
            <li>Mas, e se alguém enviar dados maliciosos ao invés de login e senha?</li>
            <li>Se alguém inserisse o seguinte código no campo de login do formulário?</li>
            <pre><code>`` OR true = true;/*</code></pre>
            <li>E, se no campo de senha, fosse inserido o seguinte código?</li>
            <pre><code>'*/--'</code></pre>
            <li>Consequentemente, a instrução SQL da linha 6 ficaria da seguinte forma:</li>
            <pre><code>$instrucaoSQL = "Select * From Usuario Where login = '' OR true = true;/* And password = '*/--'";</code></pre>
            <li>Resultando no acesso a alguém que pode não ter as credenciais adequadas para este fim e, dessa forma, representando vulnerabilidade importante na segurança do sistema.</li>
        </ul>

        <h3>Conclusão</h3>
        <ul>
            <li>SQL Injection representa uma ameaça significativa, mas é amplamente evitável;</li>
            <li>Uma das medidas para se prevenir este problema é a sanitização e validação rigorosa de todos os dados fornecidos pelos usuários;</li>
            <li>A implementação de práticas de codificação seguras e a conscientização contínua são essenciais;</li>
            <li>Protegendo nossas aplicações, protegemos nossos dados e a integridade do sistema.</li>
        </ul>

        <h3>Prática</h3>
        <ul>
            <li>Antes de finalizarmos este estudo, vamos ver um exemplo na prática.</li>
        </ul>

        <?php // Adicionado espaço após a tag de abertura do PHP para corrigir o erro de sintaxe.
        //Parâmetros utilizados na conexão:
        define('HOST', 'db'); // Corrigido para o nome do serviço do Docker.
        define('PORT', '5432');
        define('DBNAME', 'test');
        define('USER', 'user');
        define('PASSWORD', 'psswd');

        try {
            //Estabelecendo a conexão com o banco de dados
            $dsn = new PDO("pgsql:host=" . HOST . ";port=" . PORT . ";dbname=" . DBNAME . ";user=" . USER . ";password=" . PASSWORD);
            //Mensagem de sucesso
            echo "Conexão com o banco de dados foi estabelecida com sucesso!<br>";
        } catch (PDOException $e) {
            //Captura e exibe o erro em caso de falha
            echo "A conexão falhou e retornou a seguinte mensagem de erro: " . $e->getMessage() . "<br>";
            exit; //Interrompe o script caso a conexão falhe
        }


    </body>
</html>