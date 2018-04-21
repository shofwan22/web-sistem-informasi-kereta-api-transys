<?php
	session_start();
	$nama = $_POST['namakereta'];
	$kelas = $_POST['kelas'];
	$asal = $_POST['asal'];
	$tujuan = $_POST['tujuan'];
	$jambr = $_POST['jam1'];
	$jamtb = $_POST['jam2'];
	$tarif_d = $_POST['tarif_d'];
	$tarif_a = $_POST['tarif_a'];
	$tanggal = $_POST['tanggal'];
	$bulan = $_POST['bulan'];
	$tahun = $_POST['tahun'];
	$posG = array('A','B','C','D','E');
	$posKursi = 1; 
	$database = mysqli_connect("localhost","root","","usertransys");	
	$cekidK = mysqli_query($database,"SELECT id FROM KERETA WHERE nama_kereta='$nama' and tanggal='$tahun-$bulan-$tanggal' and jam_berangkat='$jambr' and jam_tiba='$jamtb'");
	$resultK = mysqli_num_rows($cekidK);
	if($asal==$tujuan){
		echo "<script>alert('Asal dan Tujuan Kereta tidak boleh sama!');window.location.href='../ubahdata.php';</script>";
	}else{
			if($resultK==0){
				if (isset($_POST['simpan'])) {
					if($nama!=null && $tarif_d!=null && $tanggal!=null && $tahun!=null && $bulan!=null && $jambr!=null && $jamtb!=null){
						mysqli_query($database,"INSERT INTO KERETA VALUES(NULL,'$nama','$kelas','$tahun-$bulan-$tanggal','$jambr','$jamtb','$tarif_d','$tarif_a','Belum berangkat')");
							$cekidKR = mysqli_query($database,"SELECT id FROM KERETA WHERE nama_kereta='$nama' and kelas='$kelas' and tanggal='$tahun-$bulan-$tanggal' and jam_berangkat='$jambr' and jam_tiba='$jamtb'");				
							$data=mysqli_fetch_array($cekidKR);
							$idK = $data['id'];
							mysqli_query($database,"INSERT INTO ASAL VALUES(NULL,'$asal','$idK')");
							mysqli_query($database,"INSERT INTO TUJUAN VALUES(NULL,'$tujuan','$idK')");
							for ($i=0; $i <5 ; $i++) {
								mysqli_query($database,"INSERT INTO GERBONG VALUES(NULL,'$posG[$i]','$idK')");
								$cekidG = mysqli_query($database,"SELECT id FROM GERBONG WHERE posisi_gerbong='$posG[$i]' and id_kereta=$idK");
								$hasil = mysqli_fetch_array($cekidG);
								$idG = $hasil['id'];
								for ($j=0; $j <10 ; $j++) { 
									mysqli_query($database,"INSERT INTO KURSI VALUES(NULL,'$posKursi','tersedia',NULL,'$idG',NULL)");
									$posKursi++;
								}
							}				
						echo "<script>alert('Data berhasil disimpan!');window.location.href='../lihatdata.php';</script>";
					}else{
						echo "<script>alert('Lengkapi Data Kereta!');window.location.href='../ubahdata.php';</script>";
					}
				}elseif(isset($_POST['batal'])){
					echo "<script>window.location.href='../ubahdata.php';</script>";
				}
			}else{
				echo "<script>alert('Ada tabrakan jadwal kereta!');window.location.href='../ubahdata.php';</script>";
			}
	}
	mysqli_close($database);
?>