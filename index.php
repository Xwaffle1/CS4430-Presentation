<?php

include "index.html";
include_once "database.php";

if (isset($_GET["Search"])) {
    echo "<h3> Searching for \"" . $_GET['Search'] . "\"</h3>";

    echo "<div align='center' class='container mt-3'>";


    $displayed = array();

    if (!empty($_GET['artists'])) {
        echo "<h4> Artists</h4>";

        $searched = $_GET['Search'];
        $allRows = getArtists($searched);

        if (sizeof($allRows) > 0) {
            echo "<table border='4' cellpadding='10'>";
            echo "<th align='center'>Artist ID</th><th align='center'>Artist Name</th>";
            foreach ($allRows as $key => $artistData) {
                $artistName = $artistData["artistName"];
                $artistID = $artistData["artistID"];
                echo "<tr> <td>$artistID</td><td align='center'><a href='artist.php?id=$artistID'>$artistName</a></td></tr>";
                $displayed[] = $artistName;
            }
            echo "</table>";
        } else {
            echo "<h5>No Artists matching...</h5>";
        }
    }

    if (!empty($_GET['albums'])) {
        echo "<h4> Albums</h4>";

        $searched = $_GET['Search'];
        $allRows = getAlbums($searched);

        if (sizeof($allRows) > 0) {
            echo "<table border='4' cellpadding='10'>";
            echo "<th align='center'>Album ID</th><th align='center'>Album Name</th><th>Year</th>";
            foreach ($allRows as $key => $albumData) {
                $albumName = $albumData["albumName"];
                $albumID = $albumData["albumID"];
                $albumYear = $albumData["year"];
                echo "<tr> <td>$albumID</td><td align='center'><a href='album.php?id=$albumID'>$albumName</a></td><td>$albumYear</td></tr>";
                $displayed[] = $albumName;
            }
            echo "</table>";
        } else {
            echo "<h5>No Albums matching...</h5>";
        }
    }

    if (!empty($_GET['songs'])) {
        echo "<h4> Songs</h4>";

        $searched = $_GET['Search'];
        $allRows = getSongs($searched);

        foreach ($displayed as $display) {
            $tempRows = getSongsFromArtistOrAlbum($display);
            $allRows = array_merge($tempRows, $allRows);
        }

        $songsDisplayed = array();

        if (sizeof($allRows) > 0) {
            echo "<table border='4' cellpadding='10'>";
            echo "<th align='center'>Song ID</th><th align='center'>Song Name</th><th>Album Name</th><th>Track #</th><th>Artist Name</th>";
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
                    $albumName = getAlbumFromID($albumID) ;
                    $artistName = getArtistFromID($artistID);
                    echo "<tr> <td>$songID</td><td align='center'>$songName</td><td><a href='album.php?id=$albumID'>$albumName</a></td><td>$trackNum</td><td><a href='artist.php?id=$artistID'>$artistName</a></td></tr>";
                }
            }
            echo "</table>";
        } else {
            echo "<h5>No Songs matching...</h5>";
        }
    }

    echo "</div>";
}
