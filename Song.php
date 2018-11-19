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
    public $albumID;
    public $trackNumber;

    /**
     * Song constructor.
     * @param $row
     */
    public function __construct($row) {
//        foreach ($row as $id) {
//            echo $id . ",";
//        }
        $this->id = $row["songID"];
        $this->songName = $row["songName"];
        if (isset($row["albumID"]))
            $this->albumID = $row["albumID"];
        if (isset($row["albumName"]))
            $this->albumName = $row["albumName"];

        $this->trackNumber = $row["trackNum"];
    }

}