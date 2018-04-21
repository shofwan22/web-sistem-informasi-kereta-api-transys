-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2016 at 02:08 
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usertransys`
--

-- --------------------------------------------------------

--
-- Table structure for table `ADMIN`
--

CREATE TABLE `ADMIN` (
  `id` int(2) NOT NULL,
  `username` varchar(13) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ADMIN`
--

INSERT INTO `ADMIN` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `ARTIKEL`
--

CREATE TABLE `ARTIKEL` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ARTIKEL`
--

INSERT INTO `ARTIKEL` (`id`, `judul`, `isi`, `tanggal`) VALUES
(2, 'Mengapa Memilih Transys?', 'Karena dengan website transys, kita tidak perlu lagi pergi ke stasiun ataupun keluar rumah untuk mengecek jadwal perjalanan kereta api ataupun memesan tiket kereta api.', '2016-05-24'),
(3, 'Apa itu Transys?', 'Transys adalah singkatan dari "Train Information System". Transys adalah sebuah sistem informasi yang digunakan untuk mencari jadwal keberangkatan kereta api ataupun memesan tiket kereta api.', '2016-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `ASAL`
--

CREATE TABLE `ASAL` (
  `id` int(11) NOT NULL,
  `nama_asal` text NOT NULL,
  `id_kereta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ASAL`
--

INSERT INTO `ASAL` (`id`, `nama_asal`, `id_kereta`) VALUES
(27, 'Yogyakarta - Stasiun Tugu', 27),
(28, 'Bandung - Stasiun Hall', 28),
(29, 'Malang - Stasiun Malang Kotabaru', 29),
(30, 'Surabaya - Stasiun Semut', 30),
(32, 'Yogyakarta - Stasiun Tugu', 32),
(33, 'Surabaya - Stasiun Semut', 33);

-- --------------------------------------------------------

--
-- Table structure for table `GERBONG`
--

CREATE TABLE `GERBONG` (
  `id` int(11) NOT NULL,
  `posisi_gerbong` varchar(2) NOT NULL,
  `id_kereta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GERBONG`
--

INSERT INTO `GERBONG` (`id`, `posisi_gerbong`, `id_kereta`) VALUES
(131, 'A', 27),
(132, 'B', 27),
(133, 'C', 27),
(134, 'D', 27),
(135, 'E', 27),
(136, 'A', 28),
(137, 'B', 28),
(138, 'C', 28),
(139, 'D', 28),
(140, 'E', 28),
(141, 'A', 29),
(142, 'B', 29),
(143, 'C', 29),
(144, 'D', 29),
(145, 'E', 29),
(146, 'A', 30),
(147, 'B', 30),
(148, 'C', 30),
(149, 'D', 30),
(150, 'E', 30),
(156, 'A', 32),
(157, 'B', 32),
(158, 'C', 32),
(159, 'D', 32),
(160, 'E', 32),
(161, 'A', 33),
(162, 'B', 33),
(163, 'C', 33),
(164, 'D', 33),
(165, 'E', 33);

-- --------------------------------------------------------

--
-- Table structure for table `KERETA`
--

CREATE TABLE `KERETA` (
  `id` int(11) NOT NULL,
  `nama_kereta` varchar(400) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_berangkat` varchar(5) NOT NULL,
  `jam_tiba` varchar(5) NOT NULL,
  `tarif_dewasa` decimal(22,2) NOT NULL,
  `tarif_anak` decimal(22,2) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KERETA`
--

INSERT INTO `KERETA` (`id`, `nama_kereta`, `kelas`, `tanggal`, `jam_berangkat`, `jam_tiba`, `tarif_dewasa`, `tarif_anak`, `status`) VALUES
(27, 'Malabar', 'Ekonomi', '2016-04-05', '15:30', '22:00', '12000.00', '5000.00', 'Berangkat'),
(28, 'Kereta Google', 'Bisnis', '2016-10-18', '06:07', '16:02', '250000.00', '0.00', 'Berangkat'),
(29, 'Kereta Google', 'Bisnis', '2016-12-10', '14:02', '21:09', '250000.00', '0.00', 'Belum berangkat'),
(30, 'Kereta Ekonomis', 'Ekonomi', '2016-11-20', '08:12', '15:00', '100000.00', '45000.00', 'Belum berangkat'),
(32, 'Kereta UII', 'Ekonomi', '2016-07-14', '00:00', '13:57', '250000.00', '9000.00', 'Belum berangkat'),
(33, 'Prambanan Express', 'Eksekutif', '2016-07-14', '16:04', '21:09', '3000.00', '2222.00', 'Belum berangkat');

-- --------------------------------------------------------

--
-- Table structure for table `KONTAK_US`
--

CREATE TABLE `KONTAK_US` (
  `no_telp` varchar(14) NOT NULL,
  `email` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KONTAK_US`
--

INSERT INTO `KONTAK_US` (`no_telp`, `email`) VALUES
('021-23423409', 'admin@transys.com');

-- --------------------------------------------------------

--
-- Table structure for table `KURSI`
--

CREATE TABLE `KURSI` (
  `id` int(255) NOT NULL,
  `posisi_kursi` varchar(4) NOT NULL,
  `status` varchar(8) NOT NULL,
  `kd_booking` varchar(10) DEFAULT NULL,
  `id_gerbong` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KURSI`
--

INSERT INTO `KURSI` (`id`, `posisi_kursi`, `status`, `kd_booking`, `id_gerbong`, `id_pelanggan`) VALUES
(1301, '1', 'tersedia', NULL, 131, NULL),
(1302, '2', 'tersedia', NULL, 131, NULL),
(1303, '3', 'tersedia', NULL, 131, NULL),
(1304, '4', 'tersedia', NULL, 131, NULL),
(1305, '5', 'tersedia', NULL, 131, NULL),
(1306, '6', 'tersedia', NULL, 131, NULL),
(1307, '7', 'tersedia', NULL, 131, NULL),
(1308, '8', 'tersedia', NULL, 131, NULL),
(1309, '9', 'tersedia', NULL, 131, NULL),
(1310, '10', 'tersedia', NULL, 131, NULL),
(1311, '11', 'tersedia', NULL, 132, NULL),
(1312, '12', 'tersedia', NULL, 132, NULL),
(1313, '13', 'tersedia', NULL, 132, NULL),
(1314, '14', 'tersedia', NULL, 132, NULL),
(1315, '15', 'tersedia', NULL, 132, NULL),
(1316, '16', 'tersedia', NULL, 132, NULL),
(1317, '17', 'tersedia', NULL, 132, NULL),
(1318, '18', 'tersedia', NULL, 132, NULL),
(1319, '19', 'tersedia', NULL, 132, NULL),
(1320, '20', 'tersedia', NULL, 132, NULL),
(1321, '21', 'tersedia', NULL, 133, NULL),
(1322, '22', 'tersedia', NULL, 133, NULL),
(1323, '23', 'tersedia', NULL, 133, NULL),
(1324, '24', 'tersedia', NULL, 133, NULL),
(1325, '25', 'tersedia', NULL, 133, NULL),
(1326, '26', 'tersedia', NULL, 133, NULL),
(1327, '27', 'tersedia', NULL, 133, NULL),
(1328, '28', 'tersedia', NULL, 133, NULL),
(1329, '29', 'tersedia', NULL, 133, NULL),
(1330, '30', 'tersedia', NULL, 133, NULL),
(1331, '31', 'tersedia', NULL, 134, NULL),
(1332, '32', 'tersedia', NULL, 134, NULL),
(1333, '33', 'tersedia', NULL, 134, NULL),
(1334, '34', 'tersedia', NULL, 134, NULL),
(1335, '35', 'tersedia', NULL, 134, NULL),
(1336, '36', 'tersedia', NULL, 134, NULL),
(1337, '37', 'tersedia', NULL, 134, NULL),
(1338, '38', 'tersedia', NULL, 134, NULL),
(1339, '39', 'tersedia', NULL, 134, NULL),
(1340, '40', 'tersedia', NULL, 134, NULL),
(1341, '41', 'tersedia', NULL, 135, NULL),
(1342, '42', 'tersedia', NULL, 135, NULL),
(1343, '43', 'tersedia', NULL, 135, NULL),
(1344, '44', 'tersedia', NULL, 135, NULL),
(1345, '45', 'tersedia', NULL, 135, NULL),
(1346, '46', 'tersedia', NULL, 135, NULL),
(1347, '47', 'tersedia', NULL, 135, NULL),
(1348, '48', 'tersedia', NULL, 135, NULL),
(1349, '49', 'tersedia', NULL, 135, NULL),
(1350, '50', 'tersedia', NULL, 135, NULL),
(1351, '1', 'tersedia', NULL, 136, NULL),
(1352, '2', 'tersedia', NULL, 136, NULL),
(1353, '3', 'tersedia', NULL, 136, NULL),
(1354, '4', 'tersedia', NULL, 136, NULL),
(1355, '5', 'tersedia', NULL, 136, NULL),
(1356, '6', 'tersedia', NULL, 136, NULL),
(1357, '7', 'tersedia', NULL, 136, NULL),
(1358, '8', 'tersedia', NULL, 136, NULL),
(1359, '9', 'tersedia', NULL, 136, NULL),
(1360, '10', 'tersedia', NULL, 136, NULL),
(1361, '11', 'tersedia', NULL, 137, NULL),
(1362, '12', 'tersedia', NULL, 137, NULL),
(1363, '13', 'tersedia', NULL, 137, NULL),
(1364, '14', 'tersedia', NULL, 137, NULL),
(1365, '15', 'tersedia', NULL, 137, NULL),
(1366, '16', 'tersedia', NULL, 137, NULL),
(1367, '17', 'tersedia', NULL, 137, NULL),
(1368, '18', 'tersedia', NULL, 137, NULL),
(1369, '19', 'tersedia', NULL, 137, NULL),
(1370, '20', 'tersedia', NULL, 137, NULL),
(1371, '21', 'tersedia', NULL, 138, NULL),
(1372, '22', 'tersedia', NULL, 138, NULL),
(1373, '23', 'tersedia', NULL, 138, NULL),
(1374, '24', 'tersedia', NULL, 138, NULL),
(1375, '25', 'tersedia', NULL, 138, NULL),
(1376, '26', 'tersedia', NULL, 138, NULL),
(1377, '27', 'tersedia', NULL, 138, NULL),
(1378, '28', 'tersedia', NULL, 138, NULL),
(1379, '29', 'tersedia', NULL, 138, NULL),
(1380, '30', 'tersedia', NULL, 138, NULL),
(1381, '31', 'tersedia', NULL, 139, NULL),
(1382, '32', 'tersedia', NULL, 139, NULL),
(1383, '33', 'tersedia', NULL, 139, NULL),
(1384, '34', 'tersedia', NULL, 139, NULL),
(1385, '35', 'tersedia', NULL, 139, NULL),
(1386, '36', 'tersedia', NULL, 139, NULL),
(1387, '37', 'tersedia', NULL, 139, NULL),
(1388, '38', 'tersedia', NULL, 139, NULL),
(1389, '39', 'tersedia', NULL, 139, NULL),
(1390, '40', 'tersedia', NULL, 139, NULL),
(1391, '41', 'tersedia', NULL, 140, NULL),
(1392, '42', 'tersedia', NULL, 140, NULL),
(1393, '43', 'tersedia', NULL, 140, NULL),
(1394, '44', 'tersedia', NULL, 140, NULL),
(1395, '45', 'tersedia', NULL, 140, NULL),
(1396, '46', 'tersedia', NULL, 140, NULL),
(1397, '47', 'tersedia', NULL, 140, NULL),
(1398, '48', 'tersedia', NULL, 140, NULL),
(1399, '49', 'tersedia', NULL, 140, NULL),
(1400, '50', 'tersedia', NULL, 140, NULL),
(1401, '1', 'tersedia', NULL, 141, NULL),
(1402, '2', 'tersedia', NULL, 141, NULL),
(1403, '3', 'tersedia', NULL, 141, NULL),
(1404, '4', 'tersedia', NULL, 141, NULL),
(1405, '5', 'tersedia', NULL, 141, NULL),
(1406, '6', 'tersedia', NULL, 141, NULL),
(1407, '7', 'tersedia', NULL, 141, NULL),
(1408, '8', 'tersedia', NULL, 141, NULL),
(1409, '9', 'tersedia', NULL, 141, NULL),
(1410, '10', 'tersedia', NULL, 141, NULL),
(1411, '11', 'tersedia', NULL, 142, NULL),
(1412, '12', 'tersedia', NULL, 142, NULL),
(1413, '13', 'tersedia', NULL, 142, NULL),
(1414, '14', 'tersedia', NULL, 142, NULL),
(1415, '15', 'tersedia', NULL, 142, NULL),
(1416, '16', 'tersedia', NULL, 142, NULL),
(1417, '17', 'tersedia', NULL, 142, NULL),
(1418, '18', 'tersedia', NULL, 142, NULL),
(1419, '19', 'tersedia', NULL, 142, NULL),
(1420, '20', 'tersedia', NULL, 142, NULL),
(1421, '21', 'tersedia', NULL, 143, NULL),
(1422, '22', 'tersedia', NULL, 143, NULL),
(1423, '23', 'tersedia', NULL, 143, NULL),
(1424, '24', 'tersedia', NULL, 143, NULL),
(1425, '25', 'tersedia', NULL, 143, NULL),
(1426, '26', 'tersedia', NULL, 143, NULL),
(1427, '27', 'tersedia', NULL, 143, NULL),
(1428, '28', 'tersedia', NULL, 143, NULL),
(1429, '29', 'tersedia', NULL, 143, NULL),
(1430, '30', 'tersedia', NULL, 143, NULL),
(1431, '31', 'tersedia', NULL, 144, NULL),
(1432, '32', 'tersedia', NULL, 144, NULL),
(1433, '33', 'tersedia', NULL, 144, NULL),
(1434, '34', 'tersedia', NULL, 144, NULL),
(1435, '35', 'tersedia', NULL, 144, NULL),
(1436, '36', 'tersedia', NULL, 144, NULL),
(1437, '37', 'tersedia', NULL, 144, NULL),
(1438, '38', 'tersedia', NULL, 144, NULL),
(1439, '39', 'tersedia', NULL, 144, NULL),
(1440, '40', 'tersedia', NULL, 144, NULL),
(1441, '41', 'tersedia', NULL, 145, NULL),
(1442, '42', 'tersedia', NULL, 145, NULL),
(1443, '43', 'tersedia', NULL, 145, NULL),
(1444, '44', 'tersedia', NULL, 145, NULL),
(1445, '45', 'tersedia', NULL, 145, NULL),
(1446, '46', 'tersedia', NULL, 145, NULL),
(1447, '47', 'tersedia', NULL, 145, NULL),
(1448, '48', 'tersedia', NULL, 145, NULL),
(1449, '49', 'tersedia', NULL, 145, NULL),
(1450, '50', 'tersedia', NULL, 145, NULL),
(1451, '1', 'tersedia', NULL, 146, NULL),
(1452, '2', 'tersedia', NULL, 146, NULL),
(1453, '3', 'tersedia', NULL, 146, NULL),
(1454, '4', 'tersedia', NULL, 146, NULL),
(1455, '5', 'tersedia', NULL, 146, NULL),
(1456, '6', 'tersedia', NULL, 146, NULL),
(1457, '7', 'tersedia', NULL, 146, NULL),
(1458, '8', 'tersedia', NULL, 146, NULL),
(1459, '9', 'tersedia', NULL, 146, NULL),
(1460, '10', 'tersedia', NULL, 146, NULL),
(1461, '11', 'tersedia', NULL, 147, NULL),
(1462, '12', 'tersedia', NULL, 147, NULL),
(1463, '13', 'tersedia', NULL, 147, NULL),
(1464, '14', 'tersedia', NULL, 147, NULL),
(1465, '15', 'tersedia', NULL, 147, NULL),
(1466, '16', 'tersedia', NULL, 147, NULL),
(1467, '17', 'tersedia', NULL, 147, NULL),
(1468, '18', 'tersedia', NULL, 147, NULL),
(1469, '19', 'tersedia', NULL, 147, NULL),
(1470, '20', 'tersedia', NULL, 147, NULL),
(1471, '21', 'tersedia', NULL, 148, NULL),
(1472, '22', 'tersedia', NULL, 148, NULL),
(1473, '23', 'tersedia', NULL, 148, NULL),
(1474, '24', 'tersedia', NULL, 148, NULL),
(1475, '25', 'tersedia', NULL, 148, NULL),
(1476, '26', 'tersedia', NULL, 148, NULL),
(1477, '27', 'tersedia', NULL, 148, NULL),
(1478, '28', 'tersedia', NULL, 148, NULL),
(1479, '29', 'tersedia', NULL, 148, NULL),
(1480, '30', 'tersedia', NULL, 148, NULL),
(1481, '31', 'tersedia', NULL, 149, NULL),
(1482, '32', 'tersedia', NULL, 149, NULL),
(1483, '33', 'tersedia', NULL, 149, NULL),
(1484, '34', 'tersedia', NULL, 149, NULL),
(1485, '35', 'tersedia', NULL, 149, NULL),
(1486, '36', 'tersedia', NULL, 149, NULL),
(1487, '37', 'tersedia', NULL, 149, NULL),
(1488, '38', 'tersedia', NULL, 149, NULL),
(1489, '39', 'tersedia', NULL, 149, NULL),
(1490, '40', 'tersedia', NULL, 149, NULL),
(1491, '41', 'tersedia', NULL, 150, NULL),
(1492, '42', 'tersedia', NULL, 150, NULL),
(1493, '43', 'tersedia', NULL, 150, NULL),
(1494, '44', 'tersedia', NULL, 150, NULL),
(1495, '45', 'tersedia', NULL, 150, NULL),
(1496, '46', 'tersedia', NULL, 150, NULL),
(1497, '47', 'tersedia', NULL, 150, NULL),
(1498, '48', 'tersedia', NULL, 150, NULL),
(1499, '49', 'tersedia', NULL, 150, NULL),
(1500, '50', 'tersedia', NULL, 150, NULL),
(1551, '1', 'tersedia', NULL, 156, NULL),
(1552, '2', 'tersedia', NULL, 156, NULL),
(1553, '3', 'tersedia', NULL, 156, NULL),
(1554, '4', 'tersedia', NULL, 156, NULL),
(1555, '5', 'tersedia', NULL, 156, NULL),
(1556, '6', 'tersedia', NULL, 156, NULL),
(1557, '7', 'tersedia', NULL, 156, NULL),
(1558, '8', 'tersedia', NULL, 156, NULL),
(1559, '9', 'tersedia', NULL, 156, NULL),
(1560, '10', 'tersedia', NULL, 156, NULL),
(1561, '11', 'tersedia', NULL, 157, NULL),
(1562, '12', 'tersedia', NULL, 157, NULL),
(1563, '13', 'tersedia', NULL, 157, NULL),
(1564, '14', 'tersedia', NULL, 157, NULL),
(1565, '15', 'tersedia', NULL, 157, NULL),
(1566, '16', 'tersedia', NULL, 157, NULL),
(1567, '17', 'tersedia', NULL, 157, NULL),
(1568, '18', 'tersedia', NULL, 157, NULL),
(1569, '19', 'tersedia', NULL, 157, NULL),
(1570, '20', 'tersedia', NULL, 157, NULL),
(1571, '21', 'tersedia', NULL, 158, NULL),
(1572, '22', 'tersedia', NULL, 158, NULL),
(1573, '23', 'tersedia', NULL, 158, NULL),
(1574, '24', 'tersedia', NULL, 158, NULL),
(1575, '25', 'tersedia', NULL, 158, NULL),
(1576, '26', 'tersedia', NULL, 158, NULL),
(1577, '27', 'tersedia', NULL, 158, NULL),
(1578, '28', 'tersedia', NULL, 158, NULL),
(1579, '29', 'tersedia', NULL, 158, NULL),
(1580, '30', 'tersedia', NULL, 158, NULL),
(1581, '31', 'tersedia', NULL, 159, NULL),
(1582, '32', 'tersedia', NULL, 159, NULL),
(1583, '33', 'tersedia', NULL, 159, NULL),
(1584, '34', 'tersedia', NULL, 159, NULL),
(1585, '35', 'tersedia', NULL, 159, NULL),
(1586, '36', 'tersedia', NULL, 159, NULL),
(1587, '37', 'tersedia', NULL, 159, NULL),
(1588, '38', 'tersedia', NULL, 159, NULL),
(1589, '39', 'tersedia', NULL, 159, NULL),
(1590, '40', 'tersedia', NULL, 159, NULL),
(1591, '41', 'tersedia', NULL, 160, NULL),
(1592, '42', 'tersedia', NULL, 160, NULL),
(1593, '43', 'tersedia', NULL, 160, NULL),
(1594, '44', 'tersedia', NULL, 160, NULL),
(1595, '45', 'tersedia', NULL, 160, NULL),
(1596, '46', 'tersedia', NULL, 160, NULL),
(1597, '47', 'tersedia', NULL, 160, NULL),
(1598, '48', 'tersedia', NULL, 160, NULL),
(1599, '49', 'tersedia', NULL, 160, NULL),
(1600, '50', 'tersedia', NULL, 160, NULL),
(1601, '1', 'booked', 'fp37qn', 161, 54),
(1602, '2', 'booked', 'fp37qn', 161, 54),
(1603, '3', 'booked', 'fp37qn', 161, 54),
(1604, '4', 'tersedia', NULL, 161, NULL),
(1605, '5', 'tersedia', NULL, 161, NULL),
(1606, '6', 'tersedia', NULL, 161, NULL),
(1607, '7', 'tersedia', NULL, 161, NULL),
(1608, '8', 'tersedia', NULL, 161, NULL),
(1609, '9', 'tersedia', NULL, 161, NULL),
(1610, '10', 'tersedia', NULL, 161, NULL),
(1611, '11', 'booked', '87yz25', 162, 61),
(1612, '12', 'tersedia', NULL, 162, NULL),
(1613, '13', 'booked', '87yz25', 162, 61),
(1614, '14', 'tersedia', NULL, 162, NULL),
(1615, '15', 'booked', '87yz25', 162, 61),
(1616, '16', 'tersedia', NULL, 162, NULL),
(1617, '17', 'booked', 'qn896o', 162, 57),
(1618, '18', 'tersedia', NULL, 162, NULL),
(1619, '19', 'tersedia', NULL, 162, NULL),
(1620, '20', 'tersedia', NULL, 162, NULL),
(1621, '21', 'tersedia', NULL, 163, NULL),
(1622, '22', 'tersedia', NULL, 163, NULL),
(1623, '23', 'booked', '37qn89', 163, 58),
(1624, '24', 'booked', 'dg3hi6', 163, 59),
(1625, '25', 'tersedia', NULL, 163, NULL),
(1626, '26', 'tersedia', NULL, 163, NULL),
(1627, '27', 'booked', '87yz25', 163, 61),
(1628, '28', 'tersedia', NULL, 163, NULL),
(1629, '29', 'booked', 'dg3hi6', 163, 59),
(1630, '30', 'tersedia', NULL, 163, NULL),
(1631, '31', 'tersedia', NULL, 164, NULL),
(1632, '32', 'tersedia', NULL, 164, NULL),
(1633, '33', 'booked', 'dg3hi6', 164, 59),
(1634, '34', 'tersedia', NULL, 164, NULL),
(1635, '35', 'tersedia', NULL, 164, NULL),
(1636, '36', 'tersedia', NULL, 164, NULL),
(1637, '37', 'tersedia', NULL, 164, NULL),
(1638, '38', 'tersedia', NULL, 164, NULL),
(1639, '39', 'tersedia', NULL, 164, NULL),
(1640, '40', 'tersedia', NULL, 164, NULL),
(1641, '41', 'tersedia', NULL, 165, NULL),
(1642, '42', 'tersedia', NULL, 165, NULL),
(1643, '43', 'tersedia', NULL, 165, NULL),
(1644, '44', 'tersedia', NULL, 165, NULL),
(1645, '45', 'tersedia', NULL, 165, NULL),
(1646, '46', 'tersedia', NULL, 165, NULL),
(1647, '47', 'tersedia', NULL, 165, NULL),
(1648, '48', 'booked', 'qn896o', 165, 57),
(1649, '49', 'tersedia', NULL, 165, NULL),
(1650, '50', 'tersedia', NULL, 165, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PELANGGAN`
--

CREATE TABLE `PELANGGAN` (
  `id_pelanggan` int(11) NOT NULL,
  `no_ktp` varchar(25) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(90) NOT NULL,
  `total_pembayaran` decimal(22,2) DEFAULT NULL,
  `tgl_pemesanan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PELANGGAN`
--

INSERT INTO `PELANGGAN` (`id_pelanggan`, `no_ktp`, `nama_pelanggan`, `no_telp`, `email`, `total_pembayaran`, `tgl_pemesanan`) VALUES
(42, '0298599920934', 'Kurniawan DI', '021-23423409', 'n.kismara@gmail.com', '268000.00', '2016-06-12'),
(43, '0298599920934', 'Kurniawan DI', '021-23423409', 'n.kismara@gmail.com', '250000.00', '2016-06-12'),
(44, '0298599920934', 'Kurniawan DI', '021-23423409', 'n.kismara@gmail.com', '250000.00', '2016-06-12'),
(45, '0298599920934', 'Kurniawan DI', '021-23423409', 'n.kismara@gmail.com', '250000.00', '2016-06-12'),
(46, '0298599920934', 'Kurniawan DI', '021-23423409', 'n.kismara@gmail.com', '250000.00', '2016-06-12'),
(47, '0298599920934', 'Kurniawan DI', '021-23423409', 'admin@transys.com', '3000.00', '2016-06-12'),
(48, '0298599920934', 'Kurniawan DI', '021-23423409', 'admin@transys.com', '3000.00', '2016-06-12'),
(49, '0298599920934', 'Kurniawan DI', '021-23423409', 'admin@transys.com', '3000.00', '2016-06-12'),
(50, '0298599920934', 'Kurniawan DI', '021-23423409', 'admin@transys.com', '9666.00', '2016-06-12'),
(51, 'd', 'Kurniawan DI', '021-23423409', 'n.kismara@gmail.com', '3000.00', '2016-06-12'),
(52, '0298599920934', 'Kurniawan DI', '123123', 'n.kismara@gmail.com', '7444.00', '2016-06-12'),
(53, '0298599920934', 'Kurniawan DI', '021-23423409', 'n.kismara@gmail.com', '7444.00', '2016-06-12'),
(54, '0298599920934', 'Kurniawan DI', '021-23423409', 'n.kismara@gmail.com', '7444.00', '2016-06-12'),
(55, '0298599920934', 'Kurniawan DI', '021-23423409', 'n.kismara@gmail.com', '3000.00', '2016-06-12'),
(56, '0298599920934', 'Kurniawan DI', '021-23423409', 'n.kismara@gmail.com', '3000.00', '2016-06-12'),
(57, '0298599920934', 'Lalu Kismara Hadi', '087763121404', 'n.kismara@gmail.com', '6000.00', '2016-06-12'),
(58, '0298599920934', 'Lalu Kismara Hadi', '021-23423409', 'n.kismara@gmail.com', '3000.00', '2016-06-12'),
(59, '938213485823', 'Bill Gates', '089332091122', 'n.kismara@gmail.com', '9000.00', '2016-06-12'),
(60, '0298599920934', 'Anonymous', '021-23423409', 'anonymous@transys.com', '10444.00', '2016-06-13'),
(61, '0298599920934', 'Anonymous', '021-23423409', 'anonymous@transys.com', '10444.00', '2016-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `TUJUAN`
--

CREATE TABLE `TUJUAN` (
  `id` int(11) NOT NULL,
  `nama_tujuan` text NOT NULL,
  `id_kereta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TUJUAN`
--

INSERT INTO `TUJUAN` (`id`, `nama_tujuan`, `id_kereta`) VALUES
(27, 'Malang - Stasiun Malang Kotabaru', 27),
(28, 'Surabaya - Stasiun Semut', 28),
(29, 'Semarang - Stasiun Semarang Tawang', 29),
(30, 'Semarang - Stasiun Semarang Tawang', 30),
(32, 'Malang - Stasiun Malang Kotabaru', 32),
(33, 'Yogyakarta - Stasiun Tugu', 33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADMIN`
--
ALTER TABLE `ADMIN`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ARTIKEL`
--
ALTER TABLE `ARTIKEL`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ASAL`
--
ALTER TABLE `ASAL`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kereta` (`id_kereta`);

--
-- Indexes for table `GERBONG`
--
ALTER TABLE `GERBONG`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kereta` (`id_kereta`);

--
-- Indexes for table `KERETA`
--
ALTER TABLE `KERETA`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `KONTAK_US`
--
ALTER TABLE `KONTAK_US`
  ADD PRIMARY KEY (`no_telp`);

--
-- Indexes for table `KURSI`
--
ALTER TABLE `KURSI`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_gerbong` (`id_gerbong`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `PELANGGAN`
--
ALTER TABLE `PELANGGAN`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `TUJUAN`
--
ALTER TABLE `TUJUAN`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kereta` (`id_kereta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ADMIN`
--
ALTER TABLE `ADMIN`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ARTIKEL`
--
ALTER TABLE `ARTIKEL`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ASAL`
--
ALTER TABLE `ASAL`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `GERBONG`
--
ALTER TABLE `GERBONG`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT for table `KERETA`
--
ALTER TABLE `KERETA`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `KURSI`
--
ALTER TABLE `KURSI`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1651;
--
-- AUTO_INCREMENT for table `PELANGGAN`
--
ALTER TABLE `PELANGGAN`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `TUJUAN`
--
ALTER TABLE `TUJUAN`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ASAL`
--
ALTER TABLE `ASAL`
  ADD CONSTRAINT `id_kreta_CONS` FOREIGN KEY (`id_kereta`) REFERENCES `KERETA` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `GERBONG`
--
ALTER TABLE `GERBONG`
  ADD CONSTRAINT `idkereta_CONS` FOREIGN KEY (`id_kereta`) REFERENCES `KERETA` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `KURSI`
--
ALTER TABLE `KURSI`
  ADD CONSTRAINT `id_kursi_CONS` FOREIGN KEY (`id_gerbong`) REFERENCES `GERBONG` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_pelanggan_CONS` FOREIGN KEY (`id_pelanggan`) REFERENCES `PELANGGAN` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `TUJUAN`
--
ALTER TABLE `TUJUAN`
  ADD CONSTRAINT `id_kerta_CONS` FOREIGN KEY (`id_kereta`) REFERENCES `KERETA` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
