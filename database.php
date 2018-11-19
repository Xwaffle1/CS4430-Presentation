<?php
/**
 * Created by PhpStorm.
 * User: chase
 * Date: 11/14/2018
 * Time: 8:33 PM
 */

include_once("Song.php");


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

$songs = array();
$artists = array();
$albums = array();

//if (sizeof($artists) == 0) {
    loadDatabase();
//}





function loadDatabase() {
    global $songs;
    $songs = array();
    global $pdo;
    $stmt = $pdo->prepare("SELECT *,albums.name AS albumName,songs.name AS songName FROM songs,albums WHERE songs.albumID=albums.albumID");
    $stmt->execute();
    foreach ($stmt->fetchAll() as $row) {
        $songs[] = new Song($row);
    }
}