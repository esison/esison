

<body>
<div class="container">
	<?php
		include("includes/header.php");
		//Need to remove banner when moving to other pages
		if (!isset($_GET['page'])) {
			?><div class="banner"><img src="images/banner.jpg" alt="fruit of the month"/></div>
			<?php
		}
	?>
	
    <div class="maincontent">
 <!-- main content goes here. This will be a one page site thanks to a great youtube tutorial from Phil Adams-->
		<?php
		if(!isset($_GET['page'])) {
			include("home.php");
		} else {
			$page=$_GET['page'];
		include("$page.php");
			
		}
		
		?>
  </div>
    <?php
		include("includes/seccontent.php");
	?>

</div><!-- Container ends here-->
</body>
</html>
