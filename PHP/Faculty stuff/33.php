<?php
//Métodos Prepare e Execute

//Constantes para armazenamento das variáveis de conexão.
define('HOST', 'db');
define('PORT', '5432');
define('DBNAME', 'test');
define('USER', 'user');
define('PASSWORD', 'psswd');

try { // Corrigido para usar o driver 'pgsql' e passar user/password separadamente
	$pdo = new PDO("pgsql:host=". HOST . ";port=".PORT.";dbname=" . DBNAME, USER, PASSWORD);
} catch (PDOException $e) {
	// É uma boa prática encerrar o script se a conexão falhar.
	die('A conexão falhou e retornou a seguinte mensagem de erro: ' .$e->getMessage());
}

//Realizando uma consulta no BD através do login e senha recebidos por POST
// Usando o operador de coalescência nula para evitar os avisos de "Undefined array key".
$login = $_POST['login'] ?? null;
$pswd = $_POST['pswd'] ?? null;

// Apenas executa a consulta se o login e a senha foram enviados.
if ($login && $pswd) {
	// Usando 'usuario' (minúsculas) para corresponder ao schema.sql
	$stmt = $pdo->prepare("SELECT * FROM usuario WHERE login = :login AND password = :password");
	$stmt->execute([':login' => $login, ':password' => $pswd]);

	// Busca o usuário no banco de dados
	$user = $stmt->fetch(PDO::FETCH_ASSOC);

	if ($user) {
		echo "✅ Login bem-sucedido! Bem-vindo, " . htmlspecialchars($user['login']) . ".";
	} else {
		echo "❌ Login ou senha inválidos.";
	}
} else {
	echo "ℹ️ Por favor, envie os dados de login e senha para testar a consulta.";
}

//Destruindo o objecto statement e fechando a conexão
$stmt = null;
 $pdo = null;
