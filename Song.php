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
    public $albumName;
    public $trackNumber;

    /**
     * Song constructor.
     * @param $row
     */
    public function __construct($row) {
        $this->id = $row["songID"];
        $this->songName = $row["name"];
        $this->albumName = $row["albumID"];
        $this->trackNumber = $row["trackNum"];
    }

}