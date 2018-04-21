<?php
session_start();
$id = $_GET['id'];
$database = mysqli_connect("localhost","root","","usertransys");
mysqli_query($database,"DELETE FROM ARTIKEL WHERE id=$id");
echo "<script>alert('Artikel berhasil dihapus');window.location.href='../lihatartikel.php';</script>";
mysqli_close($database);
?>