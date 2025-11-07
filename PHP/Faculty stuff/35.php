<!DOCTYPE html>
<html>
    <head>
        <title>Teste de Injeção SQL</title>
    </head>
    <body>
        <h1>Teste de Injeção SQL</h1>
        <h2>Login</h2>
        <form action="InjecaoSQL.php" method="POST">
        <label for="login">Login:</label>
        <input type="text" id="login" name="login" required><br><br>

        <label for="pswd">Senha:</label>
        <input type="password" id="pswd" name="pswd" required><br><br>

        <button type="submit">Entrar</button>
        </form>
    </body>
</html>