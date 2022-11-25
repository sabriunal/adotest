<?php

ini_set('display_errors', '1');
error_reporting(E_ALL);

//composer ile gelen sınıfları çağıralım
require_once './vendor/autoload.php';

$conn = ADONewConnection('mysqli');
$conn->Connect('localhost', 'root', '123', 'adotest');

$conn->SetFetchMode(ADODB_FETCH_ASSOC);
$conn->Execute('SET NAMES "utf8"');
$conn->Execute('SET CHARACTER SET utf8_german2_ci');
$conn->Execute('SET COLLATION_CONNECTION = "utf8_german2_ci"');
$conn->debug = true;

$sql1    = 'SELECT content_id
            FROM app_content
            WHERE content_cat = ?';
var_dump($conn->getAll($sql1, [101]));


$sql2    = 'SELECT content_id
            FROM app_content
            WHERE content_cat = 101';
var_dump($conn->getAll($sql2));

$conn->Close();
