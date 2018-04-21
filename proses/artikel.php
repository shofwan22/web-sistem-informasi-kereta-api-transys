<?php
session_start();
	$judul = $_POST['judul'];
	$isi = $_POST['isi'];
	if(isset($_POST['simpan'])){
		$database = mysqli_connect("localhost","root","","usertransys");
		mysqli_query($database,"INSERT INTO ARTIKEL VALUES(NULL,'$judul','$isi',CURDATE())");	
		echo "<script>alert('Artikel berhasil disimpan');window.location.href='../lihatartikel.php';</script>";
	}elseif(isset($_POST['batal'])){
		echo "<script>window.location.href='../adminhome.php';</script>";
	}
	mysqli_close($database);
?>