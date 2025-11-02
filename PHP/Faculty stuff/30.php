<?php
//Conectando o PHP ao Postgree

//Definindo os parâmetros de conexão para o ambiente Docker;
define('HOST', 'db'); // O nome do serviço do banco de dados no docker-compose.yml
define('PORT', '5432'); //Porta de acesso ao banco de dados
define('DBNAME', 'test'); //Nome do banco de dado
define('USER', 'user'); //Login de acesso ao banco de dados
define('PASSWORD', 'psswd'); //Senha de acesso ao banco de dados

//try e catch para tratamento de exceções
try {
    //Estabelecendo a conexão com o banco de dados
    $dsn = new PDO("pgsql:host=" . HOST . ";port=" . PORT . ";dbname=" . DBNAME . ";user=" . USER . ";password=" . PASSWORD) ;
} catch (PDOException $e) {
    echo 'A conexão falhou e retornou a seguinte mensagem de erro: ' . $e->getMessage();
}
//Encerrando a conexão;
$dsn=null;
?>