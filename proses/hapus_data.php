<?php
session_start();
	$id = $_GET['id'];
	$database = mysqli_connect("localhost","root","","usertransys");
	mysqli_query($database,"DELETE FROM KERETA WHERE id=$id");
	echo "<script>alert('Data Kereta berhasil dihapus!');window.location.href='../lihatdata.php';</script>";
	mysqli_close($database);
?>