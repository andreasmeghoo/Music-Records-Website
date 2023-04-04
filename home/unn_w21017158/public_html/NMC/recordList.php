<?php
ini_set("session.save_path", "/home/unn_w21017158/sessionData");
session_start();


try {
require_once("functions.php");
$dbConn = getConnection();

echo makeLoginFormOrLogoutButton();

echo "<h1>Edit Records</h1>
<ul>";

$sqlQuery = "SELECT recordID, recordTitle, recordYear, catDesc, recordPrice
		FROM nmc_records
		INNER JOIN nmc_category
		ON nmc_records.catID = nmc_category.catID
		ORDER BY recordTitle";
$queryResult = $dbConn->query($sqlQuery);

while ($rowObj = $queryResult->fetchObject()) {
	echo "<li class='record'>\n
	<span class = recordTitle> <a href='editRecordForm.php?recordID={$rowObj->recordID}'>{$rowObj->recordTitle}<br></a></span>\n
	<span class='recordYear'>Year: {$rowObj->recordYear}<br></span>\n
	<span class='catDesc'>Category: {$rowObj->catDesc}<br></span>\n
	<span class='recordPrice'>Price: {$rowObj->recordPrice}<br><br></span>\n
	</li>\n";

}
echo "</ul>";
}
catch (Exception $e){
echo "<p>Query failed: ".$e->getMessage()."</p>\n";
}



?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Edit Records</title>
	<link href="stylesheet" rel="stylesheet.css" type="text/css">
</head>
<body>
</body>
</html>