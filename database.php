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
        $artists[$row["artistID"]] = $row["artistName"];
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
        $artistStmt = $pdo->prepare("SELECT artistName FROM artists WHERE artistID = $artistID");
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
    $stmt = $pdo->prepare("SELECT * FROM Artists WHERE UPPER(artistName) = UPPER(\"$searchFor\") OR UPPER(artistName) LIKE UPPER(\"%$searchFor%\");");
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
    $stmt = $pdo->prepare("SELECT * FROM Albums WHERE UPPER(albumName) = UPPER(\"$searchFor\") OR UPPER(albumName) LIKE UPPER(\"%$searchFor%\");");
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
    $stmt = $pdo->prepare("SELECT * FROM Songs WHERE UPPER(songName) = UPPER(\"$searchFor\") OR UPPER(songName) LIKE UPPER(\"%$searchFor%\");");
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

function getSongsFromArtistOrAlbum($searchFor) {
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM Songs,Albums WHERE Songs.artistID = Albums.artistID AND (Songs.albumID = NULL OR Songs.albumID = Albums.albumID) AND (UPPER(albumName) = UPPER(\"" . $searchFor . "\") OR UPPER(albumName) LIKE UPPER(\"%" . $searchFor . "%\"))");
    $stmt->execute();
    $rows = $stmt->fetchAll();

    $stmt = $pdo->prepare("SELECT * FROM Songs,Artists WHERE Songs.artistID = Artists.artistID  AND (UPPER(artistName) = UPPER(\"" . $searchFor . "\") OR UPPER(artistName) LIKE UPPER(\"%" . $searchFor . "%\"))");
    $stmt->execute();
    $rows = array_merge($stmt->fetchAll(), $rows);
    return $rows;
}

function getArtistFromID($artistID) {
    global $pdo;
    $stmt = $pdo->prepare("SELECT artistName FROM artists WHERE artistID = $artistID;");
    $stmt->execute();
    $row = $stmt->fetch();
    return $row['artistName'];
}

function getAlbumsFromArtistID($artistID) {
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM Albums WHERE artistID = $artistID;");
    $stmt->execute();
    $row = $stmt->fetchAll();
    return $row;

}

function getAlbumFromID($albumID) {
    if ($albumID == "--") return;

    global $pdo;
    $stmt = $pdo->prepare("SELECT albumName FROM albums WHERE albumID=$albumID;");
    $stmt->execute();
    $row = $stmt->fetch();
    return $row['albumName'];
}

function getAllArtists() {
    global $pdo;
    $stmt = $pdo->prepare("SELECT artistName FROM artists;");
    $stmt->execute();
    return $stmt->fetchAll();
}

function getAllAlbums() {
    global $pdo;
    $stmt = $pdo->prepare("SELECT albumName FROM Albums;");
    $stmt->execute();
    return $stmt->fetchAll();
}

function getAllAlbumsData() {
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM Albums;");
    $stmt->execute();
    return $stmt->fetchAll();
}


function getAllSongs() {
    global $pdo;
    $stmt = $pdo->prepare("SELECT songName FROM Songs;");
    $stmt->execute();
    return $stmt->fetchAll();
}

function artistExists($searchFor) {
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM Artists WHERE UPPER(artistName) = UPPER(\"$searchFor\");");
    $stmt->execute();
    $rows = $stmt->fetchAll();
    return sizeof($rows) > 0;
}

function albumExists($searchFor) {
    global $pdo;
    $stmt = $pdo->prepare("SELECT * FROM Albums WHERE UPPER(albumName) = UPPER(\"$searchFor\");");
    $stmt->execute();
    $rows = $stmt->fetchAll();
    return sizeof($rows) > 0;
}

function addArtist($artistName) {
    global $pdo;
    $stmt = $pdo->prepare("INSERT INTO Artists VALUE(NULL, ?);");
    $stmt->bindParam(1, $artistName);
    $stmt->execute();
}

function addAlbum($albumName, $artist, $year) {
    if (artistExists($artist)) {
        global $pdo;
        $stmt = $pdo->prepare("INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName=\"$artist\"), ?, ?);");
        $stmt->bindParam(1, $albumName);
        $stmt->bindParam(2, $year);
        $stmt->execute();
    }
}

function addSong($songName, $albumName, $artistName, $track) {
    if (artistExists($artistName) && albumExists($albumName)) {
        global $pdo;
        $stmt = $pdo->prepare("INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName=\"$albumName\"), (SELECT artistID FROM Artists WHERE artistName=\"$artistName\"), $track, ?);");
        $stmt->bindParam(1, $songName);
        $stmt->execute();
    } else {
        echo "ERROR ADDING SONG, ALBUM OR ARTIST DOES NOT EXIST.";
    }
}
