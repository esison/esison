<?php
$group_sql="SELECT * FROM food_group ORDER BY group_name";
			$group_query=mysqli_query($dbconnect, $group_sql);
			$group_rs=mysqli_fetch_assoc($group_query);
			
			do { ?>
			<a href="index.php?page=group&group_id=<?php echo $group_rs['group_id']; ?>"><?php echo $group_rs['group_name']; ?></a> 
				
				<?php
				
			} while ($group_rs=mysqli_fetch_assoc($group_query))
?>