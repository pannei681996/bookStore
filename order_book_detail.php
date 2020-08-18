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
			<br><h1><b>Book Detail</b></h1>
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
		 		<a href="admin/orders.php" class="btn btn-danger">&laquo; Go Back</a>
		 	</div>
		 </div>
	</div>
</body>
</html>


<!-- <h1>Book Detail</h1>
	<?php 
	include("admin/confs/config.php");
	$id=$_GET['id'];
	$books=mysqli_query($conn, "SELECT * FROM books WHERE id=$id");
	$row=mysqli_fetch_assoc($books);
	 ?>
	 <div class="detail">
	 	<a href="admin/orders.php" class="back">&laquo; Go Back</a>
	 	<img src="admin/covers/<?php echo $row['cover'] ?>">
	 	<h2><?php echo $row['title'] ?></h2>
	 	<i>by<?php echo $row['author'] ?></i>,
	 	<b>$<?php echo $row['price'] ?></b>
	 	<p><?php echo $row['summary'] ?></p>
	 	
	 </div>
	 <div class="footer">
	 	&copy; <?php echo date("Y") ?>. All right reserved.
	 </div> -->