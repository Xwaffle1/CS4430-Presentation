<?php

include "index.html";
include "database.php";

if (isset($_GET["Search"])) {
    echo "<h3> Searching for \"" . $_GET['Search'] . "\"</h3>";
	try {
		
		echo "<div align='center' class='container mt-3'>";
		echo "<table border='4' cellpadding='10'>";
		echo "<tr><td colspan='6' align='center'>Song Listings</td></tr>";
		echo "<th>Track #</th><th colspan='2'>Song Name</th><th colspan='2'>Artist Name</th><th colspan='2'>Album Name</th>";
		
	$Search = $_GET["Search"];	
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$pdoQuery = ("SELECT trackNum, songs.name AS songName, albums.name AS albumName, artists.name AS artist FROM songs, albums, artists WHERE songs.name = :Search AND albums.albumID = songs.albumID AND albums.artistID = artists.artistID");
	$pdoResult = $pdo->prepare($pdoQuery);
	
	$pdoExec = $pdoResult->execute(array(":Search"=>$Search));
	
	if ($pdoExec) {
		foreach($pdoResult as $row){
			
				$trackNum = $row['trackNum'];
				$songName = $row['songName'];
				$albumName = $row['albumName'];
				$artist = $row['artist'];
    
				echo "<tr>
					<td>$trackNum</td>
					<td colspan='2'>$songName</td>
					<td colspan='2'>$artist</td>
					<td colspan='2'>$albumName</td>
				</tr>";	
		}
	} 
	
	$pdoQuery = ("SELECT trackNum, songs.name AS songName, albums.name AS albumName, artists.name AS artist FROM songs, albums, artists WHERE albums.name = :Search AND albums.albumID = songs.albumID AND albums.artistID = artists.artistID");
	$pdoResult = $pdo->prepare($pdoQuery);
	$pdoExec = $pdoResult->execute(array(":Search"=>$Search));
	
	if ($pdoExec) {
		foreach($pdoResult as $row){
			
				$trackNum = $row['trackNum'];
				$songName = $row['songName'];
				$albumName = $row['albumName'];
				$artist = $row['artist'];
    
				echo "<tr>
					<td>$trackNum</td>
					<td colspan='2'>$songName</td>
					<td colspan='2'>$artist</td>
					<td colspan='2'>$albumName</td>
				</tr>";		
		}
	}
	
	$pdoQuery = ("SELECT trackNum, songs.name AS songName, albums.name AS albumName, artists.name AS artist FROM songs, albums, artists WHERE artists.name = :Search AND albums.albumID = songs.albumID AND artists.artistID = albums.artistID");
	$pdoResult = $pdo->prepare($pdoQuery);
	$pdoExec = $pdoResult->execute(array(":Search"=>$Search));
	
	if ($pdoExec) {
		foreach($pdoResult as $row){
			
				$trackNum = $row['trackNum'];
				$songName = $row['songName'];
				$albumName = $row['albumName'];
				$artist = $row['artist'];
			
				echo "<tr>
					<td>$trackNum</td>
					<td colspan='2'>$songName</td>
					<td colspan='2'>$artist</td>
					<td colspan='2'>$albumName</td>
				</tr>";	
		}
	}
		echo "</table>";
		echo "</div>";
	}
	catch(PDOException $e){
		echo "Error: " . $e->getMessage();
	}

}


