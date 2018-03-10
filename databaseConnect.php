<?php

//Connect to database using PDO 
//Plain text password needs to be removed  
$dsn = 'mysql:host=localhost;dbname=freshwaterdb';
$username = 'freshwater';
$password = '8#]Ov?I.1ryS';

try 
{
    $db = new PDO($dsn, $username, $password);
} 
catch (PDOException $e) 
{
    $error_message = $e->getMessage();
    echo '<p>Not connected to database</p>';
    exit();
}

?>