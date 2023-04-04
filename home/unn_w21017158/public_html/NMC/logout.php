<?php
ini_set("session.save_path", "/home/unn_w21017158/sessionData");
session_start();
try{
session_destroy();
header('Location: ' . $_SERVER['HTTP_REFERER']);
exit();
}catch (Exception $e){
echo "<p>Something went wrong: ".$e->getMessage()."</p>\n";
}
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Logout</title>
</head>
<body>