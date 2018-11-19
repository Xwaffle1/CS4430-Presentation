<?php

include "index.html";
include "database.php";

if (isset($_GET["Search"])) {
    echo "<h3> Searching for \"" . $_GET['Search'] . "\"</h3>";

    echo "<div align='center' class='container mt-3'>";


    echo "<table border='4' cellpadding='10'>";
    echo "<tr><td colspan='4' align='center'>Song Listings</td></tr>";
    echo "<th>Track #</th><th colspan='2'>Song Name</th><th colspan='2'>Album Name</th>";
    foreach ($songs as $song) {
        echo "<tr>
                <td>$song->trackNumber</td>
                <td colspan='2'>$song->songName</td>
                <td colspan='2'>$song->albumName</td>
             </tr>";
    }
    echo "</table>";
    echo "</div>";
}
