<?php
ini_set("session.save_path", "/home/unn_w21017158/sessionData");
session_start();

try{
$username = filter_has_var(INPUT_POST, 'username') ? $_POST['username']: null;
$password = filter_has_var(INPUT_POST, 'password') ? $_POST['password']: null;

require_once("functions.php");
$dbConn = getConnection();
$sql = "SELECT username,passwordHash from nmc_users WHERE username = :username";
$statement = $dbConn->prepare($sql);
$statement->execute(array(':username' => $username));
$queryResult = $statement->fetchObject();

if($queryResult != null)
{
	if(password_verify($password,$queryResult->passwordHash)){
		$_SESSION['loggedIn'] = true;
		header('Location: ' . $_SERVER['HTTP_REFERER']);
		exit();
	}
	else
	{
		$_SESSION['loggedIn'] = false;
		header('Location: ' . $_SERVER['HTTP_REFERER']);
		exit();
	}
}
else
{
		$_SESSION['loggedIn'] = false;
		header('Location: ' . $_SERVER['HTTP_REFERER']);
		exit();
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
	<title>Login</title>
	<link href="stylesheet" rel="stylesheet" type="text/css">
</head>
<body>
</body>
</html>