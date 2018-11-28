<?php
/**
 * Created by PhpStorm.
 * User: chase
 * Date: 11/28/2018
 * Time: 3:02 PM
 */

include "index.html";
include "database.php";

echo "<script src='js/main.js'>";
$allSongs = getAllSongs();
$allArtist = getAllArtists();
$allAlbums = getAllAlbums();
$allAlbumsData = getAllAlbumsData();
echo "</script>";

echo "<form method='post' action='submit-add.php' style='margin-top: 5%;'  name='form' onsubmit='return validateForm(" . json_encode($allSongs) . ");'>";
    echo "<div class='input-group' style='margin-left: 40%;'>";
        echo "<h4 style='margin-right: 10px;'>Song Name:</h4><input type='text' name='addsong'>";
    echo "</div>";
    echo "<div class='input-group' style='margin-left: 40%; margin-top: 20px'>";
        echo "<h4 style='margin-right: 20px;'>Artist Name: </h4>";
        echo "<select onchange=\"updateAlbums(".  htmlspecialchars(json_encode($allAlbumsData)).");\" name='artistSelected'>";
        $i = 0;
        foreach ($allArtist as $key=>$artist) {
            echo "<option value='" . $artist['artistName'] . "'>" . $artist['artistName'] . "</option>";
            $i++;
        }
        echo "</select>";
    echo "</div>";
    echo "<div class='input-group' style='margin-left: 40%; margin-top: 20px'>";
        echo "<h4 style='margin-right: 20px;'>Album Name: </h4>";
        echo "<select name='albumsSelect'>";
        echo "<option>NONE</option>";
        foreach ($allAlbumsData as $album) {
            if($album['artistID'] == 1)
            echo "<option value='".$album['albumName']. "'>" . $album['albumName'] . "</option>";
            $i++;
        }
        echo "</select>";
    echo "</div>";
    echo "<div class='input-group' style='margin-left: 40%; margin-top: 20px'>";
    echo "<h4 style='margin-right: 20px;'>Track Number: </h4>";
    echo "<select name='track'>";
    for($i = 1; $i < 30; $i++){
        echo "<option value='$i'>" . $i . "</option>";
    }
    echo "</select>";
    echo "</div>";

    echo "<div  style='margin-left: 10%; margin-top: 5px;'>";
        echo "<input value='Add' type='submit' class='btn-primary btn'>";
    echo "</div>";
echo "</form>";


