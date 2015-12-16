<?php
	//redirect back to index page if category id for whatever reason don't work
	if(!isset($_GET['group_id'])) {
	header("Location:index.php");	
	
	}
	//Need to select all the food items from the clicked food group
	$group_items_sql="SELECT food_group.group_name, food_group.group_description, food_items.food_id, food_items.food_name FROM food_group JOIN food_items ON food_group.group_id=food_items.group_id WHERE food_group.group_id=".$_GET['group_id'];
	if ($group_query=mysqli_query($dbconnect, $group_items_sql)){
	$group_rs=mysqli_fetch_assoc ($group_query);	
	}
?>
	<h1><?php echo $group_rs['group_name']; ?></h1></br>
	<p><?php echo $group_rs['group_description']; ?></p></br>
	<?php
	do {
	?>
	<div class="item">
	
	<a href="index.php?page=item&food_id=<?php echo $group_rs['food_id']; ?>"><p><?php echo $group_rs['food_name']; ?></p></a>
	</div>	
	<?php		
	} while($group_rs=mysqli_fetch_assoc($group_query));
	?>