<?php
/**
 * Created by PhpStorm.
 * User: chase
 * Date: 11/28/2018
 * Time: 2:40 PM
 */

include "index.html";
include "database.php";


echo '
    <form method="GET" action="add-artist.php">   
        <div class="container input-group mb-3">
            <div class="input" style="margin-right: 10px">
                <button class="btn btn-success" type="submit">+</button>
            </div>
            <h3>Add Artist</h3>
        </div>
      </form>
      ';


echo '
    <form method="GET" action="add-album.php">   
        <div class="container input-group mb-3">
            <div class="input" style="margin-right: 10px">
                <button class="btn btn-success" type="submit">+</button>
            </div>
            <h3>Add Album</h3>
        </div>
      </form>
      ';

echo '
    <form method="GET" action="add-song.php">   
        <div class="container input-group mb-3">
            <div class="input" style="margin-right: 10px">
                <button class="btn btn-success" type="submit">+</button>
            </div>
            <h3>Add Song</h3>
        </div>
      </form>
      ';
