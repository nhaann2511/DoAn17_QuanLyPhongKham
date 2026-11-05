-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 05, 2026 lúc 11:40 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quan_ly_phong_kham`
--
CREATE DATABASE IF NOT EXISTS `quan_ly_phong_kham` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `quan_ly_phong_kham`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bacsi`
--

DROP TABLE IF EXISTS `bacsi`;
CREATE TABLE IF NOT EXISTS `bacsi` (
  `BacSiID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `ChuyenKhoaID` int(11) NOT NULL,
  PRIMARY KEY (`BacSiID`),
  KEY `UserID` (`UserID`),
  KEY `ChuyenKhoaID` (`ChuyenKhoaID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bacsi`
--

INSERT INTO `bacsi` (`BacSiID`, `UserID`, `ChuyenKhoaID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyenkhoa`
--

DROP TABLE IF EXISTS `chuyenkhoa`;
CREATE TABLE IF NOT EXISTS `chuyenkhoa` (
  `ChuyenKhoaID` int(11) NOT NULL AUTO_INCREMENT,
  `TenChuyenKhoa` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ChuyenKhoaID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuyenkhoa`
--

INSERT INTO `chuyenkhoa` (`ChuyenKhoaID`, `TenChuyenKhoa`, `MoTa`) VALUES
(1, 'Noi tong quat', 'Kham va dieu tri benh noi khoa'),
(2, 'Nhi khoa', 'Kham va dieu tri cho tre em');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

DROP TABLE IF EXISTS `dichvu`;
CREATE TABLE IF NOT EXISTS `dichvu` (
  `DichVuID` int(11) NOT NULL AUTO_INCREMENT,
  `TenDichVu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gia` decimal(12,2) NOT NULL,
  PRIMARY KEY (`DichVuID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`DichVuID`, `TenDichVu`, `Gia`) VALUES
(1, 'Kham tong quat', '150000.00'),
(2, 'Kham chuyen khoa', '200000.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangdoi`
--

DROP TABLE IF EXISTS `hangdoi`;
CREATE TABLE IF NOT EXISTS `hangdoi` (
  `HangDoiID` int(11) NOT NULL AUTO_INCREMENT,
  `LichHenID` int(11) NOT NULL,
  `SoThuTu` int(11) NOT NULL,
  `TrangThai` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'Dang cho',
  PRIMARY KEY (`HangDoiID`),
  KEY `LichHenID` (`LichHenID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hangdoi`
--

INSERT INTO `hangdoi` (`HangDoiID`, `LichHenID`, `SoThuTu`, `TrangThai`) VALUES
(1, 1, 1, 'Dang cho');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hosokham`
--

DROP TABLE IF EXISTS `hosokham`;
CREATE TABLE IF NOT EXISTS `hosokham` (
  `HoSoID` int(11) NOT NULL AUTO_INCREMENT,
  `LichHenID` int(11) NOT NULL,
  `TrieuChung` text COLLATE utf8mb4_unicode_ci,
  `ChanDoan` text COLLATE utf8mb4_unicode_ci,
  `HuongDieuTri` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`HoSoID`),
  KEY `LichHenID` (`LichHenID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hosokham`
--

INSERT INTO `hosokham` (`HoSoID`, `LichHenID`, `TrieuChung`, `ChanDoan`, `HuongDieuTri`) VALUES
(1, 1, 'Dau dau, met moi', 'Theo doi suc khoe', 'Tai kham neu trieu chung keo dai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichhen`
--

DROP TABLE IF EXISTS `lichhen`;
CREATE TABLE IF NOT EXISTS `lichhen` (
  `LichHenID` int(11) NOT NULL AUTO_INCREMENT,
  `BenhNhanID` int(11) NOT NULL,
  `BacSiID` int(11) NOT NULL,
  `NgayHen` date NOT NULL,
  `GioHen` time NOT NULL,
  `TrangThai` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'Cho xac nhan',
  PRIMARY KEY (`LichHenID`),
  KEY `BenhNhanID` (`BenhNhanID`),
  KEY `BacSiID` (`BacSiID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichhen`
--

INSERT INTO `lichhen` (`LichHenID`, `BenhNhanID`, `BacSiID`, `NgayHen`, `GioHen`, `TrangThai`) VALUES
(1, 1, 1, '2026-11-06', '09:00:00', 'Cho xac nhan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichlamviec`
--

DROP TABLE IF EXISTS `lichlamviec`;
CREATE TABLE IF NOT EXISTS `lichlamviec` (
  `LichID` int(11) NOT NULL AUTO_INCREMENT,
  `BacSiID` int(11) NOT NULL,
  `NgayLam` date NOT NULL,
  `GioBatDau` time NOT NULL,
  `GioKetThuc` time NOT NULL,
  PRIMARY KEY (`LichID`),
  KEY `BacSiID` (`BacSiID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichlamviec`
--

INSERT INTO `lichlamviec` (`LichID`, `BacSiID`, `NgayLam`, `GioBatDau`, `GioKetThuc`) VALUES
(1, 1, '2026-11-06', '08:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

DROP TABLE IF EXISTS `thongbao`;
CREATE TABLE IF NOT EXISTS `thongbao` (
  `ThongBaoID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayTao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ThongBaoID`),
  KEY `UserID` (`UserID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`ThongBaoID`, `UserID`, `NoiDung`, `NgayTao`) VALUES
(1, 1, 'Ban da tao lich hen thanh cong', '2026-11-05 18:30:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `HoTen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoDienThoai` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VaiTro` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`UserID`, `HoTen`, `Email`, `MatKhau`, `SoDienThoai`, `VaiTro`) VALUES
(1, 'Nguyen Van An', 'an@gmail.com', 'demo123', '0900000001', 'BenhNhan'),
(2, 'Tran Thi Binh', 'binh@gmail.com', 'demo123', '0900000002', 'BacSi'),
(3, 'Le Van Cuong', 'cuong@gmail.com', 'demo123', '0900000003', 'TiepTan'),
(4, 'Pham Thi Dung', 'dung@gmail.com', 'demo123', '0900000004', 'QuanTri');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
