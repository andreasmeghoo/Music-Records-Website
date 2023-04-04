<?php
ini_set("session.save_path", "/home/unn_w21017158/sessionData");
session_start();

try{
require_once("functions.php");
echo makeLoginFormOrLogoutButton();
}
catch (Exception $e){
echo "<p>Something went wrong: ".$e->getMessage()."</p>\n";
}
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Credits</title>
	<link href="stylesheet" rel="stylesheet.css" type="text/css">
</head>
<body>
<h1>Credits</h1>
<p>
Name: Andreas Meghoo<br>
Student ID: W21017158
</P>
<h2> Reference List </h2>
<p>
Northumbria University (2022) Database Information Management: Updating records using PDO in PHP. Available at: https://elp.northumbria.ac.uk/ultra/courses/_726514_1/outline/file/_14974061_1 (Accessed: 5 January 2023).<br>
Northumbria University (2022) Validating and sanitising data. Available at: https://elp.northumbria.ac.uk/ultra/courses/_726514_1/outline/file/_15004500_1 (Accessed: 5 January 2023).<br>
Northumbria University (2022) Hashing and sessions. Available at: https://elp.northumbria.ac.uk/ultra/courses/_726514_1/outline/file/_15027544_1 (Accessed: 5 January 2023).<br>
Northumbria University (2022) Further ways to use functions. Available at: https://elp.northumbria.ac.uk/ultra/courses/_726514_1/outline/file/_14787043_1 (Accessed: 5 January 2023).<br>
Vasiliou, C. (2022) JavaScript 2.0 – Events, Forms & DOM. Available at: https://elp.northumbria.ac.uk/ultra/courses/_726514_1/outline/edit/document/_14787059_1?courseId=_726514_1&view=content (Accessed: 5 January 2023).<br>
Northumbria University (2022) AJAX. Available at: https://elp.northumbria.ac.uk/ultra/courses/_726514_1/outline/edit/document/_15117346_1?courseId=_726514_1&view=content (Accessed: 5 January 2023).
</p>
</body>
</html>