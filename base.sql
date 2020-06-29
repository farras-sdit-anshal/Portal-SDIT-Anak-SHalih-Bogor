-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 29, 2020 at 12:58 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses_tugas`
--

CREATE TABLE `akses_tugas` (
  `id` int(200) NOT NULL,
  `deskripsi` varchar(20) NOT NULL,
  `waktu_penugasan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses_tugas`
--

INSERT INTO `akses_tugas` (`id`, `deskripsi`, `waktu_penugasan`) VALUES
(1, 'Akses Tugas', '2020-01-27 10:20:51'),
(9, 'uks', '2020-01-30 02:31:07'),
(1, 'Catat Rekam Prilaku ', '2020-02-05 01:14:02'),
(1, 'uks', '2020-02-05 01:15:20'),
(21, 'uks', '2020-02-07 04:04:39'),
(20, 'Catat Rekam Prilaku ', '2020-02-11 06:57:02'),
(19, 'uks', '2020-02-15 03:39:49'),
(19, 'Catat Rekam Prilaku ', '2020-02-15 03:39:52'),
(20, 'uks', '2020-02-20 00:45:49'),
(9, 'Catat Rekam Prilaku ', '2020-02-20 02:24:08'),
(1, 'registrasi ppdb', '2020-02-28 03:26:42'),
(1, 'wawancara ppdb', '2020-02-28 04:37:29'),
(1, 'pemanggil peserta', '2020-02-28 09:14:46'),
(1, 'Perpustakaan', '2020-03-18 02:08:13'),
(7, 'Akses Tugas', '2020-04-28 10:28:44'),
(7, 'Catat Rekam Prilaku ', '2020-04-28 10:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `base_data_ayah`
--

CREATE TABLE `base_data_ayah` (
  `nis` varchar(30) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `tempat_lahir_ayah` varchar(20) NOT NULL,
  `tanggal_lahir_ayah` varchar(30) NOT NULL,
  `telp_ayah` varchar(20) NOT NULL,
  `email_ayah` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_data_ayah`
--

INSERT INTO `base_data_ayah` (`nis`, `nama_ayah`, `tempat_lahir_ayah`, `tanggal_lahir_ayah`, `telp_ayah`, `email_ayah`) VALUES
('1920.11.001', 'ASEP MUNANDAR SE', 'BOGOR', '21-01-1978', '6281331994417', 'asep.munandar78@gmail.com'),
('1920.11.002', 'RAHADIAN', 'Jakarta', '02-10-1983', '628129539146', 'amiril.rahadian@gmail.com'),
('1920.11.003', 'RUSDY ATTAMIMI', 'Jakarta', '30-04-1981', '6287885917078', 'rusdyattamimi0481@gmail.com'),
('1920.11.004', 'EKO WANTANA', 'GARUT', '13-04-1984', '6285780333469', 'eko.wantana@gmail.com'),
('1920.11.005', 'ASEP MALINDA ABIOGA', 'GARUT', '19-09-1978', '6285217220346', 'ajenk.abioga@gmail.com'),
('1920.11.006', 'MUHAMAD HANDIKI, ST', 'Bogor', '02-12-1985', '6285697660913', 'muhamad_handiki@yahoo.com'),
('1920.11.007', 'AGUS DWI SUSANTO S.AKT', 'Jakarta', '18-09-1985', '6281290604879', 'agusdwisusanto@gmail.com'),
('1920.11.008', 'TOPAN FIRMANDHA', 'KEDIRI', '14-02-1985', '6287858376636', 'top.p43@gmail.com'),
('1920.11.009', 'AHMAD FITRI JAWAS', 'Jakarta', '25-09-1976', '6281316510088', 'afitjawas@gmail.com'),
('1920.11.010', 'UOH ROHMATULOH', 'BOGOR', '15-08-1979', '628114161161', 'uoh.rohmatuloh@gmail.com'),
('1920.11.011', 'Prima Kurniawan', 'Bogor', '31-07-1977', '628562341977', 'prima.abuahmad@gmail.com'),
('1920.11.012', 'MOH NURCHOLIS, S.KOM', 'Brebes', '01-06-1982', '6285215225552', 'choellish@gmail.com'),
('1920.11.013', 'SUKMAJAYA', 'bogor', '17-10-1982', '6281802931919', 'sukmajaya.sakti@yahoo.co.id'),
('1920.11.014', 'RACHMAN JAFAR SIREGAR', 'Bogor', '04-05-1976', '6281932051330', 'rachmanjsdiapari@googlemail.co'),
('1920.11.015', 'CHALID ALI MARTA', 'Bogor', '07-07-1978', '62817129793', 'nainara.chldmart@gmail.com'),
('1920.11.016', 'RISNANDAR, SPI, MSI', 'Bandung', '15-01-1979', '628111953935', 'aqrisnandar@gmail.com'),
('1920.11.017', 'ANDRIAN FAJRIN NUHUNG', 'Jakarta', '28-08-1986', '6281284659186', 'andrian_fajrin@yahoo.com'),
('1920.11.018', 'MUHAMMAD IHWAN BANDASO', 'PALOPO', '23-09-1974', '6281382305123', 'ih_onebandaso@yahoo.com'),
('1920.11.019', 'SAPTO SUBROTO, SE', 'Bogor', '20-12-1971', '628561303738', 'sapto_subroto@yahoo.com'),
('1920.11.020', 'ARI PRIHANTONO', 'Magelang', '13-02-1978', '628119002178', 'ari.prihantono@geocycle.com'),
('1920.11.021', 'DENNY TRIMULYADI, SE', 'Jakarta', '02-05-1979', '628119782970', 'denny_trimulyadi@yahoo.com'),
('1920.11.022', 'TAUFIK MARIYANTO,S.ST', 'TEMANGGUNG', '04-04-1981', '6287801675000', 'mariyanto_t@yahoo.com'),
('1920.11.023', 'SUNU ADI PUTRA', 'TELUK BETUNG', '18-06-1984', '6287777680894', 'sunu.adiputra@yahoo.com'),
('1920.11.024', 'YAYAN DIANA SOFYAN,S.KOM', 'Jakarta', '19-03-1974', '6287822978942', 'Oeyand@yahoo.com'),
('1920.11.025', 'FIRMANSYAH EFFENDIE, S.KOM', 'Bogor', '15-10-1985', '6281808033233', 'firmansyh.effendi@gmail.com'),
('1920.11.026', 'IR. SUWOKO EDI PRASETYO', 'CILACAP JAWA TENGAH', '12-05-1975', '62817212575', 'SUWOKOEDIPRASETYO@GMAIL.COM'),
('1920.11.027', 'LUCKY ZULFIKAR, ST', 'Bogor', '01-12-1979', '628111980037', 'lucky.zulfikar@gmail.com'),
('1920.11.028', 'MUHAMMAD YAYAT AFIANTO', 'Jakarta', '30-07-1975', '62811107080', 'yafianto1975@gmail.com'),
('1920.11.029', 'HARKAT WIGUNA, S.KOM', 'BANDUNG', '06-05-1985', '628112235685', 'harkat.wiguna@jict.co.id'),
('1920.11.030', 'DR. IR. QIQI ASMARA, M.SI., IPM.', 'Lubuklinggau', '22-07-1974', '62811915334', 'qiqiasmara@gmail.com'),
('1920.11.031', 'SUPRIYADI', 'wonogiri', '12-05-1980', '6285217016564', 'suprieyadi@gmail.com'),
('1920.11.032', 'ADE KOSASIH S.KOM.', 'Kuningan', '13-03-1980', '6281218765230', 'ade.kosasih@gmail.com'),
('1920.11.033', 'DANI DARMAWAN', 'Bandung', '25-09-1975', '6285211888586', 'danibaik17@gmail.com'),
('1920.11.034', 'BAMBANG SULISTIO, S.SI', 'Pemalang', '24-06-1976', '628561600032', 'bsulistio@gmail.com'),
('1920.11.035', 'ARMAN AMRI', 'Bukit Tinggi', '13-11-1975', '628151855631', 'armanamri47@gmail.com'),
('1920.11.036', 'ABDURRAHMAN OMAR RAHIMAHULLAH', 'Johor', '20-12-1961', '6285881231360', 'muhammadjazuli.dop@gmail.com'),
('1920.11.037', 'DR. YUNAN NUR WAHYUDI', 'Rembang, Jawa Tengah', '28-04-1975', '62811111827', 'yunannwahyudi@yahoo.com'),
('1920.11.038', 'HAEKAL NADIM ASKAR', 'bogor', '05-09-1988', '6286777505850', 'haikalaskarmira@gmail.com'),
('1920.11.039', 'EKO SIGIT PRAMONO SE', 'Jakarta', '11-11-1974', '6281319887654', 'ekosigitpramono@gmail.com'),
('1920.11.040', 'DR. FACHRY ACHMAD PRODJOKUSUMO, MPH.', 'Purworejo', '18-02-1987', '6281119595393', 'fachry.prodjokusumo@gmail.com'),
('1920.11.041', 'ERDIAN ADRIANI', 'Bogor', '18-02-1976', '6281299147415', 'erdian.adriani@gmail.com'),
('1920.11.043', 'WASKITO TIM SURYANTO', 'Salatiga', '19-08-1982', '628889063301', 'waskito.abuyumna@anakshalihbog'),
('1920.11.044', 'ROBY NURZAMAN ST., MT.', 'Bandung', '15-04-1982', '628122350322', 'Roby.nurzaman@gmail.com'),
('1920.11.045', 'RIDWAN SUPRIYADI S.E.', 'Jakarta', '14-03-1987', '6281329049777', 'ridwanaljakarti@gmail.com'),
('1920.11.046', 'BUDIARTO', 'TEGAL', '10-07-1976', '6287854332939', 'Budz_arto@yahoo.co.id'),
('1920.11.047', 'MOHAMAD RIDWAN SSOS,BKP', 'Jakarta', '28-11-1982', '628111192229', 'mohamad.ridwan@gmail.com'),
('1920.11.048', 'SUMARNO, SE', 'Palembang', '27-12-1984', '6281219121369', 'sumarno.005@gmail.com'),
('1920.11.049', 'THONANG ARTHONO', 'Semarang', '25-11-1976', '628129567904', 'thonanga@gmail.com'),
('1920.11.051', 'ALFIAN GALIH NUGROHO, ST', 'Madiun', '05-10-1988', '6281315474049', 'alfiangalih_nugroho@yahoo.co.i'),
('1920.11.052', 'Ryan Aulia', 'Jakarta', '06-04-1981', '6282122110812', 'masagus.ryanaulia@gmail.com'),
('1920.11.053', 'RUSLI HIDAYAT', 'Bogor', '16-05-1977', '6281380807006', 'ruslihidayat16@gmail.com'),
('1920.11.054', 'MUHAMMAD, S.KOM.', 'Pekalongan', '27-01-1984', '6281807705273', 'muhammad.babsail@gmail.com'),
('1920.11.055', 'HILAL AL BAKRY', 'Jakarta', '27-07-1983', '6287880772565', 'Hayawahaya@gmail.com'),
('1920.11.056', 'HAMDANI NASUTION, S.PD., M.PD.I', 'Tebing Tinggi', '01-10-1983', '6288809014302', 'hamdani.abufathimah@anakshalih'),
('1920.11.057', '0', '0', '0--0', '', '0'),
('1920.11.058', 'DENI PUTRA UTAMA ATT II', 'Sukaraja lampung', '09-12-1976', '6281332556230', 'deniputrautama@gmail.com'),
('1920.11.059', 'IMAM MUDA GUNAWAN, ST, MSI', 'Bandar Lampung', '03-03-1982', '628111110382', 'imgun82@gmail.com'),
('1920.11.060', 'IMAM SHOFWAN HARUN', 'Jakarta', '15-06-1977', '6281316266299', 'imamsharun@gmail.com'),
('1920.11.061', 'MUHAMMAD FADHILLAH, S.PT', 'Bogor', '16-07-1981', '62811118863', 'muhammadfadillah81@gmail.com'),
('1920.11.062', 'HENDRICO UTAMA SE', 'Jakarta', '06-06-1970', '6282123661970', 'utamaico@gmail.com'),
('1920.11.063', 'DWIKO SAPTO PRAYITNO, S.SOS', 'Jakarta', '19-09-1968', '6208161135571/081290', 'dwikosaptoprayitno@gmail.com'),
('1920.11.065', '0', '0', '0--0', '', '0'),
('1920.11.066', 'MAMAN ROSMANTIKA', 'KUNINGAN', '03-04-1972', '6281320627095', 'mroesman@gmail.com'),
('1920.11.067', 'FUAD BUSTAMAM, ST', 'Jakarta', '25-12-1970', '62816911135', 'abumusa.fuad@gmail.com'),
('1920.11.068', 'EDGAR MUHAMMAD', 'jakarta', '20-11-1976', '6287870000961', 'gerychapunk@yahoo.com'),
('1920.11.069', 'MUHAMMAD ICHWANUDIN TUANKOTTA SH. MH', 'Jakarta', '21-08-1973', '628159793937', 'Muhammadichwantuankotta@gmail.'),
('1920.11.070', 'RIZQI SUNGKAR', 'bogor', '25-09-1985', '6287874568213', 'safirazimah@yahoo.com'),
('1920.11.071', 'SUHARTONO', 'TEGAL', '15-09-1964', '6281350011880', 'soehartonohut@gmail.com'),
('1920.11.072', 'JATI WISNU MURTHY, ST', 'PURWOREJO', '15-06-1980', '6281315979001', 'jatiwisnu@yahoo.com'),
('1920.11.073', 'BILAL ALBAKRIE', 'Bogor', '04-01-1980', '6287891808709', 'Syirinbilal2106@gmail.com'),
('1920.11.074', 'MOHAMAD MUKHSIN', 'Kebumen', '24-02-1978', '6208129079949/087872', 'mohammadmukhsin@mail.com'),
('1920.11.075', 'NOVALSA PUTRA  ST', 'ACEH', '18-09-1981', '6285206979383', 'Xnovalsa.putra@gmail.com'),
('1920.11.076', 'FACHMI SALIM', 'Jakarta', '14-07-1985', '6282273454533', 'elinaharahap@icloud.com'),
('1920.11.077', 'SURYADI', 'Padang', '05-07-1968', '6281319499979', 'suryadi_ipong@yahoo.com.sg'),
('1920.11.078', 'SULARTO', 'Gedong', '10-04-1961', '62818852396', 'lisasofitri@yahoo.com'),
('1920.11.079', 'RIDWAN RAIS AZIS', 'Tasik Malaya', '04-10-1979', '62816951504', 'ridwaanrais@gmail.com'),
('1920.11.080', 'SISWANTO EKO', 'Bogor', '12-02-1977', '62817100927', 'silmialifia.se@gmail.com'),
('1920.11.081', 'MUHAMAD WAHYUDIN, S.KOM', 'Tangerang', '18-09-1987', '6281368715423', 'ryuwahyudin@gmail.com'),
('1920.11.082', 'HAMDAN JAWAS', 'Jakarta', '14-11-1980', '628158187180', 'hamdeens@gmail.com'),
('1920.11.083', 'MUJTAHID, S.PD.I', 'Lombok', '10-05-1980', '6281808284414', 'Mujtahid.abuumair@anakshalihbo'),
('1920.11.084', 'IWAN KURNIAWAN MUHAROMI', 'Yogyakarta', '10-11-1980', '628122751483', 'muharomie@gmail.com'),
('1920.11.085', 'IRFAN KAMALUDIN', 'Bogor', '26-09-1984', '6287770365640', 'irfan.abumusa@gmail.com'),
('1920.11.086', 'BUDI ASMAWAN', 'Bogor', '04-04-1978', '6281211604697', 'basmawan@gmail.com'),
('1920.11.087', 'BAMBANG HERLAMBANG,ST', 'Bogor', '12-07-1978', '6287770007577', 'bambangherlambang31@yahoo.com'),
('1920.11.088', 'OMAR MUBARAK', 'Jakarta', '12-11-1983', '6281321309053', 'ommubarak@yahoo.com'),
('1920.11.089', 'ICKHSAN NURFALAH, S.KOM.', 'Jakarta', '29-11-1989', '6283811888777', 'ickhsan@dr.com'),
('1920.11.090', 'AHMAD KHOZIN, AMD', 'Bojonegoro', '04-08-1985', '6281318476625', 'just.ozzie@gmail.com'),
('1920.11.091', 'RUDI RIZKI RAHMAN. AMD', 'Bunga Tanjung', '10-11-1983', '628126739521', 'rudisuraulurah@yahoo.co.id'),
('1920.11.092', 'NAWAF ASKAR, SE', 'Bogor', '16-02-1983', '6281317505017', '0'),
('1920.11.093', 'SURAHMAN', 'Jakarta', '10-10-1979', '6285888846668', 'rahman2391@yahoo.com'),
('1920.11.094', 'GEMPITA', 'teratak air hitam', '12-08-1985', '6281311668285', 'gempita85@gmail.com'),
('1920.11.095', '', '', '--', '', ''),
('1920.11.096', '0', '0', '0--0', '', '0'),
('1920.11.097', 'ARIEF CAHYO UTOMO', 'Jakarta', '24-09-1977', '6281271042212', 'ariefcu@gmail.com'),
('1920.11.098', 'RAMZI RASYID', 'Jakarta', '26-11-1982', '6281288789480', 'Ramzihusun1982@gmail.com'),
('1920.11.099', 'JON ELIT AL-QADRY S.SIT, MM, M.MAR', 'Padang', '15-01-1975', '628127007787', 'Jonelitalqadry@hotmail.co.uk'),
('1920.11.101', 'TOMMY HENDRATNO SH', 'Bondowoso', '10-06-1976', '6281288809333', 't.hendratno@gmail.com'),
('1920.11.102', 'GATOT SETIAWAN, S. HUT. M.SI', 'Blora', '08-03-1984', '6281585326702', 'gatot.setiawan@gmail.com'),
('1920.11.104', 'RICKI THREEZARDI S. FIL', 'jakarta', '01-06-1983', '6281905056225', 'rickijabsyah@gmail.com'),
('1920.11.105', '0', '0', '0--0', '', '0'),
('1920.11.106', 'ANDI SANTOSO', 'SUKOHARJO', '12-12-1985', '628990575982', 'antozbgt@gmail.com'),
('1920.11.108', '', '', '--', '', ''),
('1920.11.109', '', '', '--', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `base_data_ibu`
--

CREATE TABLE `base_data_ibu` (
  `nis` varchar(30) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `tempat_lahir_ibu` varchar(20) NOT NULL,
  `tanggal_ibu` varchar(20) NOT NULL,
  `telp_ibu` varchar(20) NOT NULL,
  `email_ibu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_data_ibu`
--

INSERT INTO `base_data_ibu` (`nis`, `nama_ibu`, `tempat_lahir_ibu`, `tanggal_ibu`, `telp_ibu`, `email_ibu`) VALUES
('1920.11.001', 'MAMAY MAILANI', 'BOGOR', '13-05-1979', ' 628123400842 ', 'mamaymailani@gmail.com'),
('1920.11.002', 'HAVIA SUSANTI', 'Jakarta', '27-07-1984', '  ', 'amiril.rahadian@gmail.com'),
('1920.11.003', 'DINA FATHIA', 'Surakarta', '24-12-1988', '  ', 'rusdyattamimi0481@gmail.com'),
('1920.11.004', 'FITRIYANI', 'JAKARTA', '26-05-1987', ' 6285310241027 ', 'umamahfitri87@gmail.com'),
('1920.11.005', 'NIA TETIN YUNIARTI', 'TASIKMALAYA', '06-06-1978', '  ', 'tetinia78@gmail.com'),
('1920.11.006', 'DR. ASRI MASITHA ARSYATI, SKM, MKM', 'Bogor', '19-10-1985', ' 628567997228 ', 'asri.masitha@gmail.com'),
('1920.11.007', 'APRITA NUR RACHMAWATI S.IP', 'Klaten', '01-04-1986', '  ', 'prita.susanto@gmail.com'),
('1920.11.008', 'RINA KARTINI', 'Ngawi', '10-08-1985', ' 6285645647531 ', 'top.p43@gmail.com'),
('1920.11.009', 'FAIRUS HASAN MARTA', 'Jakarta', '20-11-1978', '  ', 'fairuzmartak@gmail.com'),
('1920.11.010', 'ASTRI TESTIANDINI', 'BOGOR', '09-07-1984', ' 6281290620357 ', 'fathur.aisha@gmail.com'),
('1920.11.011', 'Dyah Bayurini', 'Bogor', '25-01-1984', ' 6285777769984 ', 'ninu.umiahmad@gmail.com'),
('1920.11.012', 'DR. BINTARTI SETYANINGRUM', 'Sleman', '09-10-1984', ' 628121575095 ', 'bintevolution@gmail.com'),
('1920.11.013', 'NUR KOMARIA HERWATI S.PD.AK, M. KESOS', 'jakarta', '23-09-1982', '  ', 'rhiqie@gmail.com'),
('1920.11.014', 'FERIAL', 'bogor', '26-02-1977', ' 628111100575 ', 'bnr_ferial@yahoo.com'),
('1920.11.015', 'NAJLA SYARIF ABDAT', 'Bogor', '17-08-1983', ' 6287874335554 ', 'safarimartamulia@gmail.com'),
('1920.11.016', 'A. RETNO MURTI SURYANINGSIH, SST', 'Wonosari', '10-03-1978', '  ', 'retno.amini@yahoo.com'),
('1920.11.017', 'ADITYA YUNITA', 'Jakarta', '27-06-1987', '  ', 'aditya.yunita@gmail.com'),
('1920.11.018', 'IKA RAHMAWATI', 'JAKARTA', '19-12-1977', ' 6281316063229 ', 'i_karahmawati@yahoo.com'),
('1920.11.019', 'DR. DRH. MUJIATUN, MSI', 'Kebumen', '01-11-1976', '  ', 'mujiatun.bbuskp@gmail.com'),
('1920.11.020', 'RIESMA FERDIANI', 'Sukabumi', '11-04-1980', ' 6285890307451 ', 'risma.ferdiani01@gmail.com'),
('1920.11.021', 'MARLINA UTAMI, AMD', 'Jakarta', '04-03-1987', '  ', 'marlina@sgp-dkp.com'),
('1920.11.022', 'IIN DIAH NURAENI, S.TP', 'TEMANGGUNG', '11-09-1980', '  ', 'mariyanto_t@yahoo.com'),
('1920.11.023', 'SRI IRNA ANGGRAINI', 'JEPARA', '07-03-1984', '  ', 'anggia.adiputra@gmail.com'),
('1920.11.024', 'NENENG SALAMAH', 'Garut', '19-05-1976', '  ', 'Nesya1909@gmail.com'),
('1920.11.025', 'INDRI NOVIANTI', 'Tasikmalaya', '18-11-1987', '  ', 'indri.novianti@gmail.com'),
('1920.11.026', 'YUNI RIA SYAHRANI, AMD', 'SIMALUNGUN SUMATERA ', '02-06-1981', ' 628158137939 ', 'YR_SYAHRANI@YAHOO.COM'),
('1920.11.027', 'INDIRA INTAN LATIEF, ST, MT', 'Bandung', '01-09-1978', '  ', 'bu.indira@gmail.com'),
('1920.11.028', 'RETRO KUSWULANDARI', 'Bogor', '28-12-1975', '  ', 'retno28121975@gmail.com'),
('1920.11.029', 'FATHARANI MASHALINDA', 'BANDUNG', '17-05-1990', '  ', 'fatharanilinda17@gmail.com'),
('1920.11.030', 'DR. ADELIA RAHMI, MARS.', 'Karawang', '23-07-1974', '  ', 'adelia.rahmi@gmail.com'),
('1920.11.031', 'SITI NURWIDA ERIDANI', 'Bogor', '19-09-1981', ' 620812-1104-353 ', 'widachan@yahoo.com'),
('1920.11.032', 'PRATIWI', 'Banyumas', '09-10-1981', '  ', 'tiwifaga@gmail.com'),
('1920.11.033', 'ENDAH JUBAEDAH', 'Bogor', '22-06-1978', '  ', 'ghaina2017@gmail.com'),
('1920.11.034', 'SRI HAJAH SARIPAH, A.MD', 'Bogor', '10-08-1984', ' 6285695165441 ', 'srie_tea@yahoo.com'),
('1920.11.035', 'RACHMAWATI RIAS', 'Jakarta', '28-05-1982', '  ', 'armanamri47@gmail.com'),
('1920.11.036', 'HERLINA', 'Bogor', '31-07-1980', '  ', 'muhammadjazuli.dop@gmail.com'),
('1920.11.037', 'DR. ADE IRMA YOETICEA', 'Yogyakarta', '01-01-1980', '  ', 'yunannwahyudi@yahoo.com'),
('1920.11.038', 'IDA FARIDA AMIR BALFAS', 'bogor', '15-03-1989', ' 6285777505848 ', 'faridahbalfas@gmail.com'),
('1920.11.039', 'YULIATI', 'Jakarta', '29-07-1987', ' 6282307153992 ', 'yuliatipramono@gmail.com'),
('1920.11.040', 'SYLVI ANGGITASARI, S.GZ', 'Bogor', '15-04-1988', ' 6281286927126 ', 'sylvi.anggita.sari@gmail.com'),
('1920.11.041', 'KARTIKA DESIYANTI', 'Bogor', '14-12-1974', '  ', 'enka.kartika@gmail.com'),
('1920.11.043', 'NURRUL FAJRI', 'Palembang', '15-04-1984', '  ', 'waskito.abuyumna@anakshalihbogor.sch.id'),
('1920.11.044', 'NANA DIANA PUSFITA', 'Jakarta', '25-09-1983', ' 6281315300915 ', 'n.diana.1517@gmail.com'),
('1920.11.045', 'NANIH', 'Jakarta', '09-03-1990', '  ', 'umijihansyakila@gmail.com'),
('1920.11.046', 'MERY INDAYANI', 'LANGSA', '22-03-1981', '  ', 'Meryindayani22@yahoo.com'),
('1920.11.047', 'NINDITA TRI AJENG', 'Jakarta', '10-09-1983', ' 628118188555 ', 'msnindita@yahoo.com'),
('1920.11.048', 'DRESTHY AULIA ESTEFAN, SE', 'Bogor', '20-06-1987', '  ', 'dresthy.ae@gmail.com'),
('1920.11.049', 'WINDA DIAH PUSPASARI', 'Kendal', '18-10-1977', ' 6285693690000 ', 'winda_diah@yahoo.com'),
('1920.11.051', 'ENY PUJIHASTUTI, SP', 'Bogor', '28-01-1982', '  ', 'enypujihastuti28@gmail.com'),
('1920.11.052', 'Artha Rozana', 'Jakarta', '12-10-1978', ' 6281314167626 ', 'artharozana92@gmail.com'),
('1920.11.053', 'DEWI ARIANI', 'Bogor', '05-05-1977', ' 62811117047 ', 'dycariani@gmail.com'),
('1920.11.054', 'RAIHAN', 'Pamekasan', '26-02-1985', '  ', 'manal.babsail@gmail.com'),
('1920.11.055', 'SITI HAJAR KHALILLAH', 'Cirebon', '11-08-1990', '  ', 'Hayawahaya@gmail.com'),
('1920.11.056', 'ALIYA PRAMUDITA', 'Bogor', '11-07-1986', '  ', 'abudzakiyah4@gmail.com'),
('1920.11.057', '0', '0', '0--0', '  ', '0'),
('1920.11.058', 'DYNA SHOVINA', 'Jakarta', '09-10-1984', ' 6281382799010 ', 'dynaumair@gmail.com'),
('1920.11.059', 'ARYANI LASPURI, SPD, MSI', 'Palembang', '04-12-1983', ' 6281395311918 ', 'laspuri@gmail.com'),
('1920.11.060', 'RESTYO DYAN KORNIAWATI', 'Madiun', '12-07-1977', ' 6281316785363 ', 'rdyan127@gmail.com'),
('1920.11.061', 'ASHARANI MERYA', 'Jakarta', '10-03-1982', '  ', 'ash.qie@gmail.com'),
('1920.11.062', 'DONA YULIANTI', 'Lhoksukon', '14-10-1982', '  ', 'Icoutama@yahoo.com'),
('1920.11.063', 'DILLA PIERRASANTY, S. PSI', 'Jakarta', '10-12-1975', ' 6281289529350 ', 'dillapierrasanty10@gmail.com'),
('1920.11.065', '0', '0', '0--0', '  ', '0'),
('1920.11.066', 'LIA ZUHRIA AWALIA', 'KUNINGAN JAWA BARAT', '03-01-1978', '  ', 'liazuhria78@gmail.com'),
('1920.11.067', 'HAIFA, SE', 'Pamekasan', '08-06-1983', ' 628179981248 ', 'haifa.alkatiri@gmail.com'),
('1920.11.068', 'VISSY DEWI ARINI.SPDI', 'sukabumi', '19-01-1988', '  ', 'vissydewi@gmail.com'),
('1920.11.069', 'SENDI LASTUTI', 'Banyumas', '10-09-1981', '  ', 'Sendilastuti10@gmail.com'),
('1920.11.070', 'SAFIRAH', 'jakarta', '24-06-1990', ' 6285774075676 ', 'safirazimah@yahoo.com'),
('1920.11.071', 'HANAN A. BALFAS', 'JAKARTA', '01-01-1983', '  ', 'najwastore2014@gmail.com'),
('1920.11.072', 'PITRI PUJIASTUTI, S.PSI', 'KLATEN', '30-07-1980', ' 6281342955214 ', 'pitripujiastutinana@gmail.com'),
('1920.11.073', 'NAFILA', 'Bogor', '25-07-1987', ' 6287880880814 ', 'Nafilaaskar25@gmail.com'),
('1920.11.074', 'ARBANGATUN MUCHOYAROH, SAG.', 'Kebumen', '26-05-1978', '  ', 'mohammadmukhsin@gmail.com'),
('1920.11.075', 'IDA MASNIAR ILYAS S.MB', 'Aceh', '17-01-1982', '  ', 'Xnovalsa.putra@gmail.com'),
('1920.11.076', 'ELINA SEHLI HARAHAP', 'Padangsidempuan', '12-12-1984', ' 6282273454533 ', 'elinaharahap@icloud.com'),
('1920.11.077', 'LIA ERLIA FARINI', 'Sukabumi', '07-01-1987', ' 6281311188875 ', 'shakilaali1316@gmail.com'),
('1920.11.078', 'LISA SOFITRIANA YUNINGSIH', 'Jakarta', '10-06-1986', ' 6281291966763 ', 'lisasofitri@yahoo.com'),
('1920.11.079', 'SUMAYA FAIZ ASKAR', 'Bogor', '10-12-1984', ' 6287770000091 ', 'mayaridwan616@gmail.com'),
('1920.11.080', 'DEWI TRESNAWATI', 'Bogor', '26-08-1984', '  ', 'siswanto.cd@gmail.com'),
('1920.11.081', 'DIAH WULANSARI, S.SAS', 'Tangerang', '14-02-1987', '  ', 'diah.wulansari14@gmail.com'),
('1920.11.082', 'MUNA MAYMUNAH FAUZI ABDUL AZIZ', 'Bogor', '05-05-1983', '  ', 'Munamay83.@gmail.com'),
('1920.11.083', 'KARVITA PARMAWATI, S.SI', 'Jakarta', '25-08-1982', ' 6281808284414 ', 'Vita.ummuumair@anakshalihbogor.sch.id'),
('1920.11.084', 'NURUL REIZKI', 'Jambi', '20-06-1988', ' 6281284873917 ', 'nureizki@gmail.com'),
('1920.11.085', 'TETRA AULIA', 'Bogor', '24-10-1988', '  ', 'ummu.musa12@gmail.com'),
('1920.11.086', 'DEWI SETYARINI', 'Jakarta', '01-01-1978', ' 6281219206156 ', 'setyarinid@gmail.com'),
('1920.11.087', 'RATNA FARLEINA GUNAWAN', 'Bogor', '22-01-1978', '  ', 'farlainaratna12@gmail.com'),
('1920.11.088', 'AMALIA', 'Jakarta', '14-02-1983', ' 6281399266390 ', 'capulaga@gmail.com'),
('1920.11.089', 'NURINA MAULIDYANINGSIH', 'Bogor', '19-10-1989', ' 6283811888666 ', 'maulidya.rina@gmail.com'),
('1920.11.090', 'ASTRI SULISTIAWATY', 'Bandung', '08-03-1980', ' 6281807475600 ', 'diastrias@gmail.com'),
('1920.11.091', 'IMELDA YAHYA. S. PD', 'Pitalah', '03-05-1988', '  ', 'Imeldacimumut@gmail.com'),
('1920.11.092', 'NAIMAH ASKAR', 'Bogor', '25-11-1991', ' 6282221116452 ', 'Naimahaskar333@gmail.com'),
('1920.11.093', 'EKA RACHMI DEWI', 'Jakarta', '08-03-1986', ' 628111146668 ', 'eccamarch86@gmail.com'),
('1920.11.094', 'NOVIYANTI', 'bengkulu', '15-06-1982', '  ', 'ovie193mt@gmail.com'),
('1920.11.095', '', '', '--', '  ', ''),
('1920.11.096', 'TANTI PRASTANTI, S.E.', 'indramayu', '12-08-1982', '  ', 'prastantitanti@gmail.com'),
('1920.11.097', 'FAJRIATY', 'Bogor', '28-02-1995', '  ', 'a@a.com'),
('1920.11.098', 'HANIFA FAISAL THALIB', 'Jakarta', '25-08-1991', '  ', 'Haniithalib@gmail.com'),
('1920.11.099', 'KURNIA ZETTY', 'Padang', '15-02-1980', ' 6285288913974 ', 'Kurniazetty@gmail.com'),
('1920.11.101', 'SITTI SADIAR KOOHINOOR SE', 'Bogor', '16-04-1979', '  ', 't.hendratno2@gmail.com'),
('1920.11.102', 'SITI RACHMIATI NASUTION, STP', 'Bogor', '26-03-1986', ' 6285715343921 ', 'ami_noitusan@yahoo.com'),
('1920.11.104', 'NOVA SYAFRINA', 'padang', '05-08-1984', '  ', 'rickijabsyah@gmail.com'),
('1920.11.105', '0', '0', '0--0', '  ', '0'),
('1920.11.106', 'ICE ERNAWATI', 'JEMBER', '13-08-1986', '  ', 'ice.ernawatithevet@gmail.com'),
('1920.11.108', '', '', '--', '  ', ''),
('1920.11.109', '', '', '--', '  ', '');

-- --------------------------------------------------------

--
-- Table structure for table `base_data_kelas`
--

CREATE TABLE `base_data_kelas` (
  `nis` varchar(30) NOT NULL,
  `tingkat` varchar(1) NOT NULL,
  `kelas` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_data_kelas`
--

INSERT INTO `base_data_kelas` (`nis`, `tingkat`, `kelas`) VALUES
('1920.11.001', '1', 'B'),
('1920.11.002', '1', 'C'),
('1920.11.003', '1', 'B'),
('1920.11.004', '1', 'A'),
('1920.11.005', '1', 'C'),
('1920.11.006', '1', 'A'),
('1920.11.007', '1', 'A'),
('1920.11.008', '1', 'D'),
('1920.11.009', '1', 'C'),
('1920.11.010', '1', 'D'),
('1920.11.011', '1', 'B'),
('1920.11.012', '1', 'A'),
('1920.11.013', '1', 'C'),
('1920.11.014', '1', 'B'),
('1920.11.015', '1', 'C'),
('1920.11.016', '1', 'D'),
('1920.11.017', '1', 'B'),
('1920.11.018', '1', 'D'),
('1920.11.019', '1', 'A'),
('1920.11.020', '1', 'D'),
('1920.11.021', '1', 'A'),
('1920.11.022', '1', 'D'),
('1920.11.023', '1', 'D'),
('1920.11.024', '1', 'A'),
('1920.11.025', '1', 'B'),
('1920.11.026', '1', 'B'),
('1920.11.027', '1', 'A'),
('1920.11.028', '1', 'D'),
('1920.11.029', '1', 'A'),
('1920.11.030', '1', 'C'),
('1920.11.031', '1', 'B'),
('1920.11.032', '1', 'D'),
('1920.11.033', '1', 'D'),
('1920.11.034', '1', 'D'),
('1920.11.035', '1', 'B'),
('1920.11.036', '1', 'C'),
('1920.11.037', '1', 'C'),
('1920.11.038', '1', 'A'),
('1920.11.039', '1', 'A'),
('1920.11.040', '1', 'B'),
('1920.11.041', '1', 'A'),
('1920.11.043', '1', 'A'),
('1920.11.044', '1', 'D'),
('1920.11.045', '1', 'C'),
('1920.11.046', '1', 'D'),
('1920.11.047', '1', 'C'),
('1920.11.048', '1', 'D'),
('1920.11.049', '1', 'B'),
('1920.11.051', '1', 'B'),
('1920.11.052', '1', 'C'),
('1920.11.053', '1', 'C'),
('1920.11.054', '1', 'C'),
('1920.11.055', '1', 'A'),
('1920.11.056', '1', 'B'),
('1920.11.057', '1', 'D'),
('1920.11.058', '1', 'B'),
('1920.11.059', '1', 'B'),
('1920.11.060', '1', 'C'),
('1920.11.061', '1', 'D'),
('1920.11.062', '1', 'C'),
('1920.11.063', '1', 'D'),
('1920.11.065', '1', 'C'),
('1920.11.066', '1', 'C'),
('1920.11.067', '1', 'D'),
('1920.11.068', '1', 'A'),
('1920.11.069', '1', 'A'),
('1920.11.070', '1', 'B'),
('1920.11.071', '1', 'A'),
('1920.11.072', '1', 'D'),
('1920.11.073', '1', 'D'),
('1920.11.074', '1', 'B'),
('1920.11.075', '1', 'C'),
('1920.11.076', '1', 'D'),
('1920.11.077', '1', 'A'),
('1920.11.078', '1', 'A'),
('1920.11.079', '1', 'D'),
('1920.11.080', '1', 'B'),
('1920.11.081', '1', 'A'),
('1920.11.082', '1', 'C'),
('1920.11.083', '1', 'B'),
('1920.11.084', '1', 'D'),
('1920.11.085', '1', 'D'),
('1920.11.086', '1', 'A'),
('1920.11.087', '1', 'A'),
('1920.11.088', '1', 'A'),
('1920.11.089', '1', 'C'),
('1920.11.090', '1', 'C'),
('1920.11.091', '1', 'A'),
('1920.11.092', '1', 'B'),
('1920.11.093', '1', 'C'),
('1920.11.094', '1', 'B'),
('1920.11.095', '1', 'D'),
('1920.11.096', '1', 'B'),
('1920.11.097', '1', 'C'),
('1920.11.098', '1', 'C'),
('1920.11.099', '1', 'B'),
('1920.11.101', '2', 'C'),
('1920.11.102', '1', 'A'),
('1920.11.104', '2', 'B'),
('1920.11.105', '2', 'B'),
('1920.11.106', '1', 'B'),
('1920.11.108', '1', 'B'),
('1920.11.109', '1', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `base_data_siswa`
--

CREATE TABLE `base_data_siswa` (
  `nis` varchar(30) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `alamat` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_data_siswa`
--

INSERT INTO `base_data_siswa` (`nis`, `nama_siswa`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`) VALUES
('1920.11.001', 'ABDA ALRIZKY PUTRA MUNANDAR', 'Laki-laki', 'Sidoarjo', '23-11-2012', 'VILLA BOGOR INDAH 5 CLUSTER NURI BLOK CB4 NO 26 RT OO2 RW 007 DESA PASIR JAMBU KECAMATAN SUKARAJA'),
('1920.11.002', 'ABDILLAH AL FAUZAN AMIRIL', 'Laki-laki', 'Bogor', '21-11-2012', 'Perumahan Taman Tirta Cimanggu, Jln Tripang 1 Blok B2 No.10, RT.06/13 Mekarwangi, Tanah Sareal'),
('1920.11.003', 'ABDUL QADIR RASYID ATTAMIMI', 'Laki-laki', 'Jakarta', '30-04-2013', 'Perumahan Griya Nuraida, Blok E1 No.8'),
('1920.11.004', 'ABDULLAH', 'Laki-laki', 'Bogor', '26-01-2012', 'PERUMAHAN GRIYA SOKA JLN DUREN RAYA BLOK S1'),
('1920.11.005', 'ABDULLAH AJMAL AL KARIM', 'Laki-laki', 'Tasikmalaya', '29-03-2013', 'JL. MASJID CIBULUH NO.87 RT 003/003 KELURAHAN CIBULUH KEC. BOGOR UTARA'),
('1920.11.006', 'ABDURRAHMAN MAHDI', 'Laki-laki', 'Bogor', '30-01-2013', 'Jl.Tumenggung Wiradireja No.197 Rt.2/rw6 kelurahan Cimahpar Bogor Utara'),
('1920.11.007', 'ADLYN NAZURAH RIKZA', 'Laki-laki', 'Klaten', '02-11-2012', 'Perumahan Puri Nirwana 3 Blok DJ.06, Karadenan, Cibinong'),
('1920.11.008', 'ADZKA SALSABILA', 'Perempuan', 'Madiun', '10-01-2013', 'Jalan Raya Cilebut'),
('1920.11.009', 'AINIYAH AHMAD JAWAS', 'Perempuan', 'Jakarta', '01-06-2013', 'Grand Parahyangan estate, hanjuang 15 Cimahpar'),
('1920.11.010', 'AISHA KAMILA SABREEN', 'Perempuan', 'Bogor', '30-07-2012', 'JL DUREN RAYA BLOK R NO 7 PERUM GRIYA SOKA BOGOR RAYA KEL SUKARAJA KEC SUKARAJA'),
('1920.11.011', 'AISYAH', 'Perempuan', 'Bogor', '15-10-2012', 'Jl. Pamikul I No. 32 RT 3 RW O6'),
('1920.11.012', 'AISYAH NAYRA HANIFAH', 'Perempuan', 'Bogor', '29-01-2013', 'Perumahan Bumi Karadenan Permai 3 (BKP3) Blok AA9 No. 12A'),
('1920.11.013', 'ALBARRA MUHAMMAD SAKTI', 'Laki-laki', 'Bogor', '11-08-2012', 'jl raya pabuaran cimanggis'),
('1920.11.014', 'ALEXANDRIA HUMAIRA SIREGAR', 'Perempuan', 'Bogor', '13-12-2012', 'jl. bukit 4 no. 12 cluster bukit nirwana 2 bogor nirwana residence'),
('1920.11.015', 'ALI CHALID MARTA', 'Laki-laki', 'Bogor', '17-05-2013', 'Jalan Pakojan No. 4 RT 03 RW 01'),
('1920.11.016', 'ALIYA BATRISYA RISNANDAR', 'Perempuan', 'Bogor', '02-10-2012', 'BCC Greenland Blok DD6 no. 3, Suka Damai, Tanah Sareal'),
('1920.11.017', 'ALTHAF FATIH NAKHLA', 'Laki-laki', 'Jakarta', '24-06-2012', 'De Botanica Residence'),
('1920.11.018', 'AMANDA DELVIERA BANDASO', 'Perempuan', 'Jakarta', '22-08-2012', 'CLUSTER GREEN VALLEY'),
('1920.11.019', 'AMIRA ALTHAFUNNISA SUBROTO', 'Perempuan', 'Bogor', '15-09-2012', 'Asrama ABRI Sukasari'),
('1920.11.020', 'ANINDITA KHAIRUNNISA AULIA', 'Perempuan', 'Bekasi', '09-01-2013', 'Griya Soka III C-6 / 8, Sukaraja'),
('1920.11.021', 'ARLEEN KANYA DENA ALISYA', 'Perempuan', 'Bogor', '10-01-2013', 'Jl Raya Cilebut'),
('1920.11.022', 'AZKA AL LATHIF', 'Laki-laki', 'Bogor', '04-04-2013', 'PERUM BKP 3 BLOK AA1 NO.12 A RT 03 RW 17 KARADENAN CIBINONG'),
('1920.11.023', 'BAGAS HANDARU NADITRA ARGANI', 'Laki-laki', 'Bogor', '11-01-2013', 'VILLA BOGOR INDAH 3, BLOK AC1/6, KEDUNGHALANG, BOGOR UTARA'),
('1920.11.024', 'DELISA JIILAAN GASSANI SOFYAN', 'Perempuan', 'Bogor', '11-04-2012', 'Vila Bogor Indah 5 cluster nuri blok CB3/8 Rt.002/007'),
('1920.11.025', 'FACHRI FIRDIAN', 'Laki-laki', 'Tasikmalaya', '07-12-2012', 'Perumahan de Botanica Blok E No 30, RT 05 / RW 07, Cimahpar'),
('1920.11.026', 'FAKHRIYAH NAURA AZMI', 'Perempuan', 'Bogor', '30-12-2012', 'JL. AMARILIS IV BLOK V-8 NO.21 RT 6/9 PERUMAHAN TAMAN CIMANGGU KEDUNG WARINGIN TANAH SAREAL'),
('1920.11.027', 'FALISHA MADIHA ZAYNADAA', 'Perempuan', 'Bogor', '01-12-2012', 'Jl. Bambu Ori 1 no 25 Taman Yasmin'),
('1920.11.028', 'FARAH AZMI HAUNA', 'Perempuan', 'Bogor', '09-09-2012', 'Jl. Kalimantan Blok AC no. 56, Cilebut Bumi Pertiwi 1, Bogor 16710'),
('1920.11.029', 'FATHANZIA RINZARA AFUZAA', 'Perempuan', 'Bandung', '08-05-2013', 'KOMPLEK TASMANIA 5 NO 9B, KELURAHAN TANAH BARU, KECAMATAN BOGOR UTARA'),
('1920.11.030', 'FATHIMAH', 'Perempuan', 'Bogor', '01-11-2012', 'Jl. Raya Cibeureum No.16 Rt.7 Rw.5 Kelurahan Mulyaharja, Kecamatan Bogor Selatan'),
('1920.11.031', 'FATHIMAH AZ ZAHRA', 'Perempuan', 'Bogor', '11-01-2012', 'Griya Nuraida Blok D2 no 13, Jl. Anak Shalih, off Jl. Tumenggung Wiradireja RT.02/06 Kp. Kebon Awi, Kel. Cimahpar, Kec. Bogor Utara,  Kota Bogor 16155'),
('1920.11.032', 'GAVIN VIRENDRA SYAZANI', 'Laki-laki', 'Bogor', '16-02-2013', 'Perumahan Cilebut Residence, Cluster Adhenium Blok D2 No. 50 RT 004 RW 017 Jalan Raya Cilebut,  Kecamatan Sukaraja,'),
('1920.11.033', 'GHAINA SUCI KIRANA', 'Perempuan', 'Bogor', '09-07-2012', 'perum haji kota bogor'),
('1920.11.034', 'GHANIA AISHA PUTERI', 'Perempuan', 'Bogor', '30-06-2013', 'Perumahan Villa Pasirmas Blok E No. 21 RT.007 RW. 002 Kel. Pasir Kuda Kec. Bogor Barat'),
('1920.11.035', 'HALIMAH', 'Laki-laki', 'Bogor', '26-11-2012', 'Jl. Dramaga rt / 001/001 Desa Babakan Kecamatan Dramaga Bogor Jawa Barat'),
('1920.11.036', 'HANIFAH', 'Perempuan', 'Bogor', '22-01-2013', 'perumahan bogor raya residence'),
('1920.11.037', 'HAYFA AYDA NUR WAHYUDI MOEDJAHID', 'Perempuan', 'Jakarta', '13-05-2013', 'Griya Nuraida Blok E1 no 2, Cimahpar'),
('1920.11.038', 'HUMAIRA HAEKAL ASKAR', 'Perempuan', 'Bogor', '19-02-2013', 'komplek mina bakti cikaret kapten yusuf rt 06 rw 03'),
('1920.11.039', 'IBRAHIM', 'Laki-laki', 'Jakarta', '16-12-2012', 'Bogor Raya Residence Blok E 5 No 20'),
('1920.11.040', 'IBRAHIM RASYID', 'Laki-laki', 'Bogor', '29-04-2013', 'Danau Bogor Raya blok i-7 no.10 RT 02/RW 13, Cimahpar, Kota Bogor Utara'),
('1920.11.041', 'IBRAHIM.', 'Laki-laki', 'Bogor', '24-12-2012', 'Griya Nuraida'),
('1920.11.043', 'ISA ABDURRAHMAN ZEIN', 'Laki-laki', 'Bandung', '01-05-2012', 'Bogor'),
('1920.11.044', 'ISMAIL HANIF ABDUL HALIM', 'Laki-laki', 'Kota bogor', '28-06-2013', 'Jl. Tatapakan Raya No. 12, Perum Bantarjati, Bogor'),
('1920.11.045', 'JIHAN SYAKILA AL RIDWANI', 'Perempuan', 'Bontang', '09-03-2013', 'Jl. Cimahpar Sukaraja Kaum No. 3 Rt 1 Rw 7'),
('1920.11.046', 'KAYANA FATHINAH AFLAH', 'Perempuan', 'Bogor', '10-03-2012', 'VILA BOGOR INDAH 3'),
('1920.11.047', 'KAYYISAH MARYAM ANDANIRWAN', 'Perempuan', 'Jakarta', '13-07-2012', 'Perum Taman Griya Asri'),
('1920.11.048', 'KEENAN ABDULLAH ALKAHFI', 'Laki-laki', 'Bogor', '19-09-2012', 'Perumahan Griya Soka Bogor Raya, Blok X No. 23A. RT 004 RW 006. Kel. Sukaraja, Kec. Sukaraja.'),
('1920.11.049', 'KEN MUHAMMAD ZHAFRAN ARTHONO', 'Laki-laki', 'Jakarta', '11-04-2013', 'Kebun Raya Residence blok E no 6'),
('1920.11.051', 'KIANDRA ALENARSYAA NUGROHO', 'Laki-laki', 'Bogor', '27-10-2012', 'Griya Soka Bogor Raya Jl. Duren I Blok J12b, Sukaraja'),
('1920.11.052', 'LASHIRAH SHEZAN AULIA', 'Perempuan', 'Bogor', '29-06-2013', 'Bogor Raya Residence Blok D8 No 10, Cimahpar, Bogor'),
('1920.11.053', 'MALIK AHMAD ALBANI', 'Laki-laki', 'Bogor', '13-12-2012', 'Jl. Anyelir IV W4/6 Rt.04 Rw. 09 Perum. Taman Cimanggu'),
('1920.11.054', 'MANAL MUHAMMAD BABSEL', 'Perempuan', 'Bogor', '10-10-2012', 'Griya Nuraida, Blok E1, No 9'),
('1920.11.055', 'MARYAM AL BAKRY', 'Perempuan', 'Depok', '19-04-2012', 'Griya nuraida blok i no 4'),
('1920.11.056', 'MARYAM ANNAJAH NASUTION', 'Perempuan', 'Bogor', '28-03-2013', 'Ciluar Asri Blok B3/7 RT.02/09 Bogor Utara'),
('1920.11.057', 'MASKA ABISALI PUTRA PRATAMA', 'Laki-laki', 'Bogor', '26-01-2013', 'jl brawijaya no 7 villa indah pajajaran'),
('1920.11.058', 'MOZAYA SHABIRA', 'Perempuan', 'Jakarta', '31-10-2012', 'Perumahan taman soka jl. Soka V no. 22 Rt 006/003 kel. Tanah baru kec. Bogor utara'),
('1920.11.059', 'MUHAMMAD ARSYAD ABDILLAH', 'Laki-laki', 'Bogor', '17-02-2013', 'Puri nirwana 3 blok DD no 10'),
('1920.11.060', 'MUHAMMAD ARSYAD IMAM', 'Laki-laki', 'Jakarta', '25-08-2012', 'Komplek Mutiara Sentul Blok Q No 16 Nanggewer Cibinong'),
('1920.11.061', 'MUHAMMAD DANISH ATHAYA', 'Laki-laki', 'Bogor', '17-03-2012', 'komplek IPB 1'),
('1920.11.062', 'MUHAMMAD EMIR MAHARDIKA', 'Laki-laki', 'Jakarta', '12-06-2012', 'Bogor raya residence Blok D1 no.9'),
('1920.11.063', 'MUHAMMAD IBRAHIM HANIF', 'Laki-laki', 'Bogor', '23-04-2012', 'Jl. Sungai Kahayan no. 79, cluster Venesia'),
('1920.11.065', 'MUHAMMAD SATRIA BEKTI NOERBOLO', 'Laki-laki', 'Jakarta', '31-01-2012', 'Sdit anak shalih Jl. Tumenggung Wiradireja, Kebon Awi RT 02/06, Cimahpar, Bogor Utara, Cimahpar, Bogor Utara, Kota Bogor'),
('1920.11.066', 'MUHAMMAD ZIYADA FAZLULLAH', 'Laki-laki', 'Bogor', '15-03-2013', 'PERUM RS PMI D2 NO 1 DESA CILEBUT BARAT KEC SUKARAJA'),
('1920.11.067', 'MUSA FUAD', 'Laki-laki', 'Jakarta', '28-07-2012', 'Jl. Damai I no.14, Cipete Utara, Kebayoran Baru'),
('1920.11.068', 'MUZIANDRA JABBAR MUHAMMAD', 'Laki-laki', 'Sukabumi', '23-08-2012', 'ciomas hills residence'),
('1920.11.069', 'NAURA KHAIRUNISA TUANKOTTA', 'Perempuan', 'Bogor', '19-06-2012', 'Mutiara sentul blok R 17 kel. Nanggewer kec. Cibinong'),
('1920.11.070', 'NAYEEF RIZQI SUNGKAR', 'Laki-laki', 'Jakarta', '18-01-2013', 'cibalagung indahIV'),
('1920.11.071', 'NAYLA HUDA SUHARTONO', 'Perempuan', 'Jakarta', '12-04-2013', 'PERUMAHAN RANCAMAYA BALCON GRANDE VISTA NO. 2'),
('1920.11.072', 'NIRWANA WISNU MURTHY', 'Perempuan', 'Bogor', '27-06-2012', 'Griya Soka'),
('1920.11.073', 'NISRIN BILAL ALBAKRIE', 'Perempuan', 'Jakarta', '04-06-2012', 'Perumahan muara indah blok f no 1'),
('1920.11.074', 'OMAR ABDILBARR', 'Laki-laki', 'Bogor', '16-07-2012', 'Bumi Karadenan Permai Blok B. no.6 RT.02/RW.17 Karadenan Cibinong Bogor'),
('1920.11.075', 'PANG NANGGROE RAJA DAMAD SABY', 'Laki-laki', 'Banda aceh', '16-04-2012', 'Perumahan mutiara bogor raya blok F2 no 12 katulampa'),
('1920.11.076', 'RAFIQ SYADDAD', 'Laki-laki', 'Tangerang/jakarta', '22-09-2012', 'De botanica residence, blok E no 5 cimahpar'),
('1920.11.077', 'SHAKILA ALYA SURYADI', 'Perempuan', 'Sukabumi', '06-04-2013', 'perum taman pajajaran tahap 3,blok D4 no.9 katulampa,bogor timur'),
('1920.11.078', 'SUHAIL FIRDAUSYI', 'Laki-laki', 'Bogor', '09-07-2012', 'Jl.Sriwijaya III no 9 cluater Taman Yunani kwasan Argenia sentul city'),
('1920.11.079', 'SULTHAN RIDWAN AZIS', 'Laki-laki', 'Bogor', '02-11-2012', 'Perumahan muara indah blok b no 17 cikaret bogor selatan'),
('1920.11.080', 'SYAIMA RUMAISHA', 'Perempuan', 'Bogor', '30-11-2012', 'Jl. Sempur no 45 Bogor'),
('1920.11.081', 'TSAQIF AL HAFIDZ WAHYUDIN', 'Laki-laki', 'Tangerang', '01-04-2013', 'Cilebut Residence, Cluster Anthorium Blok E No. 8 Kel. Cilebut Barat, Kec. Sukaraja'),
('1920.11.082', 'UBAIDILLAH JAWAS', 'Laki-laki', 'Bogor', '20-04-2012', 'Perumahan Griya Soka Bogor Raya 1'),
('1920.11.083', 'UMAIR', 'Laki-laki', 'Bogor', '18-07-2012', 'KPP IPB Baranangsiang 4 Blok B-50 Tanah Baru'),
('1920.11.084', 'UMAMAH', 'Perempuan', 'Depok', '06-06-2013', 'Griya Nuraida blok D2 No 12 cimahpar'),
('1920.11.085', 'UMAR', 'Laki-laki', 'Bogor', '28-09-2012', 'Jl. Tegallega No. 6 RT. 01/01 Kel. Tegallega Kec. Bogor Tengah'),
('1920.11.086', 'UMAR ABDUL AZIZ', 'Laki-laki', 'Bogor', '02-01-2013', 'Mutiara Sentul Blok I no.11 Jalan Raya Baru Sentul 88 RT03RW10 Nanggewer  Cibinong'),
('1920.11.087', 'YANDHI HERLAMBANG', 'Laki-laki', 'Bogor', '18-01-2013', 'perumahan taman cibinong asri blok D 1 no 38 rt 03/19'),
('1920.11.088', 'ZAID OMAR', 'Laki-laki', 'Jakarta', '23-08-2012', 'Perumahan Haji, jalan jarona A2 n0 18'),
('1920.11.089', 'ZANETTA ACQUILA IZZATI', 'Perempuan', 'Bogor', '09-04-2013', 'Komplek Cimanggu Permai , Jl.Tarumanegara Blok A IV No.8 RT/RW:006/006 Kelurahan Kedung Jaya , Kecamatan Tanah Sareal'),
('1920.11.090', 'ZIYAD AHMAD FAIZ', 'Laki-laki', 'Bandung', '10-09-2012', 'Taman Yasmin Sektor 3, Jl. Anggrek Bulan 3 no. 27'),
('1920.11.091', 'ZUBAIR AL HAWAARY', 'Laki-laki', 'Bogor', '14-10-2012', 'Jl anggada 1 No 17, perumahan bumi indraprasta1 bantarjati, kecamatan bogor utara.'),
('1920.11.092', 'ZUBAIR NAWAF ASKAR', 'Laki-laki', 'Bogor', '17-06-2013', 'Jl.lolongok gg galuh no 1 rt02/13 empang'),
('1920.11.093', 'ZUFAR IBRAHIM IBADURRAHMAN', 'Laki-laki', 'Jakarta', '15-04-2013', 'Pakuan Regency Cluster Jayadewata Blok E9 No.2'),
('1920.11.094', 'AGHA ALFATHI ZAIDAN GEMPITA', 'Laki-laki', 'Jakarta', '12-12-2012', 'bukit cimanggu city Cluster charnwood blok KD 10 no 14 kelurahan kencana kecamatan tanah sareal'),
('1920.11.095', 'AURELIO FABIAN RAMADHAN', '', '', '--', ''),
('1920.11.096', 'AZKA HISYAM RAMADHAN', 'Laki-laki', 'Bogor', '07-08-2012', 'komp.BPPB blok. J no.1 rt.02/07 kel.pasir mulya kec.bogor barat 16118'),
('1920.11.097', 'HARITS', 'Laki-laki', 'Tangerang selatan', '05-01-2013', 'Ruko samping imam ahmad bin hanbal'),
('1920.11.098', 'HUMAIRA RAMZI HUSUN', 'Perempuan', 'Jakarta', '25-05-2013', 'Perumahan mutiara bogor raya Blok D2 No.8 kel. Katulampa kec Bogor Timur'),
('1920.11.099', 'IMMAROH SAHIRA AZZAHIRA PUTERI AL QADRY', 'Perempuan', 'Bogor', '09-06-2013', 'Komplek griya soka bogor raya blok-i no.19 cimahpar sukaraja'),
('1920.11.101', 'MUHAMMAD ALFATIH HENDRATNO', 'Laki-laki', 'Jakarta', '01-01-2012', 'Bogor Nirwana Residence, Harmoni 3 blok 4 no.19 Bogor'),
('1920.11.102', 'MUHAMMAD FADHIL AFFANSYAH SETIAWAN', 'Laki-laki', 'Bogor', '24-10-2012', 'Vila Bogor Indah 5 Blok CE 4 No 2 RT 04 / 07 Desa Pasir Jambu Kecamatan Sukaraja Kabupaten Bogor 16710'),
('1920.11.104', 'RAFFANDRA AQLAN LAZUARDI KYNOV', 'Laki-laki', 'Padang', '08-10-2011', 'jl skb no 3'),
('1920.11.105', 'SYAHFADANI AZALEA', 'Perempuan', 'Bogor', '30-07-2011', 'Perum Tanah Baru  Blok B 52'),
('1920.11.106', 'XAVIER RADIM SANTOSO', 'Laki-laki', 'Sukoharjo', '12-05-2013', 'Griya Cendrawasih 2 No.7, jalan Cendrawasih 2 RT.004 RW.02, Sawah Baru, Ciputat'),
('1920.11.108', 'SARAH AULIA AZ ZAHRA', '', '', '--', ''),
('1920.11.109', 'NAYLA NAURA HENDRADI', '', '', '--', '');

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` int(200) NOT NULL,
  `nama_depan` varchar(30) NOT NULL,
  `nama_belakang` varchar(30) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `nama_depan`, `nama_belakang`, `no_hp`, `email`) VALUES
(1, 'Muhammad Farras', 'Ma\'ruf', '6281287873121', 'farras@anakshalihbogor.sch.id'),
(2, 'Ferry Adnan', 'Sasmita', '6289509803563', 'ferry@anakshalihbogor.sch.id'),
(3, 'Agung', 'Laksono', '6289629415783', 'agung2018@anakshalihbogor.sch.id'),
(4, 'Henra', 'Syaputra', '6285265927676', 'henra@anakshalihbogor.sch.id'),
(5, 'Prima', 'Kurniawan', '628562341977', 'prima.abuahmad@anakshalihbogor.sch.id'),
(6, 'Hergianto', 'Mahardika', '6285882042334', 'hergianto@anakshalihbogor.sch.id'),
(7, 'Agus', 'Purwanto', '6285880975004', 'agus@anakshalihbogor.sch.id'),
(8, 'Metis', 'Gumelar', '6285879214724', 'metisgumelar@anakshalihbogor.sch.id'),
(9, 'Ricki', 'Threezardi', '6281905056225', 'ricki@anakshalihbogor.sch.id'),
(10, 'Hamdani', 'Nasution', '6288809014302', 'hamdani.abufathimah@anakshalihbogor.sch.id'),
(11, 'Selma', 'Kurniawan', '6282211720329', 'selma_k@anakshalihbogor.sch.id'),
(12, 'Waskito', 'Tim Suryo', '628889063301', 'waskito.abuyumna@anakshalihbogor.sch.id'),
(13, 'Erick', 'Firmansyah', '6287770116283', 'erick.firmansyah@anakshalihbogor.sch.id'),
(14, 'Muhammad', 'Amrullah', '6289667828077', 'm.amru@anakshalihbogor.sch.id'),
(15, 'Randy', 'Subagja', '6283808261831', 'randi@anakshalihbogor.sch.id'),
(16, 'Bagus', 'Anshori', '6282217583461', 'bagusanshori@anakshalihbogor.sch.id'),
(18, 'asd', 'asd', '62', 'a@anakshalihbogor.sch.id'),
(19, 'Finance', 'Anak Shalih Bogor', '6281287873121', 'finance@anakshalihbogor.sch.id'),
(20, 'Tri', 'Rahmawati', '6287870475711', 'tri@anakshalihbogor.sch.id'),
(21, 'Larasati', 'Indahsari', '6285810904145', 'laras@anakshalihbogor.sch.id');

-- --------------------------------------------------------

--
-- Table structure for table `bk_kar_perkembangan`
--

CREATE TABLE `bk_kar_perkembangan` (
  `id_pencatatan` int(11) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `form_id` int(11) NOT NULL,
  `inf_id` int(11) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `keterangan` text NOT NULL,
  `waktu` date NOT NULL,
  `petugas` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bk_kar_perkembangan`
--

INSERT INTO `bk_kar_perkembangan` (`id_pencatatan`, `nis`, `form_id`, `inf_id`, `kelas`, `keterangan`, `waktu`, `petugas`) VALUES
(162, '1920.11.001', 1, 0, '1B', '* Siswa merespon dengan baik pertanyaan yang diberikan.\r\n* Siswa mampu mengingat kembali materi (Apersepsi).\r\n* Siswa mengidentifikasi materi dengan kejadian yang dialami.', '2020-04-21', 1),
(163, '1920.11.012', 1, 0, '1A', 'this gne', '2020-04-22', 1),
(164, '1920.11.012', 1, 0, '1A', '* Siswa memahami instruksi yang diberikan guru.\r\n* Siswa merespon dengan baik pertanyaan yang diberikan.\r\n* Siswa mampu mengingat kembali materi (Apersepsi).', '2020-04-22', 1),
(165, '1920.11.012', 1, 1, '1A', 'anothoer soslao', '2020-04-22', 1),
(166, '1920.11.012', 1, 2, '1A', 'emosi', '2020-04-22', 1),
(167, '1920.11.012', 1, 3, '1A', 'a&amp;amp;a', '2020-04-22', 1),
(168, '1920.11.012', 1, 0, '1A', 'its must be gone', '2020-04-22', 1),
(169, '1920.11.012', 1, 3, '1A', 'a&amp;amp;a', '2020-04-22', 1),
(170, '1920.11.012', 1, 3, '1A', '!@#$%^&amp;amp;*()_+', '2020-04-22', 1),
(171, '1920.11.012', 1, 0, '1A', '* Siswa memberi contoh pengaplikasian materi dalam kehidupan sehari-hari.\r\n* Siswa memberi kesimpulan dari materi.', '2020-04-22', 1),
(172, '1920.11.012', 1, 1, '1A', '123', '2020-04-22', 1),
(173, '1920.11.012', 1, 2, '1A', '123', '2020-04-22', 1),
(174, '1920.11.012', 1, 3, '1A', '123', '2020-04-22', 1),
(175, '1920.11.012', 1, 4, '1A', '123123', '2020-04-22', 1),
(176, '1920.11.003', 1, 0, '1B', '* Siswa memahami instruksi yang diberikan guru.', '2020-04-22', 1),
(177, '1920.11.003', 1, 1, '1B', 'Sos', '2020-04-22', 1),
(178, '1920.11.003', 1, 2, '1B', 'em', '2020-04-22', 1),
(179, '1920.11.003', 1, 3, '1B', 'adab', '2020-04-22', 1),
(180, '1920.11.003', 1, 4, '1B', 'BIK', '2020-04-22', 1),
(181, '1920.11.003', 1, 0, '1B', '* wqweeqwe qweqweqwe', '2020-04-22', 1),
(182, '1920.11.003', 1, 0, '1B', 'Siswa mampu mengingat kembali materi (Apersepsi)|Siswa mengidentifikasi materi dengan kejadian yang dialami|Siswa memberi kesimpulan dari materi|Siswa menggunakan perlatan sekolah sesuai kegunaannya|Siswa meniru dengan baik contoh yang diberikan|', '2020-04-22', 1),
(183, '1920.11.001', 1, 0, '1B', 'Siswa memahami instruksi yang diberikan guru, Siswa merespon dengan baik pertanyaan yang diberikan, Siswa mampu mengingat kembali materi (Apersepsi), Siswa mengidentifikasi materi dengan kejadian yang dialami, Siswa memberi contoh pengaplikasian materi dalam kehidupan sehari-hari, Siswa memberi kesimpulan dari materi.', '2020-04-22', 1),
(184, '1920.11.001', 1, 0, '1B', 'Siswa mengidentifikasi materi dengan kejadian yang dialami, Siswa memberi kesimpulan dari materi, Siswa meniru dengan baik contoh yang diberikan, test sesuait item b.', '2020-04-22', 1),
(185, '1920.11.005', 1, 0, '1C', 'Siswa memahami instruksi yang diberikan guru, Siswa mengidentifikasi materi dengan kejadian yang dialami, Siswa memberi contoh pengaplikasian materi dalam kehidupan sehari-hari, Siswa meniru dengan baik contoh yang diberikan, Siswa mampu mengingat kembali materi (Apersepsi), Ini catatan manu.', '2020-04-22', 1),
(186, '1920.11.005', 1, 0, '1C', 'Siswa memahami instruksi yang diberikan guru, Siswa merespon dengan baik pertanyaan yang diberikan, Siswa mampu mengingat kembali materi (Apersepsi).', '2020-04-22', 1),
(187, '1920.11.023', 1, 0, '1D', 'Siswa meniru dengan baik contoh yang diberikan, Muhammad Farras Ma\'ruf.', '2020-04-24', 1),
(188, '1920.11.023', 1, 0, '1D', '.', '2020-04-24', 1),
(189, '1920.11.005', 1, 0, '1C', 'Siswa memberi contoh pengaplikasian materi dalam kehidupan sehari-hari, Siswa menggunakan perlatan sekolah sesuai kegunaannya, Siswa meniru dengan baik contoh yang diberikan, fasfsafasdaslas;dlmads inikah rasasa.', '2020-04-28', 1),
(190, '1920.11.104', 1, 0, '2B', 'Siswa menggunakan perlatan sekolah sesuai kegunaannya, Siswa memberi contoh pengaplikasian materi dalam kehidupan sehari-hari, Siswa meniru dengan baik contoh yang diberikan, test doang.', '2020-04-28', 1),
(191, '1920.11.018', 1, 0, '1D', 'Siswa memahami instruksi yang diberikan guru, Siswa memberi kesimpulan dari materi, Siswa meniru dengan baik contoh yang diberikan, Contoh catatatan manual i\'la.', '2020-04-29', 1),
(192, '1920.11.104', 1, 0, '2B', 'Siswa merespon dengan baik pertanyaan yang diberikan, Siswa memahami instruksi yang diberikan guru, Siswa mampu mengingat kembali materi (Apersepsi), Siswa memberi contoh pengaplikasian materi dalam kehidupan sehari-hari, ini catatan sendiri.', '2020-05-08', 1),
(193, '1920.11.012', 1, 0, '1A', 'Siswa menggunakan perlatan sekolah sesuai kegunaannya, Siswa meniru dengan baik contoh yang diberikan, ini seharusnya ada.', '2020-06-17', 1),
(194, '1920.11.012', 1, 0, '1A', 'ini ada dan ini tidak ada.', '2020-06-17', 1),
(195, '1920.11.049', 1, 0, '1B', 'Siswa merespon dengan baik pertanyaan yang diberikan, Siswa mampu mengingat kembali materi (Apersepsi), Siswa mengidentifikasi materi dengan kejadian yang dialami, Siswa meniru dengan baik contoh yang diberikan, haloo ini ditulis sendiri\'asdasd\'asd\'asd\'\'.', '2020-06-29', 1),
(196, '1920.11.049', 1, 0, '1B', '&amp;amp;&amp;amp;&amp;amp;.', '2020-06-29', 1),
(197, '1920.11.049', 1, 0, '1B', '!@#$%^&amp;amp;*()_+?,./:&amp;quot;;\'{}[], \\~`.', '2020-06-29', 1),
(198, '1920.11.049', 1, 0, '1B', 'Siswa memberi contoh pengaplikasian materi dalam kehidupan sehari-hari.', '2020-06-29', 1),
(199, '1920.11.001', 1, 0, '1B', 'Siswa memberikan komentar terhadap materi dengan sesuai.', '2020-06-29', 1),
(200, '1920.11.001', 1, 1, '1B', 'Siswa menjaga kebersihan kelasSiswa menjaga kebersihan gigi dan mulut, Siswa menjaga kebersihan tangan dengan mencuci tangan, Siswa membuang sampah pada tempatnya, halo saya dari sosial.', '2020-06-29', 1),
(201, '1920.11.001', 1, 1, '1B', 'Siswa menyelesaikan tugas yang diberik.', '2020-06-29', 1),
(202, '1920.11.001', 1, 1, '1B', 'Siswa mengakui kesalahnan dan meminta maaf.', '2020-06-29', 1),
(203, '1920.11.001', 1, 1, '1B', 'Siswa menyelesaikan tugas yang diberik.', '2020-06-29', 1),
(204, '1920.11.001', 1, 1, '1B', 'Siswa menyelesaikan tugas yang diberik.', '2020-06-29', 1),
(205, '1920.11.001', 1, 1, '1B', 'Siswa menyelesaikan tugas yang diberik.', '2020-06-29', 1),
(206, '1920.11.001', 1, 1, '1B', 'Siswa menyelesaikan tugas yang diberik.', '2020-06-29', 1),
(207, '1920.11.001', 1, 0, '1B', 'Siswa memberikan komentar terhadap materi dengan sesuai.', '2020-06-29', 1),
(208, '1920.11.001', 1, 1, '1B', 'Siswa menyelesaikan tugas yang diberikan.', '2020-06-29', 1),
(209, '1920.11.001', 1, 1, '1B', 'Siswa menyelesaikan tugas yang diberik.', '2020-06-29', 1),
(210, '1920.11.001', 1, 1, '1B', 'Siswa menyelesaikan tugas yang diberik.', '2020-06-29', 1),
(211, '1920.11.001', 1, 1, '1B', 'Siswa menyelesaikan tugas yang diberik.', '2020-06-29', 1),
(212, '1920.11.001', 1, 1, '1B', 'Siswa menyelesaikan tugas yang diberikan.', '2020-06-29', 1),
(213, '1920.11.001', 1, 2, '1B', 'Siswa mudah marah seperti (berteriak, melempar barang), Siswa menghindari konflik fisik dengan siswa lain.', '2020-06-29', 1),
(214, '1920.11.001', 1, 0, '1B', 'Siswa mengamalkan adab berbicara pada orang lain|Siswa menyimak tanpa memotong penjelasan guru|Siswa mengamalkan adab belajar di kelas||', '2020-06-29', 1),
(215, '1920.11.001', 1, 0, '1B', 'Siswa mengamalkan adab berbicara pada orang lain|Siswa menyimak tanpa memotong penjelasan guru|Siswa mengamalkan adab belajar di kelas||', '2020-06-29', 1),
(216, '1920.11.001', 1, 0, '1B', 'Siswa mengamalkan adab belajar di kelas|Siswa mengamalkan adab berbicara pada orang lain|', '2020-06-29', 1),
(217, '1920.11.001', 1, 2, '1B', 'Siswa menghindari konflik fisik dengan siswa lain.', '2020-06-29', 1),
(218, '1920.11.001', 1, 2, '1B', 'Siswa mudah marah seperti (berteriak, melempar barang), Siswa menunjukkan empatinya, Siswa menyelesaikan masalahnya sendiri.', '2020-06-29', 1),
(219, '1920.11.001', 1, 3, '1B', 'Siswa mengamalkan adab belajar di kelas.', '2020-06-29', 1),
(220, '1920.11.001', 1, 3, '1B', 'ini saya tulis snendnir.', '2020-06-29', 1),
(221, '1920.11.001', 1, 3, '1B', 'Siswa menyimak tanpa memotong penjelasan guru, Siswa mengamalkan adab berbicara pada orang lain, yap ini saya tulis sendiri.', '2020-06-29', 1),
(222, '1920.11.001', 1, 4, '1B', 'Siswa menunjukkan adab berbicara, Siswa menjelaskan sesuatu dengan kalimat yang sesuai, Siswa memberikan tanggapan yang sesuai  kepada orang lain, Ini bahasan yang di edit.', '2020-06-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `perpus_absen`
--

CREATE TABLE `perpus_absen` (
  `id_kehadiran` int(11) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `waktu` date NOT NULL DEFAULT current_timestamp(),
  `jam` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perpus_absen`
--

INSERT INTO `perpus_absen` (`id_kehadiran`, `nis`, `waktu`, `jam`) VALUES
(15, '1920.11.006', '2020-03-19', '2020-03-19 16:11:25'),
(16, '1920.11.012', '2020-03-19', '2020-03-19 16:11:30'),
(17, '1920.11.043', '2020-03-19', '2020-03-19 16:11:33'),
(32, '1920.11.001', '2020-06-06', '2020-06-06 17:19:00'),
(33, '1920.11.001', '2020-06-06', '2020-06-06 21:43:56'),
(34, '1920.11.001', '2020-06-06', '2020-06-06 21:44:28'),
(35, '1920.11.001', '2020-06-08', '2020-06-08 00:07:37');

-- --------------------------------------------------------

--
-- Table structure for table `ppdb_nilai_wawancara`
--

CREATE TABLE `ppdb_nilai_wawancara` (
  `no_peserta` varchar(50) NOT NULL,
  `nilai_satu` int(3) NOT NULL,
  `nilai_dua` int(3) NOT NULL,
  `nilai_tiga` int(3) NOT NULL,
  `nilai_empat` int(3) NOT NULL,
  `nilai_lima` int(3) NOT NULL,
  `nilai_enam` int(3) NOT NULL,
  `nilai_tujuh` int(3) NOT NULL,
  `nilai_delapan` int(3) NOT NULL,
  `nilai_sembilan` int(3) NOT NULL,
  `nilai_sepuluh` int(3) NOT NULL,
  `nilai_sebelas` int(3) NOT NULL,
  `pewawancara` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ppdb_nilai_wawancara`
--

INSERT INTO `ppdb_nilai_wawancara` (`no_peserta`, `nilai_satu`, `nilai_dua`, `nilai_tiga`, `nilai_empat`, `nilai_lima`, `nilai_enam`, `nilai_tujuh`, `nilai_delapan`, `nilai_sembilan`, `nilai_sepuluh`, `nilai_sebelas`, `pewawancara`, `waktu`) VALUES
('01-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('02-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('03-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('04-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('05-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('06-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('07-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('08-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('09-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('1-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('10-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('10-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('11-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('11-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('12-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('12-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('13-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('13-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('14-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('14-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('15-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('15-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('16-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('16-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('17-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('17-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('18-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('18-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('19-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('19-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('2-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('20-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('20-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('21-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('21-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('22-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('22-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('23-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('23-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('24-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('24-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('25-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('25-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('26-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('26-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('27-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('27-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('28-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('28-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('29-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('29-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('3-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('30-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('30-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('31-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('31-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('32-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('32-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('33-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('33-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('34-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('34-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('35-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('35-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('36-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('36-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('37-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('37-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('38-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('38-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('39-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('39-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('4-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('40-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('40-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('41-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('41-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('42-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('42-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('43-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('43-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('44-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('44-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('45-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('45-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('46-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('46-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('47-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('47-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('48-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('48-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('49-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('49-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('5-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('50-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('50-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('51-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('51-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('52-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('52-P- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('6-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('7-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('8-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00'),
('9-L- PPDB-2020-2021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ppdb_peserta`
--

CREATE TABLE `ppdb_peserta` (
  `tp` varchar(10) NOT NULL,
  `no_peserta` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `nama_panjang` varchar(90) NOT NULL,
  `nama_panggilan` varchar(30) NOT NULL,
  `ishadir` varchar(20) NOT NULL,
  `hadir` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `wawancara` varchar(20) NOT NULL,
  `online_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ppdb_peserta`
--

INSERT INTO `ppdb_peserta` (`tp`, `no_peserta`, `jenis_kelamin`, `nama_panjang`, `nama_panggilan`, `ishadir`, `hadir`, `wawancara`, `online_time`) VALUES
('2020-2021', '01-P- PPDB-2020-2021', 'Akhwat', 'ASSYIFATU HAURA SETIA DHARMA', 'Assyifa', 'ok', '2020-02-15 03:39:43', '', 1581737983),
('2020-2021', '02-P- PPDB-2020-2021', 'Akhwat', 'ALMAIRA KHANZA RAMADHANI', 'Alma', 'ok', '2020-02-28 07:44:36', '', 1582875876),
('2020-2021', '03-P- PPDB-2020-2021', 'Akhwat', 'KHODIJAH AZ ZAHRA', 'Khodijah', 'ok', '2020-02-28 09:14:34', '', 1582881274),
('2020-2021', '04-P- PPDB-2020-2021', 'Akhwat', 'SABRINA PUTRI KIANDRA', 'Sabrina', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '05-P- PPDB-2020-2021', 'Akhwat', 'AISYA LINTANG ATMARIANI', 'Aisya', 'ok', '2020-04-21 13:44:48', '', 1587476688),
('2020-2021', '06-P- PPDB-2020-2021', 'Akhwat', 'HUSNA AQILAH PERWIRA SAKTI', 'Husna', 'ok', '2020-02-28 03:56:38', '', 0),
('2020-2021', '07-P- PPDB-2020-2021', 'Akhwat', 'HAFIZHAH HUURUN INUN', 'Hinun', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '08-P- PPDB-2020-2021', 'Akhwat', 'SHAFIIYAH ALMAIRA ROFIK', 'Shaafiyyah', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '09-P- PPDB-2020-2021', 'Akhwat', 'SAFIYA INSHIRAH AJI', 'Fia', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '1-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD RASYA ATHAYA', 'Rasya', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '10-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD ADZMAR FAUZI', 'Adzmar', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '10-P- PPDB-2020-2021', 'Akhwat', 'NUSAIBAH WAFEEQADHITYA', 'Nusaibah', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '11-L- PPDB-2020-2021', 'Ikhwan', 'DANISH AYMAN SANTOSA', 'Danish', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '11-P- PPDB-2020-2021', 'Akhwat', 'ASKANA SYAFIYYAH SAKHI', 'Sakhi', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '12-L- PPDB-2020-2021', 'Ikhwan', 'AUFA AZIZAN ANWAR', 'Aufa', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '12-P- PPDB-2020-2021', 'Akhwat', 'HUURINSARI SUSANTI BASUKI', 'Huurin', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '13-L- PPDB-2020-2021', 'Ikhwan', 'NAUFAL PRADIPTA MAULANA', 'Naufal', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '13-P- PPDB-2020-2021', 'Akhwat', 'HAFSHAH ADINA MAHRIN', 'Hafshah', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '14-L- PPDB-2020-2021', 'Ikhwan', 'ABDURRAHMAN HARITS FAUZAN', 'Abdurrahman', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '14-P- PPDB-2020-2021', 'Akhwat', 'NABILA KHANSA HUMAIRA', 'Nabila', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '15-L- PPDB-2020-2021', 'Ikhwan', 'ABDULLAH YAASIR', 'Abdullah', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '15-P- PPDB-2020-2021', 'Akhwat', 'RUBBYA MAZEA SANTOSO', 'Rubbya', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '16-L- PPDB-2020-2021', 'Ikhwan', 'ATHALLAH PRATAMA HARTANTO', 'Athallah', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '16-P- PPDB-2020-2021', 'Akhwat', 'SHABIRA HANIFAH PERMADI', 'Shabira', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '17-L- PPDB-2020-2021', 'Ikhwan', 'MELVIN ZAFRAN DINATA', 'Zafran', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '17-P- PPDB-2020-2021', 'Akhwat', 'SABIA NAUREEN HERMAWAN', 'Sabia', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '18-L- PPDB-2020-2021', 'Ikhwan', 'ABDULLAH AMMAR TASLIM', 'Taslim', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '18-P- PPDB-2020-2021', 'Akhwat', 'NAZMI HERSA NURSALAMI', 'Ami', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '19-L- PPDB-2020-2021', 'Ikhwan', 'FAQIH GHALIBI JILLAUZ', 'Faqih', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '19-P- PPDB-2020-2021', 'Akhwat', 'GHANIYYA SAFIYA AHMAD', 'Ghaniyya', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '2-L- PPDB-2020-2021', 'Ikhwan', 'YODHA ARGANTA NABIL', 'Yodha', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '20-L- PPDB-2020-2021', 'Ikhwan', 'GHAISAN ZAHWAN AL ZAHRAWI', 'Zahwan', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '20-P- PPDB-2020-2021', 'Akhwat', 'APRILIANA ANUGERAH PANCA LUDYSKA', 'Liana', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '21-L- PPDB-2020-2021', 'Ikhwan', 'KHAFID YUSUF BAHTIAR', 'Khafid', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '21-P- PPDB-2020-2021', 'Akhwat', 'JUWAYRIYYAH', 'Juwauriyyah', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '22-L- PPDB-2020-2021', 'Ikhwan', 'IBRAHIM', 'Ibrahim', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '22-P- PPDB-2020-2021', 'Akhwat', 'QEEFA ADEEBA DANESHA', 'Qieefa', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '23-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD AHSAN AL FATIH', 'Ahsan', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '23-P- PPDB-2020-2021', 'Akhwat', 'RANA SYAFIQAH ALIFA', 'Rana', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '24-L- PPDB-2020-2021', 'Ikhwan', 'BHISMA NARENDRA HARDIENATA', 'Bhisma', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '24-P- PPDB-2020-2021', 'Akhwat', 'RAHMA MAHIRA KAHIRUNISSA', 'Mahira', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '25-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD TYO ALFATIH', 'Tyo', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '25-P- PPDB-2020-2021', 'Akhwat', 'HUMAIRA AL MUTTABI\'AH LISUNNAH', 'Humaira', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '26-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD HANIF AL FAUZAN', 'Hanif', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '26-P- PPDB-2020-2021', 'Akhwat', 'AISHA MAJDINA HIKMAT', 'Aisha', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '27-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD ZUBAIR', 'Zubair', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '27-P- PPDB-2020-2021', 'Akhwat', 'SYAFIQAH ATMA NUGRAHA', 'Yaya', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '28-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD AFIF', 'Afif', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '28-P- PPDB-2020-2021', 'Akhwat', 'FARIHA BASAMA', 'Eneng Geulis', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '29-L- PPDB-2020-2021', 'Ikhwan', 'ABDULLAH AL BASSAM', 'Bassam', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '29-P- PPDB-2020-2021', 'Akhwat', 'AYSHA CALISTA HADI PUTRI', 'Cha - Cha', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '3-L- PPDB-2020-2021', 'Ikhwan', 'HUDZAIFAH', 'Uje', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '30-L- PPDB-2020-2021', 'Ikhwan', 'AHMAD MUFIID AL AHZA', 'Ahza', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '30-P- PPDB-2020-2021', 'Akhwat', 'INARA SHAKEELA ARIAN ATMAJI', 'Inara', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '31-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD SAKHY', 'Sakhy', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '31-P- PPDB-2020-2021', 'Akhwat', 'AQILA SHAFRINA PUTRI', 'Aqila', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '32-L- PPDB-2020-2021', 'Ikhwan', 'ACHMAD TARMIDZIE', 'Athar', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '32-P- PPDB-2020-2021', 'Akhwat', 'ASYSYIFA SUHAILAH HIDAYAT', 'Syifa', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '33-L- PPDB-2020-2021', 'Ikhwan', 'AQIL ALIFIANDRA LAKSONO', 'Aqil', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '33-P- PPDB-2020-2021', 'Akhwat', 'NAIFA ALYA ZAHIDA', 'Naifa', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '34-L- PPDB-2020-2021', 'Ikhwan', 'IZZADEEN AHMADSAPUTRA AMIR', 'Zie', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '34-P- PPDB-2020-2021', 'Akhwat', 'KALILA RIFDA ZIVANA ADIAKSO', 'Kalila', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '35-L- PPDB-2020-2021', 'Ikhwan', 'ABDUL HAFIZH', 'Hafizh', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '35-P- PPDB-2020-2021', 'Akhwat', 'MIKAYLA SHAFIYAH ANINDYA', 'Mikayla', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '36-L- PPDB-2020-2021', 'Ikhwan', 'AZZAM ZALDIAR HASGARA', 'Azzam', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '36-P- PPDB-2020-2021', 'Akhwat', 'SARAH ALIESYA RAKHMAN', 'Sarah', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '37-L- PPDB-2020-2021', 'Ikhwan', 'RADITYA PUTRA D DARWIS', 'Putra', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '37-P- PPDB-2020-2021', 'Akhwat', 'FATIMA DIVA HUMAIRA', 'Diva', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '38-L- PPDB-2020-2021', 'Ikhwan', 'UNAIS', 'Unais', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '38-P- PPDB-2020-2021', 'Akhwat', 'NAYLA SHAFANA IRVAN', 'Shafa', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '39-L- PPDB-2020-2021', 'Ikhwan', 'ACHMAD FIRAS BUCHORI', 'Firas', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '39-P- PPDB-2020-2021', 'Akhwat', 'MAKHAYLA SABRINA ADDAMY', 'Kekey', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '4-L- PPDB-2020-2021', 'Ikhwan', 'ROCKY ABDUL FATHIR', 'Abang', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '40-L- PPDB-2020-2021', 'Ikhwan', 'ILYAS DZAKI LANTIKA', 'Ilyas', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '40-P- PPDB-2020-2021', 'Akhwat', 'MARSHA HANIFIA AZZAHRA', 'Marsha', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '41-L- PPDB-2020-2021', 'Ikhwan', 'HAIDAR ZULFI ASKAR', 'Haidar', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '41-P- PPDB-2020-2021', 'Akhwat', 'KHANSA FATIHA KHAIRIN', 'Khansa', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '42-L- PPDB-2020-2021', 'Ikhwan', 'MALIK IBNU RAMADHAN', 'Ibnu', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '42-P- PPDB-2020-2021', 'Akhwat', 'JIHAN KHAYLA NALIKA FIRMANSYAH', 'Kayla', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '43-L- PPDB-2020-2021', 'Ikhwan', 'FATHIR ALGHIFARI WIDIANTAMA', 'Fathir', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '43-P- PPDB-2020-2021', 'Akhwat', 'DELISHA AATHIFAH', 'Delisha', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '44-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD MAULAANA SUGARA', 'Maulaana', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '44-P- PPDB-2020-2021', 'Akhwat', 'HANIFAH AULIYA', 'Hani', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '45-L- PPDB-2020-2021', 'Ikhwan', 'SALADYNE QUTHBIE IBRAHIM', 'Quthbie', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '45-P- PPDB-2020-2021', 'Akhwat', 'KAMILA HUSNA INAROH', 'Husna', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '46-L- PPDB-2020-2021', 'Ikhwan', 'ABYAN ZEROUN ANUGRAH', 'Abyan', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '46-P- PPDB-2020-2021', 'Akhwat', 'AISYAH SALMA ASY SYAHIDA', 'Aisyah', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '47-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD AL FATIH', 'Fatih', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '47-P- PPDB-2020-2021', 'Akhwat', 'SAFIRA ANINDYA ANDRIANI', 'Anin', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '48-L- PPDB-2020-2021', 'Ikhwan', 'ABIDZAR SYARIF BAHANAN', 'Abidzar', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '48-P- PPDB-2020-2021', 'Akhwat', 'FARRAS ASNAFAKHIRAH SALMA', 'Farras', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '49-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD RASYAD KHAIRUL ANDRIAN', 'Rasyad', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '49-P- PPDB-2020-2021', 'Akhwat', 'RAIHANAH', 'Raihanah', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '5-L- PPDB-2020-2021', 'Ikhwan', 'ABDULLAH AKHTAR YUSUF', 'Akhtar', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '50-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD RIFQY ADZAQY', 'Rifqy', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '50-P- PPDB-2020-2021', 'Akhwat', 'MYIESHA NAFEEZA WIBOWO', 'Ica', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '51-L- PPDB-2020-2021', 'Ikhwan', 'ZAKIE ALTAMIS WICAKSANA', 'Zakie', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '51-P- PPDB-2020-2021', 'Akhwat', 'THALITA AZALEA', 'Thalita', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '52-L- PPDB-2020-2021', 'Ikhwan', 'MUHAMMAD ALVARO CALIEF', 'Alvaro', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '52-P- PPDB-2020-2021', 'Akhwat', 'LUQYANA NURUL AZZAHRA', 'Nurul', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '6-L- PPDB-2020-2021', 'Ikhwan', 'AZAM ARI HAKHI', 'Azam', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '7-L- PPDB-2020-2021', 'Ikhwan', 'RAFID ALHADI ANABIB', 'Rafid', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '8-L- PPDB-2020-2021', 'Ikhwan', 'ZENITH FERDINAND', 'Zenith', '', '0000-00-00 00:00:00', '', 0),
('2020-2021', '9-L- PPDB-2020-2021', 'Ikhwan', 'KHALIEF ABDURRASHEED AT THORIQ', 'Toriq', '', '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ppdb_text_wawancara`
--

CREATE TABLE `ppdb_text_wawancara` (
  `no_peserta` varchar(50) NOT NULL,
  `nilai_satu` text NOT NULL,
  `nilai_dua` text NOT NULL,
  `nilai_tiga` text NOT NULL,
  `nilai_empat` text NOT NULL,
  `nilai_lima` text NOT NULL,
  `nilai_enam` text NOT NULL,
  `nilai_tujuh` text NOT NULL,
  `nilai_delapan` text NOT NULL,
  `nilai_sembilan` text NOT NULL,
  `nilai_sepuluh` text NOT NULL,
  `nilai_sebelas` text NOT NULL,
  `pewawancara` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ppdb_text_wawancara`
--

INSERT INTO `ppdb_text_wawancara` (`no_peserta`, `nilai_satu`, `nilai_dua`, `nilai_tiga`, `nilai_empat`, `nilai_lima`, `nilai_enam`, `nilai_tujuh`, `nilai_delapan`, `nilai_sembilan`, `nilai_sepuluh`, `nilai_sebelas`, `pewawancara`, `waktu`) VALUES
('01-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('02-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('03-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('04-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('05-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('06-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('07-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('08-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('09-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('1-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('10-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('10-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('11-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('11-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('12-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('12-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('13-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('13-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('14-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('14-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('15-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('15-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('16-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('16-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('17-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('17-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('18-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('18-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('19-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('19-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('2-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('20-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('20-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('21-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('21-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('22-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('22-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('23-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('23-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('24-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('24-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('25-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('25-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('26-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('26-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('27-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('27-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('28-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('28-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('29-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('29-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('3-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('30-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('30-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('31-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('31-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('32-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('32-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('33-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('33-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('34-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('34-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('35-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('35-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('36-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('36-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('37-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('37-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('38-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('38-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('39-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('39-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('4-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('40-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('40-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('41-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('41-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('42-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('42-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('43-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('43-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('44-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('44-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('45-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('45-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('46-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('46-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('47-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('47-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('48-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('48-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('49-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('49-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('5-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('50-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('50-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('51-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('51-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('52-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('52-P- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('6-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('7-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('8-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00'),
('9-L- PPDB-2020-2021', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `deskripsi` varchar(20) NOT NULL,
  `path` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`deskripsi`, `path`) VALUES
('Akses Tugas', 'tugas/akses_tugas'),
('Catat Rekam Prilaku ', 'tugas/bk/'),
('pemanggil peserta', 'tugas/ppdb/caller/'),
('Perpustakaan', 'tugas/perpustakaan'),
('registrasi ppdb', 'tugas/ppdb/registrasi/'),
('uks', 'tugas/uks'),
('wawancara ppdb', 'tugas/ppdb/wawancara/');

-- --------------------------------------------------------

--
-- Table structure for table `uks_goldar`
--

CREATE TABLE `uks_goldar` (
  `nis` varchar(30) NOT NULL,
  `goldar` varchar(2) NOT NULL,
  `waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uks_goldar`
--

INSERT INTO `uks_goldar` (`nis`, `goldar`, `waktu`) VALUES
('1920.11.001', 'A', 0),
('1920.11.002', 'B', 0),
('1920.11.003', 'O', 0),
('1920.11.004', 'O', 0),
('1920.11.005', 'A', 0),
('1920.11.006', 'B', 0),
('1920.11.007', 'B', 0),
('1920.11.008', 'B', 0),
('1920.11.009', 'B', 0),
('1920.11.010', 'A', 0),
('1920.11.011', 'A', 0),
('1920.11.012', 'B', 0),
('1920.11.013', 'O', 0),
('1920.11.014', 'B', 0),
('1920.11.015', 'A', 0),
('1920.11.016', 'B', 0),
('1920.11.017', 'O', 0),
('1920.11.018', 'B', 0),
('1920.11.019', 'B', 0),
('1920.11.020', 'B', 0),
('1920.11.021', 'B', 0),
('1920.11.022', 'B', 0),
('1920.11.023', 'A', 0),
('1920.11.024', 'O', 0),
('1920.11.025', 'O', 0),
('1920.11.026', 'A', 0),
('1920.11.027', 'B', 0),
('1920.11.028', 'O', 0),
('1920.11.029', 'B', 0),
('1920.11.030', 'B', 0),
('1920.11.031', 'B', 0),
('1920.11.032', 'O', 0),
('1920.11.033', 'O', 0),
('1920.11.034', 'B', 0),
('1920.11.035', 'O', 0),
('1920.11.036', 'O', 0),
('1920.11.037', 'B', 0),
('1920.11.038', 'O', 0),
('1920.11.039', 'O', 0),
('1920.11.040', 'B', 0),
('1920.11.041', 'O', 0),
('1920.11.043', 'O', 0),
('1920.11.044', 'A', 0),
('1920.11.045', 'B', 0),
('1920.11.046', 'AB', 0),
('1920.11.047', 'A', 0),
('1920.11.048', 'O', 0),
('1920.11.049', 'O', 0),
('1920.11.051', 'B', 0),
('1920.11.052', 'A', 0),
('1920.11.053', 'B', 0),
('1920.11.054', 'O', 0),
('1920.11.055', 'B', 0),
('1920.11.056', 'B', 0),
('1920.11.057', 'AB', 0),
('1920.11.058', 'A', 0),
('1920.11.059', 'AB', 0),
('1920.11.060', 'A', 0),
('1920.11.061', 'B', 0),
('1920.11.062', 'O', 0),
('1920.11.063', 'A', 0),
('1920.11.065', 'O', 0),
('1920.11.066', 'O', 0),
('1920.11.067', 'O', 0),
('1920.11.068', 'O', 0),
('1920.11.069', 'O', 0),
('1920.11.070', 'O', 0),
('1920.11.071', 'B', 0),
('1920.11.072', 'B', 0),
('1920.11.073', 'O', 0),
('1920.11.074', 'A', 0),
('1920.11.075', 'A', 0),
('1920.11.076', 'O', 0),
('1920.11.077', 'A', 0),
('1920.11.078', 'O', 0),
('1920.11.079', 'O', 0),
('1920.11.080', 'B', 0),
('1920.11.081', 'A', 0),
('1920.11.082', 'AB', 0),
('1920.11.083', 'O', 0),
('1920.11.084', 'B', 0),
('1920.11.085', 'O', 0),
('1920.11.086', 'O', 0),
('1920.11.087', 'B', 0),
('1920.11.088', 'O', 0),
('1920.11.089', 'O', 0),
('1920.11.090', 'A', 0),
('1920.11.091', 'B', 0),
('1920.11.092', 'O', 0),
('1920.11.093', 'A', 0),
('1920.11.094', 'A', 0),
('1920.11.095', '', 0),
('1920.11.096', 'O', 0),
('1920.11.097', 'B', 0),
('1920.11.098', 'O', 0),
('1920.11.099', 'O', 0),
('1920.11.101', 'O', 0),
('1920.11.102', 'A', 0),
('1920.11.104', 'A', 0),
('1920.11.105', 'B', 0),
('1920.11.106', 'B', 0),
('1920.11.108', '', 0),
('1920.11.109', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `uks_his_berat_badan`
--

CREATE TABLE `uks_his_berat_badan` (
  `no` int(11) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uks_his_berat_badan`
--

INSERT INTO `uks_his_berat_badan` (`no`, `nis`, `berat_badan`, `waktu`) VALUES
(1, '1920.11.001', 28, '2018-12-31'),
(2, '1920.11.002', 14, '2018-12-31'),
(3, '1920.11.003', 19, '2018-12-31'),
(4, '1920.11.004', 19, '2018-12-31'),
(5, '1920.11.005', 22, '2018-12-31'),
(6, '1920.11.006', 20, '2018-12-31'),
(7, '1920.11.007', 20, '2018-12-31'),
(8, '1920.11.008', 16, '2018-12-31'),
(9, '1920.11.009', 23, '2018-12-31'),
(10, '1920.11.010', 17, '2018-12-31'),
(11, '1920.11.011', 17, '2018-12-31'),
(12, '1920.11.012', 19, '2018-12-31'),
(13, '1920.11.013', 16, '2018-12-31'),
(14, '1920.11.014', 14, '2018-12-31'),
(15, '1920.11.015', 23, '2018-12-31'),
(16, '1920.11.016', 18, '2018-12-31'),
(17, '1920.11.017', 21, '2018-12-31'),
(18, '1920.11.018', 21, '2018-12-31'),
(19, '1920.11.019', 18, '2018-12-31'),
(20, '1920.11.020', 19, '2018-12-31'),
(21, '1920.11.021', 16, '2018-12-31'),
(22, '1920.11.022', 21, '2018-12-31'),
(23, '1920.11.023', 26, '2018-12-31'),
(24, '1920.11.024', 24, '2018-12-31'),
(25, '1920.11.025', 19, '2018-12-31'),
(26, '1920.11.026', 17, '2018-12-31'),
(27, '1920.11.027', 16, '2018-12-31'),
(28, '1920.11.028', 18, '2018-12-31'),
(29, '1920.11.029', 17, '2018-12-31'),
(30, '1920.11.030', 16, '2018-12-31'),
(31, '1920.11.031', 19, '2018-12-31'),
(32, '1920.11.032', 17, '2018-12-31'),
(33, '1920.11.033', 25, '2018-12-31'),
(34, '1920.11.034', 13, '2018-12-31'),
(35, '1920.11.035', 20, '2018-12-31'),
(36, '1920.11.036', 18, '2018-12-31'),
(37, '1920.11.037', 20, '2018-12-31'),
(38, '1920.11.038', 23, '2018-12-31'),
(39, '1920.11.039', 40, '2018-12-31'),
(40, '1920.11.040', 20, '2018-12-31'),
(41, '1920.11.041', 22, '2018-12-31'),
(42, '1920.11.043', 18, '2018-12-31'),
(43, '1920.11.044', 17, '2018-12-31'),
(44, '1920.11.045', 17, '2018-12-31'),
(45, '1920.11.046', 25, '2018-12-31'),
(46, '1920.11.047', 22, '2018-12-31'),
(47, '1920.11.048', 20, '2018-12-31'),
(48, '1920.11.049', 20, '2018-12-31'),
(49, '1920.11.051', 17, '2018-12-31'),
(50, '1920.11.052', 14, '2018-12-31'),
(51, '1920.11.053', 17, '2018-12-31'),
(52, '1920.11.054', 21, '2018-12-31'),
(53, '1920.11.055', 19, '2018-12-31'),
(54, '1920.11.056', 26, '2018-12-31'),
(55, '1920.11.057', 18, '2018-12-31'),
(56, '1920.11.058', 17, '2018-12-31'),
(57, '1920.11.059', 21, '2018-12-31'),
(58, '1920.11.060', 18, '2018-12-31'),
(59, '1920.11.061', 25, '2018-12-31'),
(60, '1920.11.062', 22, '2018-12-31'),
(61, '1920.11.063', 23, '2018-12-31'),
(62, '1920.11.065', 27, '2018-12-31'),
(63, '1920.11.066', 21, '2018-12-31'),
(64, '1920.11.067', 19, '2018-12-31'),
(65, '1920.11.068', 17, '2018-12-31'),
(66, '1920.11.069', 15, '2018-12-31'),
(67, '1920.11.070', 17, '2018-12-31'),
(68, '1920.11.071', 16, '2018-12-31'),
(69, '1920.11.072', 17, '2018-12-31'),
(70, '1920.11.073', 20, '2018-12-31'),
(71, '1920.11.074', 23, '2018-12-31'),
(72, '1920.11.075', 20, '2018-12-31'),
(73, '1920.11.076', 23, '2018-12-31'),
(74, '1920.11.077', 17, '2018-12-31'),
(75, '1920.11.078', 22, '2018-12-31'),
(76, '1920.11.079', 25, '2018-12-31'),
(77, '1920.11.080', 16, '2018-12-31'),
(78, '1920.11.081', 26, '2018-12-31'),
(79, '1920.11.082', 19, '2018-12-31'),
(80, '1920.11.083', 17, '2018-12-31'),
(81, '1920.11.084', 20, '2018-12-31'),
(82, '1920.11.085', 22, '2018-12-31'),
(83, '1920.11.086', 18, '2018-12-31'),
(84, '1920.11.087', 19, '2018-12-31'),
(85, '1920.11.088', 20, '2018-12-31'),
(86, '1920.11.089', 14, '2018-12-31'),
(87, '1920.11.090', 24, '2018-12-31'),
(88, '1920.11.091', 19, '2018-12-31'),
(89, '1920.11.092', 19, '2018-12-31'),
(90, '1920.11.093', 48, '2018-12-31'),
(91, '1920.11.094', 23, '2018-12-31'),
(92, '1920.11.095', 0, '2018-12-31'),
(93, '1920.11.096', 20, '2018-12-31'),
(94, '1920.11.097', 14, '2018-12-31'),
(95, '1920.11.098', 20, '2018-12-31'),
(96, '1920.11.099', 18, '2018-12-31'),
(97, '1920.11.101', 35, '2018-12-31'),
(98, '1920.11.102', 25, '2018-12-31'),
(99, '1920.11.104', 25, '2018-12-31'),
(100, '1920.11.105', 26, '2018-12-31'),
(101, '1920.11.106', 18, '2018-12-31'),
(102, '1920.11.108', 0, '2018-12-31'),
(103, '1920.11.109', 0, '2018-12-31'),
(104, '1920.11.070', 78, '2020-02-12'),
(105, '1920.11.109', 45, '2020-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `uks_his_pemeriksaan`
--

CREATE TABLE `uks_his_pemeriksaan` (
  `id_pemeriksaan` int(11) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `keluhan` char(200) NOT NULL,
  `data_objek` char(200) NOT NULL,
  `diagnosa` char(200) NOT NULL,
  `tindakan` char(200) NOT NULL,
  `keterangan` char(200) NOT NULL,
  `waktu` date NOT NULL,
  `petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uks_his_pemeriksaan`
--

INSERT INTO `uks_his_pemeriksaan` (`id_pemeriksaan`, `nis`, `keluhan`, `data_objek`, `diagnosa`, `tindakan`, `keterangan`, `waktu`, `petugas`) VALUES
(2, '1920.11.012', '123', '123', '123', '123', '123', '2020-06-16', 19),
(13, '1920.11.014', 'Kesakitan', 'Tidak ada', 'Tetanus', 'Minum obat', 'Ketusuk tusuk sate', '2020-02-09', 1),
(15, '1920.11.109', 'Apa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja', 'Apa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja', 'Apa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja', 'Apa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja', 'Apa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja boleh balsdajdja;lj;lkjApa saja', '2020-02-18', 1),
(22, '1920.11.108', 'mimisan dan pusing', 'keluar darah dari lubang hidung kanan', 'epitaksis', 'penatalaksanaan epitaksis, diberi paracetamol tablet kunyah 120 mg', 'istirahat di uks selama 20 menit', '2020-02-10', 21),
(26, '1920.11.070', 'Keluhan bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', 'Data Objecktif  bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', '2020-02-20', 1),
(27, '1920.11.070', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', '2020-02-21', 1),
(28, '1920.11.070', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla', '2020-02-21', 1),
(31, '1920.11.001', 'asdasdasdasd', 'asd', 'asd', 'nini tidak ada', 'asd', '2020-06-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uks_his_tinggi_badan`
--

CREATE TABLE `uks_his_tinggi_badan` (
  `no` int(11) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uks_his_tinggi_badan`
--

INSERT INTO `uks_his_tinggi_badan` (`no`, `nis`, `tinggi_badan`, `waktu`) VALUES
(1, '1920.11.001', 121, '2018-12-31'),
(2, '1920.11.002', 106, '2018-12-31'),
(3, '1920.11.003', 75, '2018-12-31'),
(4, '1920.11.004', 110, '2018-12-31'),
(5, '1920.11.005', 115, '2018-12-31'),
(6, '1920.11.006', 120, '2018-12-31'),
(7, '1920.11.007', 121, '2018-12-31'),
(8, '1920.11.008', 110, '2018-12-31'),
(9, '1920.11.009', 115, '2018-12-31'),
(10, '1920.11.010', 110, '2018-12-31'),
(11, '1920.11.011', 116, '2018-12-31'),
(12, '1920.11.012', 118, '2018-12-31'),
(13, '1920.11.013', 105, '2018-12-31'),
(14, '1920.11.014', 108, '2018-12-31'),
(15, '1920.11.015', 115, '2018-12-31'),
(16, '1920.11.016', 111, '2018-12-31'),
(17, '1920.11.017', 120, '2018-12-31'),
(18, '1920.11.018', 112, '2018-12-31'),
(19, '1920.11.019', 114, '2018-12-31'),
(20, '1920.11.020', 115, '2018-12-31'),
(21, '1920.11.021', 105, '2018-12-31'),
(22, '1920.11.022', 101, '2018-12-31'),
(23, '1920.11.023', 130, '2018-12-31'),
(24, '1920.11.024', 118, '2018-12-31'),
(25, '1920.11.025', 116, '2018-12-31'),
(26, '1920.11.026', 115, '2018-12-31'),
(27, '1920.11.027', 110, '2018-12-31'),
(28, '1920.11.028', 120, '2018-12-31'),
(29, '1920.11.029', 105, '2018-12-31'),
(30, '1920.11.030', 109, '2018-12-31'),
(31, '1920.11.031', 119, '2018-12-31'),
(32, '1920.11.032', 115, '2018-12-31'),
(33, '1920.11.033', 120, '2018-12-31'),
(34, '1920.11.034', 105, '2018-12-31'),
(35, '1920.11.035', 100, '2018-12-31'),
(36, '1920.11.036', 107, '2018-12-31'),
(37, '1920.11.037', 107, '2018-12-31'),
(38, '1920.11.038', 113, '2018-12-31'),
(39, '1920.11.039', 125, '2018-12-31'),
(40, '1920.11.040', 110, '2018-12-31'),
(41, '1920.11.041', 117, '2018-12-31'),
(42, '1920.11.043', 126, '2018-12-31'),
(43, '1920.11.044', 110, '2018-12-31'),
(44, '1920.11.045', 110, '2018-12-31'),
(45, '1920.11.046', 120, '2018-12-31'),
(46, '1920.11.047', 117, '2018-12-31'),
(47, '1920.11.048', 120, '2018-12-31'),
(48, '1920.11.049', 118, '2018-12-31'),
(49, '1920.11.051', 105, '2018-12-31'),
(50, '1920.11.052', 103, '2018-12-31'),
(51, '1920.11.053', 115, '2018-12-31'),
(52, '1920.11.054', 119, '2018-12-31'),
(53, '1920.11.055', 120, '2018-12-31'),
(54, '1920.11.056', 120, '2018-12-31'),
(55, '1920.11.057', 115, '2018-12-31'),
(56, '1920.11.058', 110, '2018-12-31'),
(57, '1920.11.059', 115, '2018-12-31'),
(58, '1920.11.060', 108, '2018-12-31'),
(59, '1920.11.061', 120, '2018-12-31'),
(60, '1920.11.062', 133, '2018-12-31'),
(61, '1920.11.063', 115, '2018-12-31'),
(62, '1920.11.065', 135, '2018-12-31'),
(63, '1920.11.066', 117, '2018-12-31'),
(64, '1920.11.067', 113, '2018-12-31'),
(65, '1920.11.068', 125, '2018-12-31'),
(66, '1920.11.069', 107, '2018-12-31'),
(67, '1920.11.070', 110, '2018-12-31'),
(68, '1920.11.071', 110, '2018-12-31'),
(69, '1920.11.072', 110, '2018-12-31'),
(70, '1920.11.073', 120, '2018-12-31'),
(71, '1920.11.074', 125, '2018-12-31'),
(72, '1920.11.075', 125, '2018-12-31'),
(73, '1920.11.076', 110, '2018-12-31'),
(74, '1920.11.077', 14, '2018-12-31'),
(75, '1920.11.078', 119, '2018-12-31'),
(76, '1920.11.079', 123, '2018-12-31'),
(77, '1920.11.080', 115, '2018-12-31'),
(78, '1920.11.081', 120, '2018-12-31'),
(79, '1920.11.082', 110, '2018-12-31'),
(80, '1920.11.083', 117, '2018-12-31'),
(81, '1920.11.084', 111, '2018-12-31'),
(82, '1920.11.085', 115, '2018-12-31'),
(83, '1920.11.086', 115, '2018-12-31'),
(84, '1920.11.087', 103, '2018-12-31'),
(85, '1920.11.088', 120, '2018-12-31'),
(86, '1920.11.089', 110, '2018-12-31'),
(87, '1920.11.090', 121, '2018-12-31'),
(88, '1920.11.091', 114, '2018-12-31'),
(89, '1920.11.092', 113, '2018-12-31'),
(90, '1920.11.093', 70, '2018-12-31'),
(91, '1920.11.094', 124, '2018-12-31'),
(92, '1920.11.095', 0, '2018-12-31'),
(93, '1920.11.096', 120, '2018-12-31'),
(94, '1920.11.097', 96, '2018-12-31'),
(95, '1920.11.098', 112, '2018-12-31'),
(96, '1920.11.099', 115, '2018-12-31'),
(97, '1920.11.101', 130, '2018-12-31'),
(98, '1920.11.102', 130, '2018-12-31'),
(99, '1920.11.104', 130, '2018-12-31'),
(100, '1920.11.105', 122, '2018-12-31'),
(101, '1920.11.106', 115, '2018-12-31'),
(102, '1920.11.108', 0, '2018-12-31'),
(103, '1920.11.109', 0, '2018-12-31'),
(104, '1920.11.070', 170, '2020-02-12'),
(105, '1920.11.109', 110, '2020-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `id` int(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `time_entry` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `id`, `password`, `time_entry`) VALUES
('a@anakshalihbogor.sch.id', 18, '202cb962ac59075b964b07152d234b70', '2020-01-27 03:31:18'),
('agung2018@anakshalihbogor.sch.id', 3, 'd2f92fe02411f079a1ce652b5fab2b80', '2020-01-10 11:26:48'),
('agus@anakshalihbogor.sch.id', 7, '81d185c099191c53b8a738e1d047f36d', '2020-01-10 15:00:53'),
('bagusanshori@anakshalihbogor.sch.id', 16, '679315ad1bca98973f2cee873bda656b', '2020-01-10 16:57:13'),
('erick.firmansyah@anakshalihbogor.sch.id', 13, 'ae8197bb6ce5c8c5f8ce600aa8864f9b', '2020-01-10 16:35:30'),
('farras@anakshalihbogor.sch.id', 1, '6fa0e99797d995ddbefaf2cdf0636103', '2020-01-09 02:52:25'),
('ferry@anakshalihbogor.sch.id', 2, '7bcd931f16c88e1133668c0e5170467f', '2020-01-09 05:10:37'),
('finance@anakshalihbogor.sch.id', 19, '6fa0e99797d995ddbefaf2cdf0636103', '2020-01-27 03:34:39'),
('hamdani.abufathimah@anakshalihbogor.sch.id', 10, '58d6acc07408d23930dd31731f5d8b60', '2020-01-10 16:14:06'),
('henra@anakshalihbogor.sch.id', 4, '37a46d798145b359d164d6a31c215d8e', '2020-01-10 12:43:51'),
('hergianto@anakshalihbogor.sch.id', 6, '25d55ad283aa400af464c76d713c07ad', '2020-01-10 13:42:03'),
('laras@anakshalihbogor.sch.id', 21, '63b104026aa7e1bccc91509ed7ee6953', '2020-02-07 04:03:37'),
('m.amru@anakshalihbogor.sch.id', 14, '968dfe0a04bc173eed6985a238eab0a6', '2020-01-10 16:38:28'),
('metisgumelar@anakshalihbogor.sch.id', 8, 'e10adc3949ba59abbe56e057f20f883e', '2020-01-10 15:27:31'),
('prima.abuahmad@anakshalihbogor.sch.id', 5, 'a7d524ba241b77e64c9e5c42f78ccc64', '2020-01-10 12:57:16'),
('randi@anakshalihbogor.sch.id', 15, '9afb1ec1855cf37310cf1c815d06a934', '2020-01-10 16:51:31'),
('ricki@anakshalihbogor.sch.id', 9, '8bc0667f4b14d74dce83a73c0b6e752f', '2020-01-10 16:10:31'),
('selma_k@anakshalihbogor.sch.id', 11, '484578e9f1ee60b87a5e5c594fbd6525', '2020-01-10 16:28:17'),
('tri@anakshalihbogor.sch.id', 20, '5d49ea122f320aeebbfa66bf1fc520a5', '2020-01-29 04:47:26'),
('waskito.abuyumna@anakshalihbogor.sch.id', 12, '33c711506b1526946dc90b689d527fb2', '2020-01-10 16:29:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses_tugas`
--
ALTER TABLE `akses_tugas`
  ADD PRIMARY KEY (`waktu_penugasan`);

--
-- Indexes for table `base_data_ayah`
--
ALTER TABLE `base_data_ayah`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `base_data_ibu`
--
ALTER TABLE `base_data_ibu`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `base_data_kelas`
--
ALTER TABLE `base_data_kelas`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `base_data_siswa`
--
ALTER TABLE `base_data_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `bk_kar_perkembangan`
--
ALTER TABLE `bk_kar_perkembangan`
  ADD PRIMARY KEY (`id_pencatatan`);

--
-- Indexes for table `perpus_absen`
--
ALTER TABLE `perpus_absen`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `ppdb_nilai_wawancara`
--
ALTER TABLE `ppdb_nilai_wawancara`
  ADD PRIMARY KEY (`no_peserta`);

--
-- Indexes for table `ppdb_peserta`
--
ALTER TABLE `ppdb_peserta`
  ADD PRIMARY KEY (`no_peserta`);

--
-- Indexes for table `ppdb_text_wawancara`
--
ALTER TABLE `ppdb_text_wawancara`
  ADD PRIMARY KEY (`no_peserta`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`deskripsi`);

--
-- Indexes for table `uks_goldar`
--
ALTER TABLE `uks_goldar`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `uks_his_berat_badan`
--
ALTER TABLE `uks_his_berat_badan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `uks_his_pemeriksaan`
--
ALTER TABLE `uks_his_pemeriksaan`
  ADD PRIMARY KEY (`id_pemeriksaan`);

--
-- Indexes for table `uks_his_tinggi_badan`
--
ALTER TABLE `uks_his_tinggi_badan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `bk_kar_perkembangan`
--
ALTER TABLE `bk_kar_perkembangan`
  MODIFY `id_pencatatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `perpus_absen`
--
ALTER TABLE `perpus_absen`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `uks_his_berat_badan`
--
ALTER TABLE `uks_his_berat_badan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `uks_his_pemeriksaan`
--
ALTER TABLE `uks_his_pemeriksaan`
  MODIFY `id_pemeriksaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `uks_his_tinggi_badan`
--
ALTER TABLE `uks_his_tinggi_badan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
