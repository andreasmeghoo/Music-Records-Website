<?php
ini_set("session.save_path", "/home/unn_w21017158/sessionData");
session_start();
try
{
if($_SESSION['loggedIn'] == false)
{
	header("Location: recordList.php");
exit();
}
require_once ('functions.php');
echo makeLoginFormOrLogoutButton();
$dbConn = getConnection();

$recordID = filter_has_var(INPUT_POST,'recordID') ? $_REQUEST['recordID'] : null;
$recordTitle = filter_has_var(INPUT_POST,'recordTitle') ? $_REQUEST['recordTitle'] : null;
$recordYear = filter_has_var(INPUT_POST,'recordYear') ? $_REQUEST['recordYear'] : null;
$pubID = filter_has_var(INPUT_POST,'pubID') ? $_REQUEST['pubID'] : null;
$catID = filter_has_var(INPUT_POST,'catID') ? $_REQUEST['catID'] : null;
$recordPrice = filter_has_var(INPUT_POST,'recordPrice') ? $_REQUEST['recordPrice'] : null;

$sql = "UPDATE nmc_records SET
recordTitle='$recordTitle',
recordYear='$recordYear',
pubID='$pubID',
catID='$catID',
recordPrice='$recordPrice'
WHERE recordID = '$recordID'";

$dbConn->exec($sql);
echo "<h1>Edit Record</h1>
The Record has been updated.";
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