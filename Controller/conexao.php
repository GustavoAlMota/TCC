<?php
$dsn = 'mysql:host=localhost;dbname=Escola';
$username = 'root';
<<<<<<< HEAD
$password = '1234'; // Ajuste conforme necessário
=======
$password = ''; // Ajuste conforme necessário
>>>>>>> 67d31d6 (screenshot commit)

try {
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo 'Erro na conexão: ' . $e->getMessage();
}
?>
