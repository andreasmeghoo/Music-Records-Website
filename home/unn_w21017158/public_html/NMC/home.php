<?php
ini_set("session.save_path", "/home/unn_w21017158/sessionData");
session_start();

try {
require_once("functions.php");

echo makeLoginFormOrLogoutButton();
}
catch (Exception $e){
echo "<p>Query failed: ".$e->getMessage()."</p>\n";
}


?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Home</title>
</head>
<body>
<h1>Home</h1>
<ul>
<li><a href="recordList.php">Edit Records</a></li>
<li><a href="orderRecordsForm.php">Order Records</a></li>
<li><a href="credits.php">Credits</a></li>
</ul>
</body>
<aside id='offers'>
<h2>Special offers</h2>
<h3 id = 'title'></h3>
<h4 id = 'category'></h4>
<h5 id = 'price'></h5>
</aside>
<script>
window.addEventListener('load',function(){
"use strict";
const link = 'getOffers.php';

const getOffers = function() {	
	fetch(link)
	.then(
		function (response){
			return response.json();
		})
	.then(
		function(data) {
				//document.getElementById("movies").innerHTML = data.title;
				document.getElementById("title").innerHTML = data.recordTitle;
				document.getElementById("category").innerHTML = data.catDesc;
				document.getElementById("price").innerHTML = data.recordPrice;
		})
	.catch(
		function(e){ 
			console.log("A problem happened", e);  
	});
};
getOffers();		
setInterval(getOffers, 5000);
});
</script>
</aside>
</html>