<?php

//connect to database using mysqli
$db = mysqli_connect("localhost", "freshwater", "8#]Ov?I.1ryS", "freshwaterdb");

if(!$db) 
{
    die("Connection failed: ".mysqli_connect_error());
}
?>
