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
$allAlbums = getAllAlbums();
$allArtist = getAllArtists();
echo "</script>";


echo "<form method='post' action='submit-add.php' style='margin-top: 5%;' onsubmit='return validateForm(" . json_encode($allAlbums) . ");' name='form'>";
    echo "<div class='input-group' style='margin-left: 40%;'>";
        echo "<h4 style='margin-right: 10px;'>Album Name:</h4><input type='text' name='addalbum'>";
    echo "</div>";
    echo "<div class='input-group' style='margin-left: 40%; margin-top: 20px'>";
        echo "<h4 style='margin-right: 20px;'>Artist Name: </h4>";
        echo "<select name='artist'>";
        foreach ($allArtist as $artist) {
            echo "<option>" . $artist['artistName'] . "</option>";
        }
        echo "</select>";
    echo "</div>";
    echo "<div class='input-group' style='margin-left: 40%; margin-top: 20px'>";
    echo "<h4 style='margin-right: 20px;'>Album Year: </h4>";
    echo "<select name='year'>";
    for($i = 2018; $i > 1920; $i--){
        echo "<option value='$i'>" . $i . "</option>";
    }
    echo "</select>";
    echo "</div>";
    echo "<div  style='margin-left: 10%; margin-top: 5px;'>";
        echo "<input value='Add' type='submit' class='btn-primary btn'>";
    echo "</div>";
echo "</form>";