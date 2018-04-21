<?php
	session_start();
	$passlama = $_POST['oldpassword'];
	$passbaru = $_POST['newpassword'];
	$passbaru2 = $_POST['newpassword2'];
	if (isset($_POST['simpan'])) {
		$database = mysqli_connect("localhost","root","","usertransys");
		if($passlama==null || $passbaru==null || $passbaru2==null){
				echo "<script>alert('Kata sandi Kosong!');window.location.href='../pengaturan.php';</script>";
		}elseif($passbaru == $passbaru2){
			$request = mysqli_query($database,"SELECT * FROM ADMIN WHERE password='$passlama' AND username='admin'");
			$cek = mysqli_num_rows($request);
			if($cek == 1){
				mysqli_query($database,"UPDATE ADMIN SET password ='$passbaru' WHERE username ='admin'");	
				echo "<script>alert('Kata sandi baru berhasil disimpan!');window.location.href='../pengaturan.php';</script>";
			}else{
				echo "<script>alert('Kata sandi lama salah!');window.location.href='../pengaturan.php';</script>";
			}	
		}else{
			echo "<script>alert('Kata sandi baru tidak sesuai!'); window.location.href='../pengaturan.php';</script>";
		}
		mysqli_close($database);		
	}elseif (isset($_POST['batal'])) {
			echo "<script>window.location.href='../adminhome.php';</script>";
	}
?>