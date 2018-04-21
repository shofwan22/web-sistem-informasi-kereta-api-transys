<?php
	$database = mysqli_connect("localhost","root","","usertransys");
	$get_data = mysqli_query($database,"SELECT k.*, a.nama_asal,t.nama_tujuan FROM KERETA k JOIN ASAL a ON k.id = a.id_kereta JOIN TUJUAN t ON a.id_kereta = t.id_kereta");
	mysqli_close($database);
?>