<?php
	session_start();
	$no_telp = $_POST['no_telp'];
	$email = $_POST['email'];
	if (isset($_POST['simpan'])) {
		$database = mysqli_connect("localhost","root","","usertransys");
		$query = mysqli_query($database,"SELECT * FROM KONTAK_US");
		$cek = mysqli_num_rows($query);
		if ($cek==0 && $email!=null && $no_telp!=null) {
			mysqli_query($database,"INSERT INTO KONTAK_US VALUES('$no_telp','$email')");
		}else{
			if($no_telp!=null && $email !=null){
				mysqli_query($database,"UPDATE KONTAK_US SET no_telp ='$no_telp',email ='$email'");
			}elseif($email==null && $no_telp!=null){
				mysqli_query($database,"UPDATE KONTAK_US SET no_telp ='$no_telp'");
			}elseif($no_telp==null && $email!=null){
				mysqli_query($database,"UPDATE KONTAK_US SET email ='$email'");
			}else{
				echo "<script>alert('Data Kontak Kosong');window.location.href='../pengaturan.php';</script>";
			}
			
		}
		echo "<script>alert('Data Kontak berhasil disimpan!');window.location.href='../pengaturan.php';</script>";					
	}elseif (isset($_POST['batal'])) {
			echo "<script>window.location.href='../adminhome.php';</script>";
	}
	mysqli_close($database);	
?>