<?php
session_start();
include("admin/confs/config.php");

$name=$_POST['name'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$address=$_POST['address'];

mysqli_query($conn,"INSERT INTO orders(name,email,phone,address,status,created_date,modified_date) VALUES('$name','$email','$phone','$address',0,now(),now())");

$order_id=mysqli_insert_id($conn);//get autoincrement id

foreach ($_SESSION['cart'] as $id => $qty) {
	mysqli_query($conn,"INSERT INTO order_items(order_id,book_id,qty) VALUES($order_id,$id,$qty)");
	# code...
}
unset($_SESSION['cart']);
?>
<!DOCTYPE html>
	<html>
	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	</head>
	<body>
		<div class="container bg-light">
			<div class="container text-center bg-info" style="color: white;">
				<br>
				<h1> Order Submitted!!</h1>
				<br>
			</div> 
			<div class="msg">
				<p>Your order has been submitted.</p>
				<p>We'll deliver the items soon.</p>
				<p><a href="index.php" class="done">Book Store Home</a></p>
			</div>
			<div class="bg-info text-center" style="padding-bottom: 12px; color: white; margin: 8px;">
			<br>
			$copy;<?php echo date("Y") ?>. All right reserved.
		</div>
		</div>
	</body>
	</html>