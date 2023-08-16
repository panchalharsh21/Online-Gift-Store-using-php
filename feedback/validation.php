<?php
$value = $_GET['query'];
$formfield = $_GET['field'];
if ($formfield == "username") 
{
	if (strlen($value) < 4) 
	{
		echo "Must be 3+ letters";
	} 
	else 
	{
		echo "<span>Valid</span>";
	}
}
if ($formfield == "email") 
{
	if (!preg_match("/[a-z0-9]+@[a-z]+\.[a-z]{2,3}/", $value)) 
	{
		echo "Invalid email";
	} 
	else
	{
		echo "<span>Valid</span>";
	}

}

?>