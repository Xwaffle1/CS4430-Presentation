<?php
/**
 * Created by PhpStorm.
 * User: chase
 * Date: 11/25/2018
 * Time: 4:19 PM
 */
include "index.html";
include_once "database.php";

if (isset($_GET["id"])){
	$searched = getArtistFromID($_GET["id"]);
	echo "<h1>$searched</h1>";
	


    echo "<div align='center' class='container mt-3'>";


    $displayed = array();

        echo "<h4> Albums</h4>";

        $allRows = getAlbumsFromArtistID($_GET["id"]);

        if (sizeof($allRows) > 0) {
            echo "<table border='4' cellpadding='10'>";
            echo "<th align='center'>Album ID</th><th align='center'>Album Name</th>";
            foreach ($allRows as $key => $albumData) {
                $albumName = $albumData["albumName"];
                $albumID = $albumData["albumID"];
                echo "<tr> <td>$albumID</td><td align='center'><a href='album.php?id=$albumID'>$albumName</a></td></tr>";
                $displayed[] = $albumName;
            }
            echo "</table>";
        } else {
            echo "<h5>No Albums matching...</h5>";
        }
    

    
        echo "<h4> Songs</h4>";

        $allRows = getSongs($searched);

        foreach ($displayed as $display) {
            $tempRows = getSongsFromArtistOrAlbum($display);
            $allRows = array_merge($tempRows, $allRows);
        }

        $songsDisplayed = array();

        if (sizeof($allRows) > 0) {
            echo "<table border='3' cellpadding='10'>";
            echo "<th align='center'>Song Name</th><th>Album Name</th><th>Track #</th><th>Artist Name</th>";
            foreach ($allRows as $key => $songData) {
                $songName = $songData["songName"];
                $songID = $songData["songID"];
                $albumID = $songData["albumID"];
                if ($albumID == null) {
                    $albumID = "--";
                }
                $artistID = $songData["artistID"];
                $trackNum = $songData["trackNum"];
                if ($trackNum == null) {
                    $trackNum = 1;
                }
                if (!in_array($songID, $songsDisplayed)) {
                    $songsDisplayed[] = $songID;
                    echo "<tr> <td align='center'>$songName</td><td>" . getAlbumFromID($albumID) . "</td><td>$trackNum</td><td>" . getArtistFromID($artistID) . "</td></tr>";
                }
            }
            echo "</table>";
        } else {
            echo "<h5>No Songs matching...</h5>";
        }
    

    echo "</div>";
}

