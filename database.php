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
    global $artists;
    $artists = array();
    global $albums;
    $albums = array();
    loadArtists();
    loadSongs();
    loadAlbums();
}


function loadArtists() {
    global $artists;
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM artists");
    $stmt->execute();
    foreach ($stmt->fetchAll() as $row) {
        $artists[$row["artistID"]] = $row["name"];
    }
}

function loadAlbums() {

}

function loadSongs() {
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM songs");
    $stmt->execute();
    foreach ($stmt->fetchAll() as $row) {
        $artistID = $row['artistID'];
        $artistStmt = $pdo->prepare("SELECT name FROM artists WHERE artistID = $artistID");
        $artistStmt->execute();
        $artistName = $artistStmt->fetchColumn(1);
        $newSong = new Song($row);
        $songs[] = $newSong;
    }
}

function addSongToAlbum($song) {
    global $artists;

}

function getArtists($searchFor) {
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM Artists WHERE UPPER(name) = UPPER(\"$searchFor\") OR UPPER(name) LIKE UPPER(\"%$searchFor%\");");
//    echo "SELECT * FROM Artists WHERE UPPER(name) = UPPER(\"$searchFor\") OR UPPER(name) LIKE UPPER(\"%$searchFor%\");";
    $stmt->execute();
    $rows = $stmt->fetchAll();
//    foreach ($rows as $row) {
//        foreach ($row as $field) {
//            echo $field . ", ";
//        }
//        echo "\n";
//    }
    return $rows;
}

function getAlbums($searchFor) {
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM Albums WHERE UPPER(name) = UPPER(\"$searchFor\") OR UPPER(name) LIKE UPPER(\"%$searchFor%\");");
//    echo "SELECT * FROM Artists WHERE UPPER(name) = UPPER(\"$searchFor\") OR UPPER(name) LIKE UPPER(\"%$searchFor%\");";
    $stmt->execute();
    $rows = $stmt->fetchAll();
//    foreach ($rows as $row) {
//        foreach ($row as $field) {
//            echo $field . ", ";
//        }
//        echo "\n";
//    }
    return $rows;
}

function getSongs($searchFor) {
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM Songs WHERE UPPER(name) = UPPER(\"$searchFor\") OR UPPER(name) LIKE UPPER(\"%$searchFor%\");");
//    echo "SELECT * FROM Artists WHERE UPPER(name) = UPPER(\"$searchFor\") OR UPPER(name) LIKE UPPER(\"%$searchFor%\");";
    $stmt->execute();
    $rows = $stmt->fetchAll();
//    foreach ($rows as $row) {
//        foreach ($row as $field) {
//            echo $field . ", ";
//        }
//        echo "\n";
//    }
    return $rows;
}