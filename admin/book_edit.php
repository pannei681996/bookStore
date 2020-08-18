<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<h1>Edit Books</h1>
	<?php

	include("confs/config.php");
	$id=$_GET['id'];
	$result=mysqli_query($conn, "SELECT * FROM books WHERE ID=$id");
	$row=mysqli_fetch_assoc($result);

	?>
	<form action="book_update.php" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<?php echo $row['id'] ?>">
		<label for="title">Book Title</label>
		<input type="text" name="title" id="title" value="<?php echo $row['title'] ?>"><br>

		<label for="author">Author</label>
		<input type="text" name="author" id="author" value="<?php echo $row['author'] ?>"><br>

		<label for="sum">Summary</label>
		<textarea name="summary" id="sum" ><?php echo $row['summary'] ?></textarea> <br>

		<label for="price">Price</label>
		<input type="text" name="price" id="price" value="<?php echo $row['price'] ?>">

		<label for="categories">Category</label>
		<select name="category_id" id="categories">
			<option value="0">--Choose--</option>
			<?php
				$categories = mysqli_query($conn,"SELECT id,name FROM categories");
				while($cat = mysqli_fetch_assoc($categories)):
			?>
			<option value="<?php echo $cat['id'] ?>"
				<?php if($cat['id'] == $row['category_id']) echo "selected" ?> >
				<?php echo $cat['name'] ?>

			</option>
			<?php endwhile; ?>
		</select>

		<br><br>

		<img src="covers/<?php echo $row['cover'] ?>" alt=
		"" height="150">

		<label for="cover">Change Cover</label>
		<input type="file" name="cover" id="cover">
		<br><br>

		<input type="submit" value="Update Book">
		<a href="book_list.php">Back</a>

		
	</form>
</body>
</html>