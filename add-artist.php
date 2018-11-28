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
$allArtist = getAllArtists();
echo "</script>";

echo "
<form method='post' action='submit-add.php' style='margin-top: 5%;' onsubmit='return validateForm(" . json_encode($allArtist) . ");' name='form'>
<div class='input-group' style='margin-left: 40%;'>
<h4 style='margin-right: 10px;'>Artist Name:</h4><input type='text' name='addartist'>
</div>
<div  style='margin-left: 10%; margin-top: 5px;'>
<input value='Add' type='submit' class='btn-primary btn'>
</div>
</form>
";