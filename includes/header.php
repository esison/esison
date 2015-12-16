<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>The Kind n Yummy Database</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<?php
include("includes/dbconnect.php");
?>
<div class="header">
		<div class="logo">
		<a href="index.php"><img src="images/logo.gif" alt="Kind n Yummy Database" /></a>
		</div> <!--logo ends here!!-->
		<div class="navigation">
		<p><?php
			include ("group_list.php");
		
		?>
		</p>
	</div><!--category selection ends here!!-->
</div><!--header ends here!!-->
<div class="search">
	</br><h2>search</h2>
<form name="search" method="post" action="search_results.php">
	<input name="search" type="text" size="30" maxlength="50"/>
	<input type="submit" name="Submit" value="Search"/>
</form>
</div>

</html>