<?php

// データベースへの接続
// MySQL

try {
    $dbh = new PDO('mysql:host=localhost;dbname=blog_app','dbuser001','dbpwd0001');
} catch (PDOException $e) {
    var_dump($e->getMessage());
    exit;
}

echo "success!";

// 切断

$dbh = null;


