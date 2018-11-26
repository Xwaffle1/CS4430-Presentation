<?php

/**
 * Created by PhpStorm.
 * User: chase
 * Date: 11/14/2018
 * Time: 8:40 PM
 */
class Song {
    public $id;
    public $songName;
    public $artistID;
    public $trackNumber; // Used for Album Track #

    /**
     * Song constructor.
     * @param $row
     */
    public function __construct($row) {
        $this->id = $row["songID"];
        $this->songName = $row["songName"];
        $this->artistID = $row["artistID"];
        $this->trackNumber = $row["trackNum"];
    }
}