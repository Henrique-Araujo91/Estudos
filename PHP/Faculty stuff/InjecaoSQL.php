<?php
//Leitura do BD - Referente a MOD2-NP4 e com banco de dados test

require_once 'conexao.php';

//Realizando uma consulta no BD por meio do login e senha recebidos por POST
$login = $_POST['login'];
$pswd = $_POST['pswd'];
$instrucaoSQL = "Select * From Usuario Where login = '$login' And password = '$pswd'";
try {
    //Execução da consulta
    $resultSet = $dsn->query($instrucaoSQL);
    echo "Consulta realizada com sucesso!<br>";

    //Exibindo os resultados da consulta
    foreach ($resultSet as $row) {
        echo "ID: {$row['id_cliente']} | None: {$row['nome']} | CPF: {$row['cpf']} | Telefone: {$row['telefone']}<br>";
    }
    } catch (PDOException $e) {
        //Tratamento de erros na execução da consulta
        echo "Erro ao executar a consulta: " . $e->getMessage();
    }