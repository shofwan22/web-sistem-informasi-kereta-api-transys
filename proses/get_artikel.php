<?php
	$database = mysqli_connect("localhost","root","","usertransys");
	$get_judul = mysqli_query($database,"SELECT id,judul FROM ARTIKEL ORDER BY id DESC");
	mysqli_close($database);
?>