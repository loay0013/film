<?php
require "classes/classDB.php";

define("CONFIG_LIVE", "0"); // 0: Test enviroment || 1: Live enviroment

if(CONFIG_LIVE == 0){
    $DB_SERVER = "localhost";
    $DB_NAME = "Film";
    $DB_USER = "root";
    $DB_PASS = "root";
}else{
    $DB_SERVER = "lasellah_com_db";
    $DB_NAME = "Film";
    $DB_USER = "lasellah.com";
    $DB_PASS = "fHc2Ga4trgp3";
}

$db = new db($DB_SERVER, $DB_NAME, $DB_USER, $DB_PASS);