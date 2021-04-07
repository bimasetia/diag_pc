-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 07, 2021 at 04:36 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kerusakan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `kode`, `gejala`) VALUES
(1, 'G001', 'Setelah Di Tekan Tombol Power Tidak Ada Reaksi'),
(2, 'G002', 'Tidak Ada Tampilan Di Monitor'),
(3, 'G003', 'Tidak Ada Lampu Indikator (Led) Yang Menyala'),
(4, 'G004', 'Kipas Psu Tidak Berputar'),
(5, 'G005', 'Lampu Indikator Monitor Tidak Menyala'),
(6, 'G006', 'Lampu Led Kedip Kedip'),
(7, 'G007', 'Kipas Psu Dan Processor Berputar'),
(8, 'G008', 'Lampu Led Front Panel Menyala'),
(9, 'G009', 'Saat Post Tidak Lanjut Dan Hang Tidak Mau Ke Os'),
(10, 'G010', 'Muncul Message Harddisk Error, Harddisk Failure'),
(11, 'G011', 'Saat Pc Dinyalakan Muncul Message Operating System Not Found'),
(12, 'G012', 'Membuka Software Lama'),
(13, 'G013', 'Cd/Dvd/Rom/Rw Tidak Kedetect'),
(14, 'G014', 'Tidak Bisa Membaca/Menulis/Hanya Bisa Membaca Saja'),
(15, 'G015', 'Speaker Tidak Mengeluarkan Suara'),
(16, 'G016', 'Ketika Meng-Update Keliru Memilih Versi Bios'),
(17, 'G017', 'Pc Jadi Tidak Jalan Bahkan Tidak Dapat Masuk Ke Bios'),
(18, 'G018', 'Cpu Mengeluarkan Suara Beep Beberapa Kali Di Speakernya'),
(19, 'G019', 'Muncul Pesan Cmos Checksum Vailure / Batrey Low'),
(20, 'G020', 'Settingan Bios Kembali Ke Default-Nya'),
(21, 'G021', 'Virus '),
(22, 'G022', 'Ada Masalah Di Hardware Kotor/Rusak'),
(23, 'G023', 'Cooling Fan Perputaran Fan Nya Sudah Lemah'),
(24, 'G024', 'Power Supply Tidak Stabil'),
(25, 'G025', 'System Windows Rusak'),
(26, 'G026', 'Space Harddisk Terlalu Penuh'),
(27, 'G027', 'Terlalu Banyak Program / Software Yang Memakan Space Harddisk Dan Memory'),
(28, 'G028', 'Muncul Pesan Pada Monitor Keyboard Error'),
(29, 'G029', 'Muncul Pesan Pada Monitor Memory Test Fail'),
(30, 'G030', 'Terdengar Suara Aneh Pada Hdd'),
(31, 'G031', 'Sering Terjadi Hang/Crash Saat Menjalankan Aplikasi'),
(32, 'G032', 'Selalu Scandisk Ketika Booting'),
(33, 'G033', 'Device Driver Informasi Tidak Terdeteksi Dalam Device Manager,Meski Driver Telah Di Install'),
(34, 'G034', 'Device Tidak Terdeteksi Dalam Bios'),
(35, 'G035', 'Informasi Deteksi Yang Salah Dalam Bios'),
(36, 'G036', 'Belum Sampai Windows Sudah Restart Lagi'),
(37, 'G037', 'Tidak Ada Tampilan Awal Bios'),
(38, 'G038', 'Alarm Bios Berbunyi'),
(39, 'G039', 'Tiba-Tiba Os Melakukan Restart Otomatis'),
(40, 'G040', 'Muncul Pesan Error Saat Pertama Os Di Load Dari Hdd'),
(41, 'G041', 'Pointer Mouse Tidak Merespon Gerakan Mouse'),
(42, 'G042', 'Keluarnya Blue Screen Pada Os Windows'),
(43, 'G043', 'Suara Tetap Tidak Keluar Meskipundriver Dan Setting Device Telah Dilakukan Sesuai Petunjuk'),
(44, 'G044', 'Muncul Pesan Error Saat Menjalankan Aplikasi Audio');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kerusakan`
--

CREATE TABLE `tb_kerusakan` (
  `id` int(5) NOT NULL,
  `kerusakan` varchar(50) DEFAULT NULL,
  `info` longtext NOT NULL,
  `solusi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kerusakan`
--

INSERT INTO `tb_kerusakan` (`id`, `kerusakan`, `info`, `solusi`) VALUES
(1, 'Masalah Pada Power Supply', 'Power Supply pada komputer tidak mampu men-supply arus listrik.', 'Coba ganti dengan PSU yang lain/Ganti baru'),
(2, 'Masalah Pada Motherboard/Kotor', 'Komputer tidak mau hidup/Sering Bluescreen.', 'Bersihkan slot VGA, RAM, perbarui pasta proccesor, beri air flow yang bagus di dalam case'),
(3, 'Masalah Harddisk Tidak Terbaca', 'Harddisk tidak terdeteksi di BIOS.', 'Ganti kabel SATA, Pindah colokan SATAnya, Beli Harddisk baru, Check apakah kabel arus hdd juga sudah dipasang'),
(4, 'Masalah Pada Harddisk \"Operating System Not Found\"', 'Harddisk belum terinstall Sistem Operasi (SO).', 'Install OS, bisa Windows/Linux/Debian/Dll'),
(5, 'Masalah Pada Harddisk Bad Sector', 'Komputer lambat saat membuka software.', 'Recovery Harddisk dengan Harddisk Sentinel'),
(6, 'Masalah Cd/Dvd/Rom/Rw Tidak Kedetect', 'Kabel CD/DVD belum tersambung dengan baik/Belum Install Driver.', 'Install Driver'),
(7, 'Masalah Pada Cd/Dvd/Rom/RwTidak Bisa Membaca/Menul', 'Hanya menampilkan file-file saja tapi tidak \r\n bisa membuka file yang diinginkan.', 'Pastikan kabel sudah benar/Ganti baru'),
(8, 'Masalah BIOS', 'Gagal update BIOS/Keliru memilih versi BIOS saat update.', 'Intall BIOS yang sama versinya dengan BIOS motherboardnya'),
(9, 'Cpu Mengeluarkan Suara Beep', 'Komputer tidak mau hidup', 'Coba ganti dengan proccesor yang lain'),
(10, 'Battrai CMOS Rusak / Lemah', 'Settingan BIOS akan selalu default saat kita mematikan pc/restart pc.', 'Ganti Batterai CMOS'),
(11, 'CPU Sering Hang', 'Harddisk Badsector/Virus', 'Scan komputer secara keseluruhan/hapus file file tidak penting di \"%temp%/Install Ulang'),
(12, 'Komputer Sering Tampil Blue Screen', 'RAM Kotor/VGA Kotor/Harddisk Badsector', 'Update Driver/Bersihkan Slot RAM dan VGA/Jangan sampai pc overheat'),
(13, 'Komputer Berjalan Lambat', 'Harddisk Badsector', 'Scan komputer secara keseluruhan/hapus file file tidak penting di \"%temp%/Install Ulang'),
(14, 'Keyboard Rusak/Error', 'Keyboard tidak bisa digunakan/keyboard tidak terdeteksi', 'Coba ganti port USB yang lain/Ganti Keyboard yang lain'),
(15, 'Memory Test Fail', 'Slot RAM pada Motherboard Kotor', 'Bersihkan slot RAM pada motherboard'),
(16, 'Masalah Pada VGA', 'Bluescreen/Artifak/Layar monitor ada garis garis/mouse menjadi tidak jelas', 'Ganti pasta VGA/Ganti VGA baru'),
(17, 'Masalah Pada Proccesor', 'Layar monitor tidak tampil, fan proccesor nyala', 'Ganti pasta Proccesor/Ganti Proccesor baru'),
(18, 'Masalah Pada Operating System', 'Tidak mau tampil ke dekstop', 'Pastikan OS sudah terinstall di hdd(drive), Install ulang PC'),
(19, 'Mouse Rusak', 'Mouse tidak bisa digunakan/mouse tidak terdeteksi', 'Coba ganti port USB yang lain/Ganti Mouse yang lain'),
(20, 'Perangkat USB Rusak', 'Alat Input seperti USB/Mouse/WEBCAM/MIC tidak terdeteksi', 'Jika USB tidak rusak semuanya bisa dibelikan Port USB Eksternal'),
(21, 'Software/Aplikasi Rusak', 'Software/Aplikasi tidak mau terbuka', 'Install ulang Software/Aplikasi, Update Driver, Pastikan Download/Install dari sumber yang benar'),
(22, 'Soundcard Rusak', 'Speaker tidak mau mengeluarkan suara', 'Pastikan sound dalam keadaan bisa terdengar, Update Driver, Ganti Speaker yang lain');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rule`
--

CREATE TABLE `tb_rule` (
  `id` int(5) NOT NULL,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL,
  `G013` tinyint(1) DEFAULT NULL,
  `G014` tinyint(1) DEFAULT NULL,
  `G015` tinyint(1) DEFAULT NULL,
  `G016` tinyint(1) DEFAULT NULL,
  `G017` tinyint(1) DEFAULT NULL,
  `G018` tinyint(1) DEFAULT NULL,
  `G019` tinyint(1) DEFAULT NULL,
  `G020` tinyint(1) DEFAULT NULL,
  `G021` tinyint(1) DEFAULT NULL,
  `G022` tinyint(1) DEFAULT NULL,
  `G023` tinyint(1) DEFAULT NULL,
  `G024` tinyint(1) DEFAULT NULL,
  `G025` tinyint(1) DEFAULT NULL,
  `G026` tinyint(1) DEFAULT NULL,
  `G027` tinyint(1) DEFAULT NULL,
  `G028` tinyint(1) DEFAULT NULL,
  `G029` tinyint(1) DEFAULT NULL,
  `G030` tinyint(1) DEFAULT NULL,
  `G031` tinyint(1) DEFAULT NULL,
  `G032` tinyint(1) DEFAULT NULL,
  `G033` tinyint(1) DEFAULT NULL,
  `G034` tinyint(1) DEFAULT NULL,
  `G035` tinyint(1) DEFAULT NULL,
  `G036` tinyint(1) DEFAULT NULL,
  `G037` tinyint(1) DEFAULT NULL,
  `G038` tinyint(1) DEFAULT NULL,
  `G039` tinyint(1) DEFAULT NULL,
  `G040` tinyint(1) DEFAULT NULL,
  `G041` tinyint(1) DEFAULT NULL,
  `G042` tinyint(1) DEFAULT NULL,
  `G043` tinyint(1) DEFAULT NULL,
  `G044` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rule`
--

INSERT INTO `tb_rule` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`, `G011`, `G012`, `G013`, `G014`, `G015`, `G016`, `G017`, `G018`, `G019`, `G020`, `G021`, `G022`, `G023`, `G024`, `G025`, `G026`, `G027`, `G028`, `G029`, `G030`, `G031`, `G032`, `G033`, `G034`, `G035`, `G036`, `G037`, `G038`, `G039`, `G040`, `G041`, `G042`, `G043`, `G044`) VALUES
(1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
(18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0),
(19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kerusakan`
--
ALTER TABLE `tb_kerusakan`
  ADD KEY `id` (`id`);

--
-- Indexes for table `tb_rule`
--
ALTER TABLE `tb_rule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tb_rule`
--
ALTER TABLE `tb_rule`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_kerusakan`
--
ALTER TABLE `tb_kerusakan`
  ADD CONSTRAINT `tb_kerusakan_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_rule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
