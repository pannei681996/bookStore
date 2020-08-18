<?php include("confs/auth.php"); ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<style type="text/css">
		form label{
			display: block;
			margin: 8px;

		}
	</style>
</head>
<body>
	<h1>New Book</h1>
	<ul class="menu">
		<li><a href="book_list.php">Manage Books</a></li>
		<li><a href="cat_list.php">Manage Categories</a></li>
		<li><a href="orders.php">Manage Orders</a></li>
		<li><a href="logout.php">Logout</a></li>
	</ul>
	<form action="book_add.php" method="post" enctype="multipart/form-data">
		<label for="title">Title</label>
		<input type="text" name="title" id="title">
		<label for="author">Author</label>
		<input type="text" name="author" id="author">
		<label for="summary">Summary</label>
		<input type="text" name="summary" id="summary">
		<label for="price">Price</label>
		<input type="text" name="price" id="price">
		<label for="categories">Category</label>
		<select name="category_id">
			<option value="0">--Option--</option>
			<?php
				include("confs/config.php");
				$sql="SELECT id,name FROM categories"; 
				$result= mysqli_query($conn,$sql);
				while($row =mysqli_fetch_assoc($result)):
			?>
			<option value="<?php echo $row['id']?>">
				<?php echo $row['name'] ?>
			</option>
			<?php endwhile; ?>
		</select>
		<label for="cover">Cover</label>
		<input type="file" name="cover" id="cover">
		<input type="submit" name="submit" value="Add">
		<a href="book_list.php" class="back">Back</a>
	</form>
</body>
</html