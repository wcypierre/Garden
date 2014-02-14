<?php 

if(!isset($_POST['search']) || empty($_POST['search']))
{
	header("Location: index.php");
	die();
}

$redirect_url = "https://www.google.com/search?q=site:lowendtalk.com ";
$search_query = $_POST['search'];

if(isset($_POST['type']))
{
	if($_POST['type'] == "post")
	{
		$redirect_url .= "intext:";
	}
	else if($_POST['type'] == "title")
	{
		$redirect_url .= "intitle:";
	}

	$redirect_url .= $search_query;
}
else
{
	$redirect_url .= $search_query;
}

header("Location: " . $redirect_url);
die();

?>
