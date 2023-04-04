<?php

function getConnection() {
try {
$connection = new PDO("mysql:host=localhost;dbname=unn_w21017158",
  "username", "password");
$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $connection;
} catch (Exception $e) {
throw new Exception("Connection error ". $e->getMessage(), 0, $e);
}
}

function makeLoginForm(){
	$loginForm = <<<LOGIN
		<form class="login" method="post" action="login.php"> 
		
			Username <input type="text" name="username">
			Password <input type="password" name="password">
			<input type="submit" value="Login">
		</form>
LOGIN;
	$loginForm .="\n";
	return $loginForm;
}

function makeLogoutButton(){
	$logout = <<<LOGOUT
	<form action="logout.php">
	<input type="submit" value="Log out">
	</form>
LOGOUT;
$logout .="\n";
return $logout;
}

function makeLoginFormOrLogoutButton(){
	if (!isset($_SESSION['loggedIn']))
{
echo makeLoginForm();	
}
else if($_SESSION['loggedIn'] == 'b:1')
{
echo makeLogoutButton();
echo "You are now logged in";
}
else
{
echo makeLoginForm();
echo "You entered the incorrect password or username. Try again.";	
}
}



?>
