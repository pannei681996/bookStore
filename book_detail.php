<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	
</head>
<body>
	<div class="container">
		<div class="container text-center bg-info" style="color: white;">

			<br><h2><b>BOOKS Detail</b></h2><br> 
		</div> 
		<?php 
		include("admin/confs/config.php");
		$id=$_GET['id'];
		$books=mysqli_query($conn, "SELECT * FROM books WHERE id=$id");
		$row=mysqli_fetch_assoc($books);
		 ?>
		 <div class="card text-center" style="background-color: pink;">
		 	<div class="card-header text-center">
		 		<h2><?php echo $row['title'] ?></h2>
		 	</div>
		 	<div class="card-body">
		 		<img src="admin/covers/<?php echo $row['cover'] ?>"><br>
		 		<i>by <?php echo $row['author'] ?></i>,<br>
		 		<b><?php echo $row['price'] ?> Kyats</b>
		 		<p><?php echo $row['summary'] ?></p>

		 	</div>
		 	<div class="card-footer">
		 		<a href="add_to_cart.php?id=<?php echo $id ?>" class="btn btn-info">Add to Cart</a>
		 		<a href="index.php" class="btn btn-danger">Back</a>
		 	</div>
		 </div>
	</div>
</body>
</html>