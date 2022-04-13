<?php 

session_start();
session_destroy();

header("Location: /Newsportal/index.php");

?>