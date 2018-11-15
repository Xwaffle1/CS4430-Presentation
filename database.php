<?php
/**
 * Created by PhpStorm.
 * User: chase
 * Date: 11/14/2018
 * Time: 8:33 PM
 */
$host = '127.0.0.1';
$db = 'music';
$user = 'root';
$pass = '';
$charset = 'utf8mb4';
$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$opt = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
];

$pdo = new PDO($dsn, $user, $pass, $opt);
//if (sizeof($artists) == 0) {
    loadDatabase();
//}
function loadDatabase() {
    global $products;
    $products = array();
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM `products`");
    $stmt->execute();
    foreach ($stmt->fetchAll() as $row) {
        $products[] = new Product($row);
    }
}