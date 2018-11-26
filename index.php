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
                $artistName = $artistData["name"];
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
            echo "<th align='center'>Album ID</th><th align='center'>Album Name</th>";
            foreach ($allRows as $key => $albumData) {
                $albumName = $albumData["name"];
                $albumID = $albumData["albumID"];
                echo "<tr> <td>$albumID</td><td align='center'><a href='album.php?id=$albumID'>$albumName</a></td></tr>";
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

        if (sizeof($allRows) > 0) {
            echo "<table border='4' cellpadding='10'>";
            echo "<th align='center'>Song ID</th><th align='center'>Song Name</th><th>Album Name</th><th>Track #</th><th>Artist Name</th>";
            foreach ($allRows as $key => $songData) {
                $songName = $songData["name"];
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
                echo "<tr> <td>$songID</td><td align='center'>$songName</td><td>" . getAlbumFromID($albumID) . "</td><td>$trackNum</td><td>" . getArtistFromID($artistID) . "</td></tr>";
            }
            echo "</table>";
        } else {
            echo "<h5>No Songs matching...</h5>";
        }
    }

    echo "</div>";
}
