<?php

include "index.html";
include "database.php";

if (isset($_GET["Search"])) {
    echo "<h3> Searching for \"" . $_GET['Search'] . "\"</h3>";
	try {
		
		echo "<div align='center' class='container mt-3'>";
		echo "<table border='4' cellpadding='10'>";
		echo "<tr><td colspan='4' align='center'>Song Listings</td></tr>";
		echo "<th>Track #</th><th colspan='2'>Song Name</th><th colspan='2'>Album Name</th>";
		
	$Search = $_GET["Search"];	
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$pdoQuery = ("SELECT trackNum, songs.name AS songName, albums.name AS albumName FROM songs, albums WHERE songs.name = :Search");
	$pdoResult = $pdo->prepare($pdoQuery);
	
	$pdoExec = $pdoResult->execute(array(":Search"=>$Search));
	
	if ($pdoExec) {
		foreach($pdoResult as $row){
			
				$trackNum = $row['trackNum'];
				$songName = $row['songName'];
				$albumName = $row['albumName'];
    
				echo "<tr>
					<td>$trackNum</td>
					<td colspan='2'>$songName</td>
					<td colspan='2'>$albumName</td>
				</tr>";	
		}
	} 
	
	$pdoQuery2 = ("SELECT trackNum, songs.name AS songName, albums.name AS albumName FROM songs, albums WHERE albums.name = :Search");
	$pdoResult2 = $pdo->prepare($pdoQuery2);
	$pdoExec2 = $pdoResult2->execute(array(":Search"=>$Search));
	
	if ($pdoExec2) {
		foreach($pdoResult2 as $row2){
			
				$trackNum = $row2['trackNum'];
				$songName = $row2['songName'];
				$albumName = $row2['albumName'];
    
				echo "<tr>
					<td>$trackNum</td>
					<td colspan='2'>$songName</td>
					<td colspan='2'>$albumName</td>
				</tr>";		
		}
	}
	
	$pdoQuery2 = ("SELECT trackNum, songs.name AS songName, albums.name AS albumName FROM songs, albums, artists WHERE artists.name = :Search");
	$pdoResult2 = $pdo->prepare($pdoQuery2);
	$pdoExec2 = $pdoResult2->execute(array(":Search"=>$Search));
	
	if ($pdoExec2) {
		foreach($pdoResult2 as $row2){
			
				$trackNum = $row2['trackNum'];
				$songName = $row2['songName'];
				$albumName = $row2['albumName'];
			
				echo "<tr>
					<td>$trackNum</td>
					<td colspan='2'>$songName</td>
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


