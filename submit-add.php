<?php
/**
 * Created by PhpStorm.
 * User: chase
 * Date: 11/28/2018
 * Time: 4:11 PM
 */

include "index.html";
include "database.php";

if (isset($_POST["addartist"])) {
    echo "<h3>Artist Added " . $_POST["addartist"] . "</h3>";
    addArtist($_POST["addartist"]);
} else if (isset($_POST["addalbum"])) {
    echo "<h3>Album Added " . $_POST["addalbum"] . " for Artist: " . $_POST['artist'] . "</h3>";
    $year = $_POST["year"];
    addAlbum($_POST["addalbum"], $_POST["artist"], $year);
} else if (isset($_POST["addsong"])) {
    echo " <h3>Song Added " . $_POST["addsong"] . " </h3 > ";
    $albumName = $_POST["albumsSelect"];
    $artistName = $_POST["artistSelected"];
    $songName = $_POST["addsong"];
    $track = $_POST["track"];
    addSong($_POST["addsong"], $_POST["albumsSelect"], $_POST["artistSelected"], $track);
//    echo "INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName=\"$albumName\"), (SELECT artistID FROM Artists WHERE artistName=\"$artistName\"), $track, $songName);";

}