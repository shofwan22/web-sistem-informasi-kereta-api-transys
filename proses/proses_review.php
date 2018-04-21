<?php
	session_start();
	$database = mysqli_connect("localhost","root","","usertransys");
	$id = $_GET['idplg'];
		$query = mysqli_query($database,"SELECT * FROM PELANGGAN WHERE id_pelanggan=$id");
		$query2 = mysqli_query($database,"SELECT * FROM KURSI WHERE id_pelanggan=$id");
		$data = mysqli_fetch_array($query2);
		$id_gerbong = $data['id_gerbong'];
		$query3 = mysqli_query($database,"SELECT * FROM GERBONG WHERE id=$id_gerbong");
		$data1 = mysqli_fetch_array($query3);
		$id_kereta = $data1['id_kereta'];
		$query4 = mysqli_query($database,"SELECT k.*,a.nama_asal,t.nama_tujuan FROM KERETA k JOIN ASAL a ON k.id = a.id_kereta JOIN TUJUAN t ON t.id_kereta = a.id_kereta WHERE t.id_kereta=$id_kereta");

?>