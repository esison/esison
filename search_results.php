<?php

if (!isset($_POST['search'])) {
	header("Location:index.php");
}
$search_sql="SELECT * FROM food_items WHERE food_name LIKE '%".$_POST['search']."%'";
$search_query=mysql_query($search_sql);
if(mysql_num_rows($search_query)!=0){
$search_rs=mysql_fetch_assoc($search_query);
}
?>
<h2>Search Results</h2>
<?php if(mysql_num_rows($search_query)!=0) {
	do {?>
	<p><?php echo $search_rs['food_name']; ?></p>
	<?php
	}
	while ($search_rs=mysql_fetch_assoc($search_query));
} else {
	echo "No results found...";
}
?>