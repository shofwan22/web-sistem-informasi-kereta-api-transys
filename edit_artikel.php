<?php
	include("proses/cek_sesi.php");
?>
<!DOCTYPE html>
<html>
	<head>
		<title>TranSys:Sunting Artikel</title>
		<link rel="stylesheet" type="text/css" href="css/style2.css">
		<link rel="icon" type="image/png" href="images/logo.png">
	</head>
		<body>
			<aside>
				<a href="proses/logout.php">
					<img src="images/logout.png">
					<h5>Logout</h5>	
				</a>
			</aside>
				<header>
					<h1>TRANSys</h1>
					<h5>Train Information System</h5>
				</header>
						<nav>
							<ul>
								<li><a href="adminhome.php">Beranda</a></li>
								<li class="active"><a class="active"  href="suntingartikel.php">Sunting Artikel</a></li>
								<li><a href="ubahdata.php">Ubah Data</a></li>
								<li><a href="lihatdata.php">Lihat Data</a></li>
								<li><a href="lihatartikel.php">Daftar Artikel</a></li>
								<li><a href="pengaturan.php">Pengaturan</a></li>
							</ul>
						</nav>
				<div>
					<form method="POST" action="proses/edit_artikel.php">
						<?php
							$id = $_GET['id'];
							$database = mysqli_connect("localhost","root","","usertransys");
							$query = mysqli_query($database,"SELECT * FROM ARTIKEL WHERE id =$id");
							$data = mysqli_fetch_array($query);
								echo "<label>Judul</label>";
								echo "<input class='judul' name='judul' type='text' value='".$data['judul']."'><br>";
								echo "<label>Isi Artikel</label><br>";
								echo "<textarea class='isi' name='isi' rows='20' cols='90'>".$data['isi']."</textarea>";
								echo "<input type='hidden' id='id' name='id' value='".$id."'>";
								mysqli_close($database);
						?>					
						<button class="batal" type="submit" name="batal">Batal</button>
						<button class="simpan" type="submit" name="simpan">Simpan</button>
					</form>
				</div>
					<footer>
						Copyright &copy 2016 by 14523144 dan 14523150
					</footer>

		</body>
</html>
