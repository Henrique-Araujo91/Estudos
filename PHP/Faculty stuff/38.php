<!DOCTYPE html>
<html>
    <body>
        <h1>Recuperação e exibição da informação em páginas HTML</h1>
        <h2>Características</h2>
        <ul>
            <li>Considere que um banco de dados deve ser modelado;</li>
            <li>Em seguida, implementam-se as tabelas do banco, utilizando códigos como exemplificado a seguir:</li>
            <pre><code>CREATE TABLE cliente (
                id_cliente serial NOT NULL,
                nome_cliente varchar(255),
                cpf_cliente varchar(11),
                email_cliente varchar(255),
                data_nascimento_cliente timestamp,
                PRIMARY KEY (id_cliente)
            );</code></pre>
            <li>Depois, acessa-se o banco de dados com linhas de código semelhantes àquelas mostradas a seguir:</li>
            <pre><code>
                &lt;?php
                //Conexão com o BD
                //Parâmetros utilizados na conexão;
                define('HOST', 'db');
                define('PORT', '5432');
                define('DBNAME', 'test');
                define('USER', 'user');
                define('PASSWORD', 'psswd');
                try {
                    //Estabelecimento da conexão:
                    $dsn = new PDO("pgsql:host=". HOST . ";port=".PORT.";dbname=" . DBNAME .";user=" . USER . ";password=" . PASSWORD);
                } catch (PDOException $e) {
                    echo 'A conexão falhou e retornou a seguinte mensagem de erro: ' .$e->getMessage();
                }
                //Preparação e inserção no banco de dados:
                $instrucaoSQL = "Select id_client, nome_cliente, cpf_cliente, email_cliente, data_nascimento_cliente From cliente";
                $resultSet = $dsn->query($instrucaoSQL);
                ?&gt;
                </code></pre>

            <li>Considere um exemplo hipotético dos dados lidos, imagine que estejam da seguinte forma;</li>
            <table border="1">
                <tr>
                    <th>Dados</th>
                    <th>15</th>
                    <th>Marcos Silva</th>
                    <th>01234567899</th>
                    <th>ms@xpto.com</th>
                    <th>2000-07-23</th>
                </tr>
                <tr>
                    <td>Colunas</td>
                    <td>id_cliente</td>
                    <td>nome_cliente</td>
                    <td>cpf_cliente</td>
                    <td>email_cliente</td>
                    <td>data_nascimento_cliente</td>
                </tr>
            </table>
            <li>Ou seja, a figura acima representa o conteúdo da variável resultSet que, frequentemente, é usado este nome para descrever o conjunto de dados retornado por uma consulta SQL;</li>
            <li>Lembra do código da aplicação?</li>
            <pre><code>$resultSet = $dsn->query($instrucaoSQL);</code></pre>
            <li>Depois que as tabelas foram criadas e inseridos os registros, pode-se utilizar códigos para se fazer a leitura destes dados e exibi-los em páginas web;</li>
            <li>Existem abordagens diferentes, mas pode-se utilizar linhas de código como a mostrada a seguir para exibir na tela os dados que são lidos em uma consulta.</li>
            <pre><code>
                &lt;?php
                while ($row = $resultSet->fetch(PDO::FETCH_ASSOC)) {
                echo $row['id_cliente'];
                echo $row['nome_cliente'];
                echo preg_replace("/(\d{3})(\d{3})(\d{3})(\d{2})/", "$1.$2.$3-$4", $row['cpf_cliente']);
                
                echo $row['email_cliente'];
                echo date('d/m/Y', strtotime($row['data_nascimento_cliente']));
                }
                &gt;</code></pre>
            <li>O método, mostrado abaixo, é usado para obter uma linha de dados do resultado de uma consulta SQL usando a extensão PDO (PHP Data Objects);</li>
            <pre><code>$resultSet->fetch(PDO::FETCH_ASSOC)</code></pre>
            <li>PDO::FETCH_ASSC: É um dos modos de recuperação de dados disponíveis para o método fetch();</li>
            <li>Quando você usa PDO::FETCH_ASSOC, o método fetch() retorna uma linha do conjunto de resultados como um array associativo, onde as chaves do array são os nomes das colunas da tabela.</li>
            <li>Na sequência, para cada linha, são lidos os dados de cada coluna e exibidos na tela.</li>
            <li>A função preg_replace() em PHP é usada para realizar substituições de texto baseados em expressões regulares;</li>
            <li>Esta função é parte da biblioteca de expressões regulares do PHP e permite que você substitua ocorrências de padrões específicos em uma string por um texto definido;</li>
            <li>No caso, é usada para fazer a máscara de CPF: XXX.XXX.XXX-XX;</li>
            <li>(\d{3}): Captura os primeiros três dígitos do CPF;</li>
            <li>(\d{3}): Captura os próximos três dígitos do CPF;</li>
            <li>(\d{3}): Captura os últimos três dígitos do CPF;</li>
            <li>(\d{2}): Captura os dois últimos dígitos do CPF.</li>
            <li>$: Finaliza a correspondência da string;</li>
            <li>$1.$2.$3-$4: Usa os grupos capturados pela expressão regular para inserir os pontos e o hifen na posição correta.</li>
        </ul>
        <h2>Conclusão</h2>
        <ul>
            <li>A recuperação de dados envolve a comunicação eficiente entre a aplicação web e o banco de dados, utilizando técnicas como consultas SQL;</li>
            <li>Ferramentas como PDO em PHP oferecem métodos robustos para interagir com banco de dados e garantir segurança e desempenho;</li>
            <li>Com as práticas e ferramentas certas, é possível criar aplicações eficientes e confiáveis que atendem às necessidades dos usuários e suportam o crescimento do negócio.</li>
        </ul>
    </body>
</html>