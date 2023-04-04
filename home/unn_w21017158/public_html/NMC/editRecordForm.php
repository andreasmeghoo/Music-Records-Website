<?php
ini_set("session.save_path", "/home/unn_w21017158/sessionData");
session_start();

try {
if($_SESSION['loggedIn'] == false)
{
	header("Location: recordList.php");
exit();
}
require_once("functions.php");
echo makeLoginFormOrLogoutButton();


$dbConn = getConnection();

$recordID = filter_has_var(INPUT_GET,'recordID') ?$_REQUEST['recordID'] : null;
$sql = "SELECT recordID,recordTitle,recordYear,nmc_records.pubID,pubName,nmc_records.catID,catDesc,recordPrice
FROM nmc_records
INNER JOIN nmc_category
ON nmc_records.catID = nmc_category.catID
INNER JOIN nmc_publisher
ON nmc_records.pubID = nmc_publisher.pubID
WHERE recordID = $recordID";
$queryResult = $dbConn->query($sql);

$pubSQL = "SELECT pubID, pubName
from nmc_publisher";
$pubQueryResult = $dbConn->query($pubSQL);


$catSQL = "SELECT catID, catDesc
from nmc_category";
$catQueryResult = $dbConn->query($catSQL);


while ($rowObj = $queryResult->fetchObject()){
echo "<h1>Edit Record</h1>
<form id='EditRecord' action='editRecord.php' method='post'>
<input type='hidden' name='recordID' value='{$rowObj->recordID}'><br><br>
Title <input type='text' name='recordTitle' size=100 value='{$rowObj->recordTitle}'><br><br>
Year <input type='text' name='recordYear' value='{$rowObj->recordYear}'><br><br>
Publisher <select name='pubID' id='pubID'>
<option value='{$rowObj->pubID}' selected>$rowObj->pubName</option>";

while ($pubRowObj = $pubQueryResult->fetchObject()){
echo "<option value='{$pubRowObj->pubID}'>$pubRowObj->pubName</option>";
}
echo "</select><br><br>
Category <select name='catID' id='catID'>
<option value='{$rowObj->catID}' selected>$rowObj->catDesc</option>";
while ($CatRowObj = $catQueryResult->fetchObject()){
echo "<option value='{$CatRowObj->catID}'>$CatRowObj->catDesc</option>";
}
echo"</select><br><br>
Price <input type='text' name=recordPrice value='{$rowObj->recordPrice}'><br><br>
<input type='submit' value='Submit'>
</form>";
}
}
catch (Exception $e){
echo "<p>Query failed: ".$e->getMessage()."</p>\n";
}
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Edit Record</title>
</head>
<body>
</body>
</html>