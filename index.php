<?php
	session_start();
	include("admin/confs/config.php");

	$cart=0;
	if(isset($_SESSION['cart'])){
		foreach ($_SESSION['cart'] as $qty) {
			$cart+=$qty;
			# code...
		}
	}

	if(isset($_GET['cat'])){
		$cat_id=$_GET['cat'];
		$books=mysqli_query($conn,"SELECT * FROM books WHERE category_id=$cat_id");
		$cat_name = mysqli_query($conn,"SELECT name FROM categories WHERE id=$cat_id");
		$name=mysqli_fetch_assoc($cat_name);

	}
	else{
		$books=mysqli_query($conn,"SELECT * FROM books");
		$name["name"] = "All Categories";
	}


	$cats=mysqli_query($conn, "SELECT * FROM categories");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Book list</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div class="container bg-light ">
		<div class="container text-center bg-info" style="color: white;">

			<br><h2><b>BOOKS STORE</b></h2>
			<P><em>We Love Books!</em></P><br><br>
		</div> 
	
		<nav class="navbar navbar-default bg-light">
			<!-- <div class=" container-fluid"> -->
				<div class="navbar-header">
					<a href="index.php" class="navbar-brand" style="text-decoration: none; display: block;">Books Store</a>
				</div>
				<ul class="cats nav navbar-nav">
					<li class="active">
					<a data-toggle="tab" href="view_cart.php" style="display: inline-block; text-decoration: none;">
					(<?php echo $cart ?>)books in your cart
					</a>
					</li>
				</ul>
			<!-- </div> -->
		</nav>

		<div class="row">
			<div class="col-sm-4 bg-blue">
				<ul class="list-group">
						<li class="list-group-item">
							<b><a href="index.php" >All Categories</a></b>
						</li>
					<?php while($row=mysqli_fetch_assoc($cats)): ?>
						<li class="list-group-item ">
							<a href="index.php ?cat=<?php echo $row['id']?>" >
							<?php echo $row['name'] ?>
						</a>
						</li>
				<?php endwhile; ?>
				</ul>
			</div>	
			<div class="col-sm-8">
				<h2 class="container text-center">
					<?php  echo $name['name'];  ?>
				</h2>
					<ul class="books">
					<?php while($row=mysqli_fetch_assoc($books)): ?>
						<li>
							<img src="admin/covers/<?php echo $row['cover'] ?>" height="150">
							<b><a href="book_detail.php ?id= <?php echo $row['id'] ?> "><?php echo $row['title'] ?></a></b>
							<i><?php echo $row['price'] ?> Kyats</i>
							<a href="add_to_cart.php ?id=<?php echo $row['id'] ?>" class="add-to-cart">Add to cart</a>
						</li>
					<?php endwhile; ?>
					</ul>					
					
			</div>
		</div>	

		<div class="bg-info text-center" style="padding:0 8px 8px 0; color: white;">
			<br>
			$copy;<?php echo date("Y") ?>. All right reserved.
		</div>
		
	</div>
</body>
</html>