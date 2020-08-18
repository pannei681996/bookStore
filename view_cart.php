<?php
	session_start();
	if(!isset($_SESSION['cart'])){
		header("location:index.php");
	}
	include("admin/confs/config.php");

?>
<!DOCTYPE html>
<html>
<head>
	<title>View Cart</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
	<div class="container bg-light">
		 <h2 class="container text-center">View Your Cart</h2>
  			<br>
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a href="index.php" class="nav-link active">&laquo; Continue Shopping</a>
					</li>
					<li class="nav-item">
						<a href="clear_cart.php" class="nav-link">&times; Clear Cart</a>
					</li>
				</ul>			
			
		<div class="row">
			<div class="col-sm-12">
				
				<table class="table table-hover table-striped">
					<tr>
						<th>Book Title</th>
						<th>Quantity</th>
						<th>Unit Price</th>
						<th>Price</th>
					</tr>
					<?php
					$total=0;
					foreach ($_SESSION['cart'] as $id => $qty): 
						$result=mysqli_query($conn,"SELECT title,price FROM books WHERE id=$id");
						$row=mysqli_fetch_assoc($result);
						$total+=$row['price']*$qty;
					?>
					<tr>
					 	<td><?php echo $row['title'] ?></td>
					 	<td><?php echo $qty ?></td>
					 	<td><?php echo $row['price'] ?> Kyats</td>
					 	<td><?php echo $row['price'] * $qty ?> Kyats</td>
					 </tr>
					<?php endforeach; ?>
					<tr>
						<td colspan="3" align="right"><b>Total:</b></td>
						<td><?php echo $total; ?> Kyats</td>
					</tr>
				</table>
				<div class="order-form">
					<h2>Order Now</h2>

					
					<form action="submit_order.php" method="post">
						<div class="form-group">
							<label for="name">Your Name</label>
							<input type="text" name="name" id="name" class="form-control" required>
						</div>
						<div class="form-group">
							<label for="email">Your Email</label>
							<input type="email" name="email" id="email" class="form-control" required>
						</div>
						<div class="form-group">
							<label for="phone">Phone</label>
							<input type="phone" name="phone" id="phone" class="form-control" required >
						</div>
						<div class="form-group">
							<label for="address">Address</label>
							<textarea name="address" id="address" class="form-control" required></textarea>
						</div>
						<input type="submit" value="Submit Order" class="btn btn-info">
						<a href="index.php" class="btn btn-success">back</a><br>

					</form>
				</div>
			</div>
		</div>
		<div class="bg-info text-center" style="padding-bottom: 12px; color: white; margin: 8px;">
			<br>
			$copy;<?php echo date("Y") ?>. All right reserved.
		</div>
	</div>
</body>
</html> 