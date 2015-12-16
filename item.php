<?php 
	//redirect back to index if whatever reason doesn't connect
	
if (!isset($_GET['food_id'])){
	header("Location: index.php");
}
$item_sql="SELECT * FROM food_items WHERE food_id=".$_GET['food_id'];

if($item_query=mysqli_query($dbconnect, $item_sql)) {
	$item_rs=mysqli_fetch_assoc($item_query);
	?>
	<p><img src="/esison/images/<?php echo $item_rs['food_picture_url']; ?>" /></p></br>
	<h1><?php echo$item_rs['food_name']; ?></h1>
	<p></br><?php echo $item_rs ['food_description'];?></p>
	<p></br><a href="<?php echo $item_rs ['sources'];?>"> Link to Source</a></p>
	<?php

	}


?>