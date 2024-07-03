-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 21, 2023 lúc 08:03 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `TBYT`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(100) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `role`, `deleted_at`, `updated_at`, `created_at`) VALUES
(14, 'Admin', 'Admin', '202cb962ac59075b964b07152d234b70', '1', NULL, NULL, NULL),
(15, 'User', 'user@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `preview_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `name`, `img`, `content`, `preview_text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CHĂM SỨC KHỎE VÀNG', '1697452979-article.jpg', '<p>Bạn muốn chăm s&oacute;c sức khỏe cả gia đ&igrave;nh, đến ngay&nbsp;<strong>Si&ecirc;u Thị Y Tế</strong>!&nbsp;An t&acirc;m mua h&agrave;ng ch&iacute;nh h&atilde;ng 100%:&nbsp;<strong>CHẤT LƯỢNG&nbsp;</strong>-<strong>&nbsp;GI&Aacute; TỐT&nbsp;</strong>-<strong>&nbsp;NHIỀU ƯU Đ&Atilde;I</strong>!</p>\r\n\r\n<p>Đặc biệt trong th&aacute;ng n&agrave;y,<strong>&nbsp;Si&ecirc;u Thị Y Tế</strong>&nbsp;b&ugrave;ng nổ chương tr&igrave;nh khuyến m&atilde;i hấp dẫn d&agrave;nh ri&ecirc;ng cho bộ&nbsp;<strong>sản phẩm Chăm S&oacute;c Sức Khỏe Gia Đ&igrave;nh&nbsp;</strong>với 8 sản phẩm &ldquo;<strong>ch&aacute;y h&agrave;ng</strong>&rdquo; nhất:</p>\r\n\r\n<p>&nbsp;</p>', '<p><strong>Bạn muốn chăm s&oacute;c sức khỏe cả gia đ&igrave;nh</strong></p>', '2023-10-16 03:40:37', '2023-10-16', NULL),
(2, 'SIÊU DEAL THÁNG 8', '1697453141-article.jpg', '<p><strong>M&aacute;y đo đường huyết, mỡ m&aacute;u, g&uacute;t BeneCheck c&ocirc;ng nghệ Đ&agrave;i Loan:</strong></p>\r\n\r\n<ul>\r\n	<li>T&iacute;ch hợp 3 chức năng đo mỡ m&aacute;u&nbsp;(Cholesterol), đường huyết&nbsp;(Glucose), g&uacute;t&nbsp;(Acid Uric).</li>\r\n	<li>Cho kết quả ch&iacute;nh x&aacute;c đến 99%.</li>\r\n	<li>Tiện dụng v&agrave; kh&ocirc;ng g&acirc;y đau với lượng m&aacute;u lấy rất nhỏ.</li>\r\n	<li>Tự động t&iacute;nh kết quả trung b&igrave;nh cho 7, 14, 21, 28 ng&agrave;y.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Máy đo đường huyết, mỡ máu, gút BeneCheck công nghệ Đài Loan\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/sieu-deal-thang-8-tai-sieu-thi-y-te-mua-benecheck-tang-may-xong-khi-dung-nd1-4.jpg\" style=\"width:700px\" /></p>\r\n\r\n<p><em><strong>XEM NGAY M&Aacute;Y ĐO BENECHECK 3IN1:&nbsp;<a href=\"https://sieuthiyte.com.vn/may-do-duong-huyet-mo-mau-gut-benecheck-81.html\" target=\"_blank\">TẠI Đ&Acirc;Y</a>!</strong></em></p>\r\n\r\n<p><strong>[QU&Agrave; TẶNG]&nbsp;M&aacute;y đo huyết &aacute;p điện tử bắp tay Wellmed AXD-804 c&ocirc;ng nghệ Nhật Bản:</strong></p>\r\n\r\n<ul>\r\n	<li>Đo huyết &aacute;p t&acirc;m thu, t&acirc;m trương v&agrave; nhịp tim, t&iacute;ch hợp cảnh b&aacute;o loạn nhịp tim.</li>\r\n	<li>Ph&acirc;n loại huyết &aacute;p theo vạch m&agrave;u&nbsp;ti&ecirc;u chuẩn WHO.</li>\r\n	<li>Bộ nhớ lưu trữ 90 ph&eacute;p đo/người d&ugrave;ng cho tối đa 2 người.</li>\r\n	<li>T&iacute;nh năng&nbsp;ph&aacute;t hiện lỗi&nbsp;trong qu&aacute; tr&igrave;nh đo,&nbsp;tự động dừng&nbsp;v&agrave; tiến h&agrave;nh&nbsp;đo lại.</li>\r\n	<li>Tự động tắt m&aacute;y&nbsp;sau 2 ph&uacute;t.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Máy đo huyết áp điện tử bắp tay Wellmed AXD-804 công nghệ Nhật Bản\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/sieu-deal-thang-8-tai-sieu-thi-y-te-mua-benecheck-tang-may-xong-khi-dung-nd2.jpg\" style=\"width:700px\" /></p>\r\n\r\n<p>Ưu đ&atilde;i&nbsp;<strong>MUA</strong>&nbsp;m&aacute;y đo đường huyết&nbsp;<strong>TẶNG</strong>&nbsp;m&aacute;y đo huyết &aacute;p lần đầu ti&ecirc;n xuất hiện tại&nbsp;<strong>Si&ecirc;u Thị Y Tế</strong>!</p>\r\n\r\n<p>Li&ecirc;n hệ ngay đến hotline&nbsp;<strong>0985 999 929</strong>&nbsp;hoặc truy cập website:&nbsp;<strong>sieuthiyte.com.vn</strong>&nbsp;để được tư vấn chi tiết v&agrave; đặt h&agrave;ng!</p>', '<p><strong>Th&aacute;ng 8 n&agrave;y c&oacute; g&igrave; HOT tại Si&ecirc;u Thị Y Tế?&nbsp;</strong>Nhất định đừng bỏ lỡ cơ hội&nbsp;<strong>Săn Deal</strong>&nbsp;&quot;<strong>MUA 1 TẶNG 1</strong>&quot; si&ecirc;u tiết kiệm</p>', '2023-10-16 03:45:41', '2023-10-16', NULL),
(3, 'SIÊU SALE MỪNG ĐẠI LỄ 2/9', '1697453252-article.jpg', '<ul>\r\n	<li><strong>GIẢM GI&Aacute;</strong>&nbsp;đến&nbsp;<strong>35%</strong>, chỉ từ 1 triệu.</li>\r\n	<li><strong>FREESHIP</strong>&nbsp;to&agrave;n quốc, giao h&agrave;ng nhanh.</li>\r\n	<li><strong>BẢO H&Agrave;NH</strong>&nbsp;12 th&aacute;ng.</li>\r\n</ul>\r\n\r\n<p><a href=\"https://sieuthiyte.com.vn/san-pham-khuyen-mai.html\" target=\"_blank\" title=\"Mua Ngay Các Sản Phẩm KASJ - Thương Hiệu Đức - Lễ Lớn Sale Lớn Mừng 2/9 Tại Siêu Thị Y Tế\"><img alt=\"Siêu Sale Mừng Đại Lễ 2/9 - Siêu Thị Y Tế Giảm Đến 35% Khi Mua Máy Massage Thương Hiệu Đức KASJ\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/sieu-sale-mung-dai-le-2-9-tai-sieu-thi-y-te-khi-mua-may-massage-thuong-hieu-duc-kasj-29082023.jpg\" style=\"width:700px\" /></a></p>\r\n\r\n<p><em><strong>Lễ Lớn Sale Lớn</strong>&nbsp;tại&nbsp;<strong>Si&ecirc;u Thị Y Tế</strong>! Ưu đ&atilde;i giảm gi&aacute; đến&nbsp;<strong>35</strong>%&nbsp;d&agrave;nh ri&ecirc;ng cho&nbsp;<strong>M&aacute;y Massage KASJ</strong>&nbsp;</em></p>\r\n\r\n<p>Rinh ngay top&nbsp;<strong>6&nbsp;M&Aacute;Y MASSAGE HIỆN ĐẠI</strong>,<strong>&nbsp;ĐẲNG CẤP</strong>,&nbsp;<strong>SANG TRỌNG</strong>&nbsp;đến từ&nbsp;<strong>KASJ</strong>&nbsp;-&nbsp;<strong>THƯƠNG HIỆU ĐỨC</strong>,&nbsp;chuy&ecirc;n sản xuất thiết bị massage nổi tiếng h&agrave;ng đầu thế giới:</p>\r\n\r\n<p>➭&nbsp;<a href=\"https://sieuthiyte.com.vn/may-massage-chan-cao-cap-kasj-z5-1335.html\" target=\"_blank\">M&aacute;y massage ch&acirc;n KASJ Z5</a></p>\r\n\r\n<p>➭&nbsp;<a href=\"https://sieuthiyte.com.vn/bon-ngam-va-massage-chan-thong-minh-germany-kasj-1612-1236.html\" target=\"_blank\">Bồn ng&acirc;m ch&acirc;n massage KASJ 1612</a></p>\r\n\r\n<p>➭&nbsp;<a href=\"https://sieuthiyte.com.vn/bon-ngam-chan-massage-gap-gon-cao-cap-kasj-k1-1267.html\" target=\"_blank\">Bồn ng&acirc;m ch&acirc;n massage gấp gọn KASJ K1</a></p>\r\n\r\n<p>➭&nbsp;<a href=\"https://sieuthiyte.com.vn/sung-massage-gun-cam-tay-da-nang-kasj-a3-1263.html\" target=\"_blank\">S&uacute;ng massage cầm tay KASJ A3</a></p>\r\n\r\n<p>➭&nbsp;<a href=\"https://sieuthiyte.com.vn/sung-massage-cam-tay-cao-cap-cong-nghe-ai-kalg-211-1268.html\" target=\"_blank\">S&uacute;ng massage KALG 211</a></p>\r\n\r\n<p>➭&nbsp;<a href=\"https://sieuthiyte.com.vn/may-massage-co-cao-cap-germany-kasj-a1-1235.html\" target=\"_blank\">M&aacute;y massage cổ KASJ A1</a></p>\r\n\r\n<p><em>Cơ hội chỉ c&oacute; trong m&ugrave;a Lễ 2/9 năm nay, nhất định đừng bỏ lỡ bạn nh&eacute;!</em></p>', '<p>DUY NHẤT trong dịp&nbsp;<strong>LỄ QUỐC KH&Aacute;NH&nbsp;2/9</strong>, đến&nbsp;<strong>Si&ecirc;u Thị Y Tế</strong>&nbsp;mua&nbsp;<strong>M&aacute;y Massage KASJ</strong>&nbsp;nhận ngay ưu đ&atilde;i hấp dẫn</p>', '2023-10-16 03:47:32', '2023-10-17', NULL),
(6, 'TẶNG MẸ QUÀ SỨC KHỎE, 20/10 TRỌN NIỀM VUI!', '1697516513-article.jpg', '<p><strong><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t8c/1/16/1f389.png\" style=\"width:16px\" />&nbsp;Tặng Mẹ</strong>&nbsp;<strong>M&aacute;y Massage Cao Cấp KASJ</strong>,&nbsp;n&acirc;ng cao sức khỏe để Mẹ sống vui mỗi ng&agrave;y:</p>\r\n\r\n<p>➭&nbsp;<a href=\"https://sieuthiyte.com.vn/sung-massage-gun-cam-tay-da-nang-kasj-a3-1263.html\" target=\"_blank\">S&uacute;ng massage cầm tay&nbsp;<strong>KASJ A3</strong></a></p>\r\n\r\n<p>➭&nbsp;<a href=\"https://sieuthiyte.com.vn/may-massage-co-cao-cap-germany-kasj-a1-1235.html\" target=\"_blank\">M&aacute;y massage cổ&nbsp;<strong>KASJ A1</strong></a></p>\r\n\r\n<p>➭&nbsp;<a href=\"https://sieuthiyte.com.vn/may-massage-mat-cao-cap-kasj-3612-1273.html\" target=\"_blank\">M&aacute;y massage mắt&nbsp;<strong>KASJ 3612</strong></a></p>\r\n\r\n<p>➭&nbsp;<a href=\"https://sieuthiyte.com.vn/bon-ngam-chan-massage-gap-gon-cao-cap-kasj-k1-1267.html\" target=\"_blank\">Bồn ng&acirc;m ch&acirc;n massage gấp gọn&nbsp;<strong>KASJ K1</strong></a></p>\r\n\r\n<p>➭&nbsp;<a href=\"https://sieuthiyte.com.vn/may-massage-chan-cao-cap-kasj-z5-1335.html\" target=\"_blank\">M&aacute;y massage ch&acirc;n&nbsp;<strong>KASJ Z5</strong></a></p>\r\n\r\n<p><a href=\"https://sieuthiyte.com.vn/san-pham-khuyen-mai.html\" target=\"_blank\" title=\" Tặng Mẹ Quà Sức Khỏe, 20/10 Trọn Niềm Vui!\"><em><strong><img alt=\"Tặng Mẹ Quà Sức Khỏe, 20/10 Trọn Niềm Vui!\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/tang-me-qua-suc-khoe-20-10-tron-niem-vui-17102023.jpg\" style=\"width:700px\" /></strong></em></a></p>\r\n\r\n<p><strong><em><img alt=\"⚡️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t5d/1/16/26a1.png\" style=\"width:16px\" />&nbsp;</em>Ưu đ&atilde;i chỉ c&oacute; tại Si&ecirc;u Thị Y Tế nh&acirc;n dịp 20/10 n&agrave;y</strong>:</p>\r\n\r\n<p>➭&nbsp;Ch&iacute;nh h&atilde;ng 100%.</p>\r\n\r\n<p>➭&nbsp;Thương hiệu Đức.</p>\r\n\r\n<p>➭<strong>&nbsp;GI&Aacute; GIẢM đến&nbsp;35</strong>%.</p>\r\n\r\n<p>➭&nbsp;FREESHIP&nbsp;to&agrave;n quốc.</p>\r\n\r\n<p><strong><em><img src=\"https://sieuthiyte.com.vn/data/images/San-Pham/icon-gift-new.png\" style=\"width:14px\" />&nbsp;<img src=\"https://sieuthiyte.com.vn/data/images/San-Pham/icon-gift-new.png\" style=\"width:14px\" />&nbsp;<img src=\"https://sieuthiyte.com.vn/data/images/San-Pham/icon-gift-new.png\" style=\"width:14px\" /></em></strong></p>\r\n\r\n<p><strong>Th&ocirc;ng tin li&ecirc;n hệ:</strong></p>\r\n\r\n<ul>\r\n	<li>Hotline:&nbsp;<strong>0985 9999 29</strong></li>\r\n	<li>Hoặc truy cập website:&nbsp;<a href=\"https://sieuthiyte.com.vn/\" target=\"_blank\">sieuthiyte.com.vn</a></li>\r\n</ul>', '<p>Bạn c&oacute; phải l&agrave; một trong số nhiều người &quot;kiệm lời y&ecirc;u thương&quot;?&nbsp;<strong>Ng&agrave;y Phụ Nữ Việt Nam&nbsp;</strong><strong>20/10</strong>&nbsp;sắp đến ch&iacute;nh l&agrave; cơ hội để bạn b&agrave;y tỏ t&igrave;nh cảm với người Mẹ th&acirc;n y&ecirc;u của m&igrave;nh!</p>', '2023-10-16 21:21:53', '2023-10-17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cat`
--

CREATE TABLE `cat` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cat`
--

INSERT INTO `cat` (`id`, `name`, `id_parent`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Chăm sóc Sắc Đẹp', 0, NULL, '2023-10-15', '2023-10-15'),
(2, 'Chăm sóc Da Mặt', 1, NULL, '2023-10-15', '2023-10-15'),
(3, 'Máy tỉa lông mũi', 1, NULL, '2023-10-15', '2023-10-15'),
(4, 'Y tế chuyên dụng', 0, NULL, '2023-10-15', '2023-10-15'),
(5, 'Y Tế Gia Đình', 0, NULL, '2023-10-16', '2023-10-16'),
(6, 'Quần áo định hình', 1, NULL, '2023-10-16', '2023-10-16'),
(7, 'Máy đo nồng độ Oxi- điện tim', 4, NULL, '2023-10-16', '2023-10-16'),
(8, 'máy trợ thở', 4, NULL, '2023-10-16', '2023-10-16'),
(9, 'Máy đo đường huyết', 5, NULL, '2023-10-16', '2023-10-16'),
(10, 'Máy đo huyết áp', 5, NULL, '2023-10-16', '2023-10-16'),
(11, 'Máy xông mũi họng', 5, NULL, '2023-10-16', '2023-10-16'),
(12, 'Máy tạo oxi Y tế', 4, NULL, '2023-10-16', '2023-10-16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `id_blog` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `name`, `comment`, `id_blog`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'Quản trị', 'hay', 1, '2023-10-16 03:43:18', NULL, '2023-10-16'),
(2, 'Quản trị', 'bài viết hay', 6, '2023-10-16 21:31:08', NULL, '2023-10-17'),
(3, 'user3', 'hữu ích', 6, '2023-10-16 21:56:53', NULL, '2023-10-17'),
(4, 'Quản trị', 'dvv', 6, '2023-10-17 01:53:17', NULL, '2023-10-17'),
(5, 'Quang', 'ok', 6, '2023-11-08 06:55:30', NULL, '2023-11-08'),
(6, 'Quang', 'bài viết hữu ích', 6, '2023-11-08 06:56:06', NULL, '2023-11-08'),
(7, 'Quang', 'hay', 2, '2023-11-08 10:36:39', NULL, '2023-11-08'),
(8, 'tkdemo', '....', 1, '2023-11-13 12:29:06', NULL, '2023-11-13'),
(9, 'tkdemo', '.....', 8, '2023-11-13 13:01:36', NULL, '2023-11-13'),
(10, 'Quang', 'Bài viết hữu ích', 3, '2023-11-13 13:50:24', NULL, '2023-11-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `content` text NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`, `deleted_at`, `updated_at`, `created_at`) VALUES
(1, 'Quang', 'Quang@gmail.com', '0999888987', 'Tư vấn về máy oxi', NULL, '2023-10-16', '2023-10-16'),
(2, 'Quang', 'Q@gmail.com', '0999000987', 'GIới thiệu cho tôi về máy đo huyết áp', NULL, '2023-10-17', '2023-10-17'),
(3, 'nam', 'nam@gmail.com', '0999000987', 'aaa', '2023-11-09', '2023-11-09', '2023-10-17'),
(4, 'Quang', 'quangnd@tokyotechlab.com', '0999888989', 'AAAA', '2023-11-09', '2023-11-09', '2023-11-08'),
(5, 'Quang', 'quang@gmail.com', '0999888989', 'đdsdsdsdsdsd', '2023-11-09', '2023-11-09', '2023-11-09'),
(6, 'Quang', '20010818@st.phenikaa-uni.edu.vn', '0999888989', 'Liên hệ tôi', NULL, '2023-11-09', '2023-11-09'),
(7, 'Quang', 'jon@gmail.com', '0999888989', 'Liên hệ tôi', NULL, '2023-11-09', '2023-11-09'),
(8, 'Quang', 'quang@gmail.com', '0999888989', 'Liên hệ tôi', NULL, '2023-11-09', '2023-11-09'),
(9, 'anh', 'quang@gmail.com', '0999888989', 'a', NULL, '2023-11-09', '2023-11-09'),
(10, 'anh vu', 'quang@gmail.com', '0999888989', 'DD', NULL, '2023-11-09', '2023-11-09'),
(11, 'anh trung', 'quang@gmail.com', '0999888989', 'test', '2023-11-09', '2023-11-09', '2023-11-09'),
(12, 'Quang', 'quang@gmail.com', '0999888989', 'Máy tạo oxy', NULL, '2023-11-09', '2023-11-09'),
(13, 'Quang', 'quang@gmail.com', '0999888989', 'abcxxxsss', NULL, '2023-11-09', '2023-11-09'),
(14, 'Quang', 'quang@gmail.com', '0999888989', 'qqq', '2023-11-09', '2023-11-09', '2023-11-09'),
(15, 'Quang', 'quang@gmail.com', '0999888989', '123456', NULL, '2023-11-09', '2023-11-09'),
(16, 'anh', 'quang@gmail.com', '0999888989', 'mua hàng', NULL, '2023-11-09', '2023-11-09'),
(17, 'Quang', 'quang@gmail.com', '0999888989', 'ffff', NULL, '2023-11-09', '2023-11-09'),
(18, 'anh', 'quang@gmail.com', '0999888989', 'hay', '2023-11-09', '2023-11-09', '2023-11-09'),
(19, 'aaaa', 'aaa@gmail.com', '0999888987', '1111', NULL, '2023-11-13', '2023-11-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_products`
--

CREATE TABLE `img_products` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `img_products`
--

INSERT INTO `img_products` (`id`, `id_sp`, `img`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '1697378837-product_detail.-may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-avbs1.jpg', NULL, '2023-10-15', '2023-10-15'),
(2, 2, '1697380185-product_detail.-tb1685-1-1-1573031172.nv.png', NULL, '2023-10-15', '2023-10-15'),
(3, 3, '1697450576-product_detail.-may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-avbs1.jpg', NULL, '2023-10-16', '2023-10-16'),
(4, 2, '1697450623-product_detail.-may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-avbs1.jpg', NULL, '2023-10-16', '2023-10-16'),
(5, 4, '1697451297-product_detail.-may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-avbs4.jpg', NULL, '2023-10-16', '2023-10-16'),
(6, 4, '1697451297-product_detail.-may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-avbs5.jpg', NULL, '2023-10-16', '2023-10-16'),
(7, 4, '1697451297-product_detail.-may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-avbs1.jpg', NULL, '2023-10-16', '2023-10-16'),
(8, 4, '1697451375-product_detail.-may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-avbs3.jpg', NULL, '2023-10-16', '2023-10-16'),
(9, 4, '1697451375-product_detail.-may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-avbs4.jpg', NULL, '2023-10-16', '2023-10-16'),
(10, 4, '1697451375-product_detail.-may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-avbs5.jpg', NULL, '2023-10-16', '2023-10-16'),
(11, 4, '1697451375-product_detail.-may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-avbs1.jpg', NULL, '2023-10-16', '2023-10-16'),
(12, 5, '1697451633-product_detail.-may-cat-tia-long-may-touchbeauty-tb1658-avt1-min1574241983.nv.png', NULL, '2023-10-16', '2023-10-16'),
(13, 5, '1697451633-product_detail.-may-cat-tia-long-may-touchbeauty-tb1658-avt2-min1574241983.nv.png', NULL, '2023-10-16', '2023-10-16'),
(14, 5, '1697451633-product_detail.-tb1685-1-1-1573031172.nv.png', NULL, '2023-10-16', '2023-10-16'),
(15, 5, '1697451633-product_detail.-tb1685-1-3-1573031172.nv.png', NULL, '2023-10-16', '2023-10-16'),
(16, 6, '1697451807-product_detail.-11545705499.nv.png', NULL, '2023-10-16', '2023-10-16'),
(17, 6, '1697451807-product_detail.-21545705499.nv.png', NULL, '2023-10-16', '2023-10-16'),
(18, 6, '1697451807-product_detail.-lcf2711541474318.nv.png', NULL, '2023-10-16', '2023-10-16'),
(19, 6, '1697451807-product_detail.-31545705499.nv.png', NULL, '2023-10-16', '2023-10-16'),
(20, 7, '1697451983-product_detail.-may-do-nong-do-oxy-trong-mau-spo2-wellmed-fs20-av21634041557.nv.jpg', NULL, '2023-10-16', '2023-10-16'),
(21, 7, '1697451983-product_detail.-may-do-nong-do-oxy-trong-mau-spo2-wellmed-fs20-av31634041557.nv.jpg', NULL, '2023-10-16', '2023-10-16'),
(22, 7, '1697451983-product_detail.-may-do-nong-do-oxy-trong-mau-spo2-wellmed-fs20-av41634041557.nv.jpg', NULL, '2023-10-16', '2023-10-16'),
(23, 7, '1697451983-product_detail.-may-do-nong-do-oxy-trong-mau-spo2-wellmed-fs20-av61634041924.nv.jpg', NULL, '2023-10-16', '2023-10-16'),
(24, 8, '1697452148-product_detail.-may-tao-oxy-5-lit-reiwa-k5bw-av-bsqc1635923075.nv.jpg', NULL, '2023-10-16', '2023-10-16'),
(25, 8, '1697452148-product_detail.-may-tao-oxy-5-lit-reiwa-k5bw-av-new1.jpg', NULL, '2023-10-16', '2023-10-16'),
(26, 8, '1697452148-product_detail.-may-tao-oxy-5-lit-reiwa-k5bw-av-new2.jpg', NULL, '2023-10-16', '2023-10-16'),
(27, 8, '1697452148-product_detail.-may-tao-oxy-5-lit-reiwa-k5bw-avt-concept1-edit-06102023.jpg', NULL, '2023-10-16', '2023-10-16'),
(28, 9, '1697452276-product_detail.-may-tao-oxy-5-lit-reiwa-k5bw-av-bsqc1635923075.nv.jpg', NULL, '2023-10-16', '2023-10-16'),
(29, 9, '1697452276-product_detail.-may-tao-oxy-5-lit-reiwa-k5bw-av-new1.jpg', NULL, '2023-10-16', '2023-10-16'),
(30, 9, '1697452276-product_detail.-may-tao-oxy-5-lit-reiwa-k5bw-av-new2.jpg', NULL, '2023-10-16', '2023-10-16'),
(31, 9, '1697452276-product_detail.-may-tao-oxy-5-lit-reiwa-k5bw-avt-concept1-edit-06102023.jpg', NULL, '2023-10-16', '2023-10-16'),
(32, 10, '1697452518-product_detail.-may-do-axit-uric1495244480.nv.jpg', NULL, '2023-10-16', '2023-10-16'),
(33, 11, '1697452600-product_detail.-may-do-huyet-ap-dien-tu-bap-tay-wellmed-axd-804-avt2.jpg', NULL, '2023-10-16', '2023-10-16'),
(34, 11, '1697452600-product_detail.-may-do-huyet-ap-dien-tu-bap-tay-wellmed-axd-804-avt4.jpg', NULL, '2023-10-16', '2023-10-16'),
(35, 11, '1697452600-product_detail.-may-do-huyet-ap-dien-tu-bap-tay-wellmed-axd-804-avt5.jpg', NULL, '2023-10-16', '2023-10-16'),
(36, 11, '1697452600-product_detail.-may-do-huyet-ap-dien-tu-bap-tay-wellmed-axd-804-avt1-n2-3.jpg', NULL, '2023-10-16', '2023-10-16'),
(37, 12, '1697452696-product_detail.-may-xong-khi-dung-dang-luoi-wellmed-air-pro-ii-av5.jpg', NULL, '2023-10-16', '2023-10-16'),
(38, 12, '1697452696-product_detail.-may-xong-khi-dung-dang-luoi-wellmed-air-pro-ii-av6.jpg', NULL, '2023-10-16', '2023-10-16'),
(39, 12, '1697452696-product_detail.-may-xong-khi-dung-dang-luoi-wellmed-air-pro-ii-av8.jpg', NULL, '2023-10-16', '2023-10-16'),
(40, 12, '1697452696-product_detail.-may-xong-khi-dung-dang-luoi-wellmed-air-pro-ii-av3.jpg', NULL, '2023-10-16', '2023-10-16'),
(41, 9, '1697454015-product_detail.-may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-av2-1.jpg', NULL, '2023-10-16', '2023-10-16'),
(42, 9, '1697454015-product_detail.-may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-av3.jpg', NULL, '2023-10-16', '2023-10-16'),
(43, 9, '1697454015-product_detail.-may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-av4.jpg', NULL, '2023-10-16', '2023-10-16'),
(44, 9, '1697454015-product_detail.-may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-av1-3.jpg', NULL, '2023-10-16', '2023-10-16'),
(45, 9, '1697455821-product_detail.-may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-av2-1.jpg', NULL, '2023-10-16', '2023-10-16'),
(46, 9, '1697455821-product_detail.-may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-av3.jpg', NULL, '2023-10-16', '2023-10-16'),
(47, 9, '1697455821-product_detail.-may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-av4.jpg', NULL, '2023-10-16', '2023-10-16'),
(48, 9, '1697455821-product_detail.-may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-av1-3.jpg', NULL, '2023-10-16', '2023-10-16'),
(49, 13, '1697608521-product_detail.-tb1685-1-1-1573031172.nv.png', NULL, '2023-10-18', '2023-10-18'),
(50, 14, '1697608719-product_detail.-may-cat-tia-long-may-touchbeauty-tb1658-avt1-min1574241983.nv.png', NULL, '2023-10-18', '2023-10-18'),
(51, 14, '1697608719-product_detail.-may-cat-tia-long-may-touchbeauty-tb1658-avt2-min1574241983.nv.png', NULL, '2023-10-18', '2023-10-18'),
(52, 14, '1697608719-product_detail.-tb1685-1-1-1573031172.nv.png', NULL, '2023-10-18', '2023-10-18'),
(53, 14, '1697608719-product_detail.-tb1685-1-3-1573031172.nv.png', NULL, '2023-10-18', '2023-10-18'),
(54, 15, '1697620546-product_detail.-slide11.png', NULL, '2023-10-18', '2023-10-18'),
(55, 17, '1697623849-product_detail.-11567497263.nv.png', NULL, '2023-10-18', '2023-10-18'),
(56, 17, '1697623849-product_detail.-21567497262.nv.png', NULL, '2023-10-18', '2023-10-18'),
(57, 17, '1697623849-product_detail.-31567497261.nv.png', NULL, '2023-10-18', '2023-10-18'),
(58, 17, '1697623849-product_detail.-quesapphire1583394556.nv.png', NULL, '2023-10-18', '2023-10-18'),
(59, 18, '1697624047-product_detail.-lg102-1-min1567655097.nv.png', NULL, '2023-10-18', '2023-10-18'),
(60, 18, '1697624047-product_detail.-lg102-4-min1567655095.nv.png', NULL, '2023-10-18', '2023-10-18'),
(61, 18, '1697624047-product_detail.-may-tao-oxy-xach-tay-lovego-lg-102-av11606708397.nv.jpg', NULL, '2023-10-18', '2023-10-18'),
(62, 18, '1697624047-product_detail.-may-tao-oxy-xach-tay-lovego-lg-102-avt-05012023-v2.jpg', NULL, '2023-10-18', '2023-10-18'),
(63, 19, '1697624729-product_detail.-may-xong-khi-dung-wellmed-cnb69028-av01609226565.nv.jpg', NULL, '2023-10-18', '2023-10-18'),
(64, 19, '1697624729-product_detail.-may-xong-khi-dung-wellmed-cnb69028-avnew11609732682.nv.jpg', NULL, '2023-10-18', '2023-10-18'),
(65, 19, '1697624729-product_detail.-may-xong-khi-dung-wellmed-cnb69028-avnew21609732682.nv.jpg', NULL, '2023-10-18', '2023-10-18'),
(66, 19, '1697624729-product_detail.-may-xong-khi-dung-wellmed-cnb69028-avnew31609732682.nv.jpg', NULL, '2023-10-18', '2023-10-18'),
(67, 20, '1697624929-product_detail.-qc-muasam-may-xong-mui-hong-fix1589962898.nv (1).png', NULL, '2023-10-18', '2023-10-18'),
(68, 20, '1697624929-product_detail.-may-xong-mui-hong-philips-innospire-essence-av011602671415.nv.jpg', NULL, '2023-10-18', '2023-10-18'),
(69, 20, '1697624929-product_detail.-may-xong-mui-hong-philips-innospire-essence-av041602671415.nv.jpg', NULL, '2023-10-18', '2023-10-18'),
(70, 20, '1697624929-product_detail.-may-xong-mui-hong-philips-innospire-essence-av021602671415.nv.jpg', NULL, '2023-10-18', '2023-10-18'),
(71, 21, '1697625094-product_detail.-may-hut-mun-dau-den-2-trong-1-reiwa-av4.jpg', NULL, '2023-10-18', '2023-10-18'),
(72, 21, '1697625094-product_detail.-may-hut-mun-dau-den-2-trong-1-reiwa-av3.jpg', NULL, '2023-10-18', '2023-10-18'),
(73, 21, '1697625094-product_detail.-may-hut-mun-dau-den-2-trong-1-reiwa-av2.jpg', NULL, '2023-10-18', '2023-10-18'),
(74, 21, '1697625094-product_detail.-may-hut-mun-dau-den-2-trong-1-reiwa-av1.jpg', NULL, '2023-10-18', '2023-10-18'),
(75, 25, '1697625704-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av4.jpg', NULL, '2023-10-18', '2023-10-18'),
(76, 25, '1697625704-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av5.jpg', NULL, '2023-10-18', '2023-10-18'),
(77, 25, '1697625704-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av2.jpg', NULL, '2023-10-18', '2023-10-18'),
(78, 25, '1697625704-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av1.jpg', NULL, '2023-10-18', '2023-10-18'),
(79, 26, '1697625782-product_detail.-ban-chai-rua-mat-va-massage-silicone-tb1762-av31617269594.nv.jpg', NULL, '2023-10-18', '2023-10-18'),
(80, 26, '1697625782-product_detail.-ban-chai-rua-mat-va-massage-silicone-tb1762-av21617269594.nv.jpg', NULL, '2023-10-18', '2023-10-18'),
(81, 26, '1697625782-product_detail.-ban-chai-rua-mat-va-massage-silicone-tb1762-av11617269594.nv.jpg', NULL, '2023-10-18', '2023-10-18'),
(82, 26, '1697625782-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av4.jpg', NULL, '2023-10-18', '2023-10-18'),
(83, 27, '1699879056-product_detail.-may-tao-oxy-xach-tay-5-lit-dynmed-poc5-av4.jpg', NULL, '2023-11-13', '2023-11-13'),
(84, 27, '1699879056-product_detail.-may-tao-oxy-xach-tay-5-lit-dynmed-poc5-av3.jpg', NULL, '2023-11-13', '2023-11-13'),
(85, 27, '1699879056-product_detail.-may-tao-oxy-xach-tay-5-lit-dynmed-poc5-av2.jpg', NULL, '2023-11-13', '2023-11-13'),
(86, 27, '1699879056-product_detail.-may-tao-oxy-xach-tay-5-lit-dynmed-poc5-av1.jpg', NULL, '2023-11-13', '2023-11-13'),
(87, 28, '1699879149-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av5.jpg', NULL, '2023-11-13', '2023-11-13'),
(88, 28, '1699879149-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av2.jpg', NULL, '2023-11-13', '2023-11-13'),
(89, 28, '1699879149-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av1.jpg', NULL, '2023-11-13', '2023-11-13'),
(90, 29, '1699879212-product_detail.-ban-chai-rua-mat-va-massage-silicone-tb1762-av31617269594.nv.jpg', NULL, '2023-11-13', '2023-11-13'),
(91, 29, '1699879212-product_detail.-ban-chai-rua-mat-va-massage-silicone-tb1762-av21617269594.nv.jpg', NULL, '2023-11-13', '2023-11-13'),
(92, 29, '1699879212-product_detail.-ban-chai-rua-mat-va-massage-silicone-tb1762-av11617269594.nv.jpg', NULL, '2023-11-13', '2023-11-13'),
(93, 29, '1699879212-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av4.jpg', NULL, '2023-11-13', '2023-11-13'),
(94, 29, '1699879269-product_detail.-ban-chai-rua-mat-va-massage-silicone-tb1762-av31617269594.nv.jpg', NULL, '2023-11-13', '2023-11-13'),
(95, 29, '1699879269-product_detail.-ban-chai-rua-mat-va-massage-silicone-tb1762-av21617269594.nv.jpg', NULL, '2023-11-13', '2023-11-13'),
(96, 29, '1699879269-product_detail.-ban-chai-rua-mat-va-massage-silicone-tb1762-av11617269594.nv.jpg', NULL, '2023-11-13', '2023-11-13'),
(97, 29, '1699879269-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av4.jpg', NULL, '2023-11-13', '2023-11-13'),
(98, 29, '1699879314-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av4.jpg', NULL, '2023-11-13', '2023-11-13'),
(99, 29, '1699879314-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av5.jpg', NULL, '2023-11-13', '2023-11-13'),
(100, 29, '1699879314-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av2.jpg', NULL, '2023-11-13', '2023-11-13'),
(101, 29, '1699879314-product_detail.-cay-lan-massage-mat-va-body-kakusan-kb-213-av1.jpg', NULL, '2023-11-13', '2023-11-13'),
(102, 30, '1699880328-product_detail.-may-tao-oxy-xach-tay-5-lit-dynmed-poc5-av4.jpg', NULL, '2023-11-13', '2023-11-13'),
(103, 30, '1699880328-product_detail.-may-tao-oxy-xach-tay-5-lit-dynmed-poc5-av3.jpg', NULL, '2023-11-13', '2023-11-13'),
(104, 30, '1699880328-product_detail.-may-tao-oxy-xach-tay-5-lit-dynmed-poc5-av1.jpg', NULL, '2023-11-13', '2023-11-13'),
(105, 30, '1699880328-product_detail.-may-tao-oxy-xach-tay-5-lit-dynmed-poc5-av2.jpg', NULL, '2023-11-13', '2023-11-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(11) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `id_customer`, `phone`, `address`, `created_at`, `status`, `deleted_at`, `updated_at`) VALUES
(5, 14, '0999888787', 'Hà nội', '2023-10-19 13:23:13', 1, NULL, '2023-10-17'),
(6, 19, '0999888987', 'hà nội', '2023-10-19 13:23:13', 1, NULL, '2023-10-17'),
(7, 20, '0999888765', 'Thanh Hóa', '2023-10-19 13:23:13', 0, NULL, '2023-10-17'),
(9, 22, '0999888787', 'hà đông, hà nội', '2023-10-19 13:23:13', 1, NULL, '2023-10-18'),
(10, 22, '0999888987', '1', '2023-10-19 13:23:13', 0, NULL, '2023-10-18'),
(11, 23, '0999888987', 'Hà nội', '2023-10-19 13:23:13', 1, NULL, '2023-10-19'),
(12, 23, '0999888474', 'aaaaa', '2023-10-19 13:23:13', 1, NULL, '2023-10-19'),
(13, 21, '0999884555', 'Hà nội', '2023-11-01 07:13:05', 0, NULL, '2023-11-01'),
(14, 21, '0999888444', 'Thanh Hóa', '2023-11-01 07:35:02', 1, NULL, '2023-11-01'),
(17, 21, '0999888987', 'sssss', '2023-11-01 07:56:35', 1, NULL, '2023-11-01'),
(18, 15, '0999888787', 'sss', '2023-11-06 05:06:52', 1, NULL, '2023-11-06'),
(19, 21, '0999888787', 'sss', '2023-11-06 10:52:03', 1, NULL, '2023-11-06'),
(20, 21, '0999888787', 'cdf', '2023-11-06 10:53:22', 1, NULL, '2023-11-06'),
(21, 15, '0999888787', 'hà nội', '2023-11-07 09:15:31', 1, NULL, '2023-11-07'),
(22, 15, '0999888787', 'Tam đảo', '2023-11-09 08:33:44', 1, NULL, '2023-11-09'),
(23, 24, '0999888989', 'Hà nội', '2023-11-13 12:30:36', 0, NULL, '2023-11-13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `id_order`, `id_sp`, `qty`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 5, 5, 3, '2023-10-17', '2023-10-17', NULL),
(8, 6, 5, 4, '2023-10-17', '2023-10-17', NULL),
(9, 6, 8, 3, '2023-10-17', '2023-10-17', NULL),
(10, 7, 5, 4, '2023-10-17', '2023-10-17', NULL),
(11, 7, 8, 3, '2023-10-17', '2023-10-17', NULL),
(12, 7, 6, 1, '2023-10-17', '2023-10-17', NULL),
(14, 9, 25, 1, '2023-10-18', '2023-10-18', NULL),
(15, 9, 6, 1, '2023-10-18', '2023-10-18', NULL),
(16, 10, 25, 2, '2023-10-18', '2023-10-18', NULL),
(17, 11, 6, 1, '2023-10-19', '2023-10-19', NULL),
(18, 12, 6, 1, '2023-10-19', '2023-10-19', NULL),
(19, 13, 6, 1, '2023-11-01', '2023-11-01', NULL),
(20, 13, 19, 1, '2023-11-01', '2023-11-01', NULL),
(21, 13, 25, 2, '2023-11-01', '2023-11-01', NULL),
(22, 13, 7, 1, '2023-11-01', '2023-11-01', NULL),
(23, 14, 6, 1, '2023-11-01', '2023-11-01', NULL),
(24, 14, 25, 1, '2023-11-01', '2023-11-01', NULL),
(25, 14, 7, 1, '2023-11-01', '2023-11-01', NULL),
(28, 17, 6, 5, '2023-11-01', '2023-11-01', NULL),
(29, 17, 25, 1, '2023-11-01', '2023-11-01', NULL),
(30, 18, 8, 1, '2023-11-06', '2023-11-06', NULL),
(31, 19, 26, 2, '2023-11-06', '2023-11-06', NULL),
(32, 20, 26, 2, '2023-11-06', '2023-11-06', NULL),
(33, 21, 19, 3, '2023-11-07', '2023-11-07', NULL),
(34, 22, 8, 1, '2023-11-09', '2023-11-09', NULL),
(35, 23, 26, 2, '2023-11-13', '2023-11-13', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `name_product` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `sp_hot` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `id_cat`, `name_product`, `image`, `price`, `price_sale`, `qty`, `preview`, `detail`, `sp_hot`, `deleted_at`, `updated_at`, `created_at`) VALUES
(4, 2, 'Máy xông hơi mặt công nghệ ion Reiwa WT-300', '1697451297-product.jpg', 300000, 239000, 10, '<p>M&aacute;y x&ocirc;ng hơi mặt c&ocirc;ng nghệ ion</p>', '<h2><strong>Giới thiệu m&aacute;y x&ocirc;ng hơi mặt c&ocirc;ng nghệ ion Reiwa WT-300</strong></h2>\r\n\r\n<p>Bạn đ&atilde; từng x&ocirc;ng hơi mặt bằng c&aacute;ch nh&igrave;n xuống chậu nước n&oacute;ng với một chiếc khăn tr&ugrave;m l&ecirc;n đầu? Trong thời đại m&agrave; c&aacute;c&nbsp;liệu ph&aacute;p spa cũng c&oacute; thể dễ d&agrave;ng thực hiện tại nh&agrave;, c&oacute; nhiều c&aacute;ch tốt hơn để x&ocirc;ng hơi so với phương ph&aacute;p truyền th&ocirc;ng.&nbsp;Một trong những lựa chọn tối ưu l&agrave; sử dụng&nbsp;<em><strong><a href=\"https://sieuthiyte.com.vn/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-1293.html\">m&aacute;y x&ocirc;ng hơi mặt Reiwa WT-300</a></strong></em>.</p>\r\n\r\n<p><img alt=\"Giới thiệu máy xông hơi mặt công nghệ ion Reiwa WT-300\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-nbbs1.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><em>M&aacute;y x&ocirc;ng hơi mặt c&ocirc;ng nghệ ion Reiwa WT-300</em></p>\r\n\r\n<p>Sản phẩm sẽ chuyển h&oacute;a nước th&agrave;nh hơi nước ion si&ecirc;u mịn, gi&uacute;p l&agrave;m mềm lỗ ch&acirc;n l&ocirc;ng v&agrave; bề mặt da, loại bỏ dầu thừa dễ d&agrave;ng hơn v&agrave; l&agrave;m th&ocirc;ng tho&aacute;ng da&nbsp;ho&agrave;n hảo.&nbsp;Bằng c&aacute;ch l&agrave;m mềm lớp da mặt b&ecirc;n ngo&agrave;i, hơi nước từ&nbsp;<em><strong>m&aacute;y x&ocirc;ng hơi mặt ion Reiwa WT300</strong></em>&nbsp;c&oacute; thể th&uacute;c đẩy sự hấp thụ c&aacute;c dưỡng chất chăm s&oacute;c da&nbsp;của bạn tốt hơn.</p>\r\n\r\n<p><img alt=\"Máy xông hơi mặt Reiwa WT-300 chính hãng\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-nbbs3.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>M&aacute;y x&ocirc;ng hơi mặt Reiwa WT-300 ch&iacute;nh h&atilde;ng</em></p>\r\n\r\n<h2><strong>Đối tượng kh&ocirc;ng n&ecirc;n sử dụng m&aacute;y x&ocirc;ng hơi mặt</strong></h2>\r\n\r\n<p><em>Những người kh&ocirc;ng n&ecirc;n sử dụng&nbsp;<strong><a href=\"https://sieuthiyte.com.vn/may-xong-hoi-mat\" target=\"_blank\">m&aacute;y x&ocirc;ng hơi mặt</a></strong><strong>&nbsp;</strong>gồm c&oacute;</em><em>:</em></p>\r\n\r\n<ul>\r\n	<li>Phụ nữ c&oacute; thai hoặc đang chuẩn bị mang thai.</li>\r\n	<li>Người bị dị ứng, c&oacute; vấn đề về da.</li>\r\n	<li>Người bị chấn thương, bệnh ch&agrave;m, sưng tấy.</li>\r\n	<li>Người vừa hồi phục sau điều trị.</li>\r\n</ul>\r\n\r\n<h2><strong>Ưu điểm v&agrave; t&iacute;nh năng m&aacute;y x&ocirc;ng hơi mặt Reiwa WT-300&nbsp;c&ocirc;ng nghệ ion</strong></h2>\r\n\r\n<ul>\r\n	<li>M&aacute;y x&ocirc;ng hơi mặt Reiwa WT-300 c&oacute; t&aacute;c dụng&nbsp;<strong>mở v&agrave; th&ocirc;ng tho&aacute;ng lỗ ch&acirc;n l&ocirc;ng</strong>,&nbsp;<strong>tẩy tế b&agrave;o chết</strong>&nbsp;tr&ecirc;n mặt,&nbsp;<strong>cải thiện khả năng hấp thụ dưỡng chất của da</strong>, dưỡng ẩm v&agrave; gi&uacute;p da mịn m&agrave;ng.</li>\r\n	<li>Thiết bị cung cấp&nbsp;<strong>hơi nước ion nano</strong>&nbsp;mạnh v&agrave; với độ ấm nhẹ nh&agrave;ng gi&uacute;p l&agrave;m dịu v&agrave; cấp nước cho da nhưng kh&ocirc;ng g&acirc;y k&iacute;ch ứng.</li>\r\n	<li>Chỉ mất&nbsp;<strong>40s</strong>&nbsp;từ khi bật chế độ khởi động để hơi nước bắt đầu phun ra từ m&aacute;y. Đ&acirc;y l&agrave; thời gian nhanh nhất so với c&aacute;c loại m&aacute;y x&ocirc;ng kh&aacute;c tr&ecirc;n thị trường.</li>\r\n	<li><strong>Nếu kh&ocirc;ng c&oacute; nước trong b&igrave;nh</strong>, kh&iacute; x&ocirc;ng sẽ kh&ocirc;ng xuất hiện, m&aacute;y sẽ tự ngưng hoạt động v&agrave; nhiệt độ sẽ giảm để đảm bảo an to&agrave;n cho người d&ugrave;ng.</li>\r\n	<li><strong>Khi lưu lượng nước giảm</strong>, c&aacute;ch ph&aacute;t ra kh&iacute; x&ocirc;ng sẽ thay đổi như một &ldquo;nhắc nhở&rdquo; để bạn th&ecirc;m nước sử dụng.</li>\r\n	<li>Sản phẩm c&oacute;&nbsp;<strong>chức năng bảo vệ qu&aacute; nhiệt</strong>&nbsp;cho ph&eacute;p bạn x&ocirc;ng hơi mặt ở nhiệt độ vừa phải v&agrave; an to&agrave;n.</li>\r\n	<li><strong>Thiết kế nhẹ</strong>&nbsp;v&agrave;&nbsp;<strong>di động</strong>, bạn c&oacute; thể mang theo đến bất kỳ nơi đ&acirc;u để tận hưởng trải nghiệm x&ocirc;ng hơi mặt sảng kho&aacute;i.</li>\r\n	<li><strong>Nguồn điện kết nối trực tiếp</strong>&nbsp;dễ sử dụng, vận h&agrave;nh đơn giản bằng một n&uacute;t ấn.</li>\r\n	<li><strong>Nắp đậy</strong>&nbsp;đi k&egrave;m để tr&aacute;nh bụi bẩn b&aacute;m v&agrave;o đầu phun, đảm bảo an to&agrave;n vệ sinh tuyệt đối khi sử dụng.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Ưu điểm và tính năng máy xông hơi mặt Reiwa WT-300 công nghệ ion\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-ndf2.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Máy xông hơi mặt Reiwa WT-300 có dung tích bình chứa lớn\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-nd9.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Máy xông hơi mặt công nghệ ion Reiwa WT-300 sẽ giúp bạn thư giãn hiệu quả\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-ndf3.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Máy xông hơi mặt Reiwa WT-300 có đèn UV làm sạch vi khuẩn\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-nd4.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Cấu tạo máy xông hơi mặt Reiwa WT-300\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-nd6.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><strong>Phụ kiện sản phẩm</strong></p>\r\n\r\n<ul>\r\n	<li>Th&acirc;n m&aacute;y</li>\r\n	<li>D&acirc;y sạc</li>\r\n	<li>S&aacute;ch HDSD.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Máy xông hơi mặt công nghệ ion Reiwa WT-300\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-nbbs2.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><strong>Một số h&igrave;nh ảnh kh&aacute;c</strong></p>\r\n\r\n<p><strong><img alt=\"Máy xông hơi mặt Reiwa WT-300 giá rẻ\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-nbbs7.jpg\" style=\"width:650px\" /></strong></p>\r\n\r\n<p><strong><img alt=\"Máy xông hơi mặt Reiwa WT-300 chất lượng\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-nbbs5.jpg\" style=\"width:650px\" /></strong></p>\r\n\r\n<p><strong><img alt=\"Phía sau của Máy xông hơi mặt công nghệ ion Reiwa WT-300\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-nbbs6.jpg\" style=\"width:650px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Máy xông hơi mặt công nghệ ion Reiwa WT-300 có thiết kế nhỏ gọn\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-hoi-mat-cong-nghe-ion-reiwa-wt-300-nbbs4.jpg\" style=\"width:650px\" /></p>', 1, NULL, '2023-10-16', '2023-10-16 03:14:57'),
(6, 6, 'Đai quấn nóng tan mỡ bụng Relaxsan Art.LCF271', '1697451807-product.jpg', 600000, 529000, 40, '<p>Đai quấn n&oacute;ng Relaxsan Art.LCF271</p>', '<p><strong>Đai quấn n&oacute;ng tan mỡ bụng Relaxsan Art.LCF271</strong></p>\r\n\r\n<h2><strong>Giới thiệu sản phẩm</strong></h2>\r\n\r\n<p>Đai quấn n&oacute;ng Relaxsan Art.LCF271 l&agrave; sản phẩm đến từ thương hiệu<strong>&nbsp;Relaxsan</strong>, một thương hiệu nổi tiếng của &Yacute; trong việc sản xuất c&aacute;c sản phẩm vớ Y khoa, quần y khoa, sản phẩm legging&hellip;</p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/Y/3_44.png\" style=\"width:600px\" /></p>\r\n\r\n<p><em><a href=\"https://sieuthiyte.com.vn/dai-quan-nong-tan-mo-bung-relaxsan-art-lcf271-1002.html\" target=\"_blank\">Đai quấn n&oacute;ng tan mỡ bụng Relaxsan Art.LCF271</a></em></p>\r\n\r\n<p>Mới đ&acirc;y, Relaxsan cho ra đời một loạt c&aacute;c d&ograve;ng sản phẩm đai quấn n&oacute;n, trong đ&oacute; c&oacute; sản phẩm Art.LCF 271. Sản phẩm đai bụng n&agrave;y ph&ugrave; hợp với việc giảm c&acirc;n, điều trị nhiệt cục bộ c&aacute;c bộ phận xung quanh bụng v&agrave; lưng.</p>\r\n\r\n<h2><strong>Ưu điểm v&agrave; t&iacute;nh năng sản phẩm</strong></h2>\r\n\r\n<ul>\r\n	<li>Đai quấn n&oacute;ng tan mỡ bụng Relaxsan Art.LCF 271 cấu tạo từ chủ yếu từ b&ocirc;ng v&agrave; len, do đ&oacute; gi&uacute;p l&agrave;m n&oacute;ng v&ugrave;ng quấn, tăng cường qu&aacute; tr&igrave;nh đốt mỡ. Bộ phận quấn đai n&oacute;ng l&ecirc;n l&agrave;m gi&atilde;n mạch m&aacute;u, hỗ trợ trao đổi chất v&agrave; b&agrave;i tiết c&aacute;c chất độc hại ra ngo&agrave;i, qua lỗ ch&acirc;n l&ocirc;ng v&agrave; mồ h&ocirc;i.</li>\r\n	<li>Ph&ugrave; hợp với những người muốn giảm mỡ bụng. Gi&uacute;p v&ograve;ng eo giảm đi nhanh ch&oacute;ng.</li>\r\n	<li>Ph&ugrave; hợp cả với những người cần điều trị vi&ecirc;m thận, vi&ecirc;m đại tr&agrave;ng, bệnh về cột sống.</li>\r\n	<li>Đai nhiệt Relaxsan Art.LCF 271 c&oacute; cấu tạo h&igrave;nh ống,th&agrave;nh phần c&oacute; sợi acrylic gi&uacute;p b&oacute; s&aacute;t cơ thể, kiểm so&aacute;t độ ẩm rất tốt.</li>\r\n	<li>Art LCF 271 cao đến 27 cm, sẽ &ocirc;m s&aacute;t đến tận v&ugrave;ng xương sườn, gi&uacute;p c&oacute; thể vận động dễ d&agrave;ng hơn.</li>\r\n	<li>Sản phẩm kh&ocirc;ng dung điện n&ecirc;n kh&ocirc;ng g&acirc;y bỏng.</li>\r\n	<li>Kh&ocirc;ng g&acirc;y k&iacute;ch ứng da.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/Y/lcf271.png\" style=\"width:500px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/Y/1_46.png\" style=\"width:600px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/Y/2_46.png\" style=\"width:600px\" /></p>', 1, NULL, '2023-10-16', '2023-10-16 03:23:27'),
(7, 7, 'Máy đo nồng độ oxy trong máu SPO2 Wellmed FS20F', '1697451983-product.jpg', 1000000, 899000, 29, '<p>M&aacute;y đo nồng độ oxy trong m&aacute;u</p>', '<h2><strong>Giới thiệu&nbsp;m&aacute;y đo nồng độ SPO2 Wellmed FS20F</strong></h2>\r\n\r\n<ul>\r\n	<li>M&aacute;y đo nồng độ oxy trong m&aacute;u<strong>&nbsp;Wellmed FS20F</strong>&nbsp;l&agrave; sản phẩm chuy&ecirc;n d&ugrave;ng để theo d&otilde;i độ b&atilde;o h&ograve;a oxy trong m&aacute;u (SPO2) v&agrave; nhịp tim.&nbsp;</li>\r\n	<li>Đ&acirc;y l&agrave; sản phẩm đến từ thương hiệu Wellmed - Chuy&ecirc;n sản xuất c&aacute;c thương hiệu thiết bị y tế v&agrave; chăm s&oacute;c sức khỏe đạt &quot;Ti&ecirc;u chuẩn an to&agrave;n hiệu suất: YY 0670 / IEC 60601-2-30&hellip;&nbsp;</li>\r\n	<li>Sản phẩm c&oacute; k&iacute;ch thước nhỏ gọn, kh&ocirc;ng x&acirc;m lấn n&ecirc;n rất tiện lợi d&ugrave;ng cho cả trẻ nhỏ v&agrave; người trưởng th&agrave;nh.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-do-nong-do-oxy-trong-mau-spo2-wellmed-fs20-nd1-1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><a href=\"https://sieuthiyte.com.vn/may-do-nong-do-oxy-trong-mau-spo2-wellmed-fs20f-1243.html\"><em>M&aacute;y đo nồng độ oxy trong m&aacute;u SPO2 Wellmed FS20F</em></a></p>\r\n\r\n<h2><strong>Nồng độ oxy trong m&aacute;u l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p>Nồng độ oxy trong m&aacute;u SpO2 l&agrave; chỉ số rất quan trọng để phản &aacute;nh cơ thể c&oacute; đang khỏe mạnh hay kh&ocirc;ng. V&agrave; để biết được chỉ số SpO2 l&agrave; bao nhi&ecirc;u, người ta sẽ d&ugrave;ng m&aacute;y đo nồng độ b&atilde;o h&ograve;a oxy trong mạch m&aacute;u v&agrave; nhịp tim. Từ đ&oacute; ph&aacute;t hiện sự bất thường trong cơ thể để c&oacute; c&aacute;ch xử l&yacute; kịp thời.</p>\r\n\r\n<h2><strong>C&aacute;c chỉ số nồng độ oxy trong m&aacute;u (SpO2)</strong></h2>\r\n\r\n<ul>\r\n	<li>Chỉ số SpO2 ở người b&igrave;nh thường sẽ dao động ở mức 95 - 100%, chứng tỏ lượng oxy trong cơ thể đủ để cung cấp năng lượng cho cơ bắp hoạt động.&nbsp;</li>\r\n	<li>Ngược lại, nếu chỉ số SpO2 dưới mức 95%, đ&acirc;y l&agrave; dấu hiệu cảnh b&aacute;o oxy h&oacute;a m&aacute;u k&eacute;m, c&ograve;n được gọi l&agrave; t&igrave;nh trạng m&aacute;u thiếu oxy. L&uacute;c n&agrave;y, người bệnh cần được cấp cứu v&agrave; c&oacute; phương &aacute;n chữa trị kịp thời</li>\r\n</ul>\r\n\r\n<p><strong>Dưới đ&acirc;y l&agrave; thang đo chỉ số SpO2 ti&ecirc;u chuẩn:</strong></p>\r\n\r\n<ul>\r\n	<li>Chỉ số SpO2 từ 97 - 99%: Chỉ số oxy trong m&aacute;u tốt</li>\r\n	<li>Chỉ số SpO2 từ 94 - 96%: Chỉ số oxy trong m&aacute;u trung b&igrave;nh, cần thở th&ecirc;m oxy</li>\r\n	<li>Chỉ số SpO2 từ 90% - 93%: Chỉ số oxy trong m&aacute;u thấp, cần xin &yacute; kiến của b&aacute;c sĩ chữa trị</li>\r\n	<li>Chỉ số SpO2 dưới 92% kh&ocirc;ng thở oxy hoặc dưới 95% c&oacute; thở oxy: Dấu hiệu bệnh nh&acirc;n đang bị suy h&ocirc; hấp rất nặng</li>\r\n	<li>Chỉ số SpO2 dưới 90%: Biểu hiện của một ca cấp cứu tr&ecirc;n l&acirc;m s&agrave;ng.</li>\r\n</ul>\r\n\r\n<h2><strong>Đối tượng n&agrave;o n&ecirc;n sử dụng m&aacute;y đo nồng độ oxy trong m&aacute;u Wellmed FS20F?&nbsp;</strong></h2>\r\n\r\n<ul>\r\n	<li>M&aacute;y đo nồng độ oxy m&aacute;u Wellmed FS20F sử dụng được cho tất cả c&aacute;c đối tượng từ người gi&agrave;, người lớn cho tới trẻ em c&oacute; nhu cầu kiểm tra nồng độ oxy trong m&aacute;u v&agrave; kiểm tra nhịp tim</li>\r\n	<li>Sản phẩm rất hữu &iacute;ch cho nhu cầu theo d&otilde;i sức khỏe của c&aacute;c bệnh nh&acirc;n mắc bệnh tim, hen suyễn, huyết &aacute;p thấp&hellip;</li>\r\n	<li>C&aacute;c vận động vi&ecirc;n chơi c&aacute;c m&ocirc;n thể thao ở độ cao như leo n&uacute;i, thể thao h&agrave;ng kh&ocirc;ng...cũng rất th&iacute;ch hợp d&ugrave;ng sản phẩm n&agrave;y để kiểm tra, theo d&otilde;i sức khỏe h&agrave;ng ng&agrave;y.</li>\r\n	<li>Mỗi gia đ&igrave;nh hiện đại, nhất l&agrave; những gia đ&igrave;nh c&oacute; người gi&agrave; v&agrave; trẻ nhỏ n&ecirc;n tự chủ động trang bị một chiếc m&aacute;y đo nồng độ oxy m&aacute;u Wellmed FS20F để tiện cho việc theo d&otilde;i sức khỏe tại nh&agrave; v&agrave; chủ động ph&ograve;ng tr&aacute;nh được những biến chứng nặng c&oacute; thể xảy ra cho người bệnh.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-do-nong-do-oxy-trong-mau-spo2-wellmed-fs20f-nd1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>SPO2 Wellmed FS20F d&agrave;nh cho nhiều đối tượng sử dụng, kết quả nhanh ch&oacute;ng</em></p>\r\n\r\n<p><em>Xem th&ecirc;m:&nbsp;<strong><a href=\"https://sieuthiyte.com.vn/may-do-nong-do-oxy-dien-tim\" target=\"_blank\">m&aacute;y&nbsp;đo nồng&nbsp;độ oxy trong m&aacute;u SPO2</a>&nbsp;Wellmed kh&aacute;c</strong></em></p>\r\n\r\n<h2><strong>Ưu điểm v&agrave; t&iacute;nh năng m&aacute;y&nbsp;đo SPO2 của Wellmed</strong></h2>\r\n\r\n<ul>\r\n	<li>K&iacute;ch thước nhỏ gọn, dễ mang theo b&ecirc;n người để thuận tiện d&ugrave;ng khi cần.</li>\r\n	<li>M&aacute;y chỉ c&oacute;&nbsp;<strong>1 n&uacute;t bấm</strong>&nbsp;n&ecirc;n rất dễ sử dụng cho mọi lứa tuổi.</li>\r\n	<li>Mức&nbsp;<strong>ti&ecirc;u thụ điện năng thấp</strong>&nbsp;v&agrave; c&oacute; chỉ b&aacute;o pin yếu.</li>\r\n	<li><strong>Ba chế độ</strong>&nbsp;kh&aacute;c nhau:&nbsp;<strong>Chế độ tắt nguồn</strong>,&nbsp;<strong>chế độ chờ</strong>&nbsp;v&agrave;&nbsp;<strong>chế độ đo</strong>.</li>\r\n	<li>T&iacute;nh năng tự động&nbsp;<strong>chuyển sang chế độ chờ trong v&ograve;ng 8 gi&acirc;y</strong>&nbsp;<strong>sau khi kh&ocirc;ng c&oacute; t&iacute;n hiệu</strong>.</li>\r\n	<li>M&agrave;n h&igrave;nh hiển thị rộng v&agrave;&nbsp;<strong>đ&egrave;n LED</strong>&nbsp;gi&uacute;p người d&ugrave;ng dễ d&agrave;ng theo d&otilde;i.</li>\r\n	<li>M&aacute;y c&oacute; 2 m&agrave;u sắc kh&aacute;c nhau để lựa chọn: trắng v&agrave; đen.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-do-nong-do-oxy-trong-mau-spo2-wellmed-fs20f-nd2.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>K&iacute;ch thước nhỏ gọn dễ mang theo</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-do-nong-do-oxy-trong-mau-spo2-wellmed-fs20-nd2-1.jpg\" style=\"width:600px\" /></em></p>\r\n\r\n<p><em>M&agrave;n h&igrave;nh cong 2D&nbsp;thể hiện&nbsp;r&otilde; r&agrave;ng chỉ số kết quả</em></p>\r\n\r\n<h2><strong>Phụ kiện đi k&egrave;m với sản phẩm</strong></h2>\r\n\r\n<ul>\r\n	<li>Th&acirc;n m&aacute;y ch&iacute;nh</li>\r\n	<li>D&acirc;y buộc</li>\r\n	<li>2 Pin 3A</li>\r\n	<li>S&aacute;ch hướng dẫn</li>\r\n	<li>T&uacute;i đựng.</li>\r\n</ul>', 1, NULL, '2023-10-16', '2023-10-16 03:26:23'),
(8, 12, 'Máy tạo oxy 5 lít Reiwa K5BW - Có xông mũi', '1697452148-product.jpg', 8000000, 7200000, 100, '<p>M&aacute;y tạo oxy 5 l&iacute;t</p>', '<h2><strong>Giới thiệu&nbsp;m&aacute;y tạo oxy 5 l&iacute;t&nbsp;Reiwa K5BW</strong></h2>\r\n\r\n<p><strong><em>M&aacute;y tạo oxy 5 l&iacute;t Reiwa K5BW (C&oacute; t&iacute;ch hợp x&ocirc;ng mũi họng)</em>&nbsp;</strong>l&agrave; thiết bị cung cấp nguồn oxy tinh khiết với dung t&iacute;ch 5 l&iacute;t, xuất xứ từ thương hiệu Reiwa h&agrave;ng đầu.&nbsp;M&aacute;y c&oacute; khả năng ph&aacute;t hiện lỗi như nồng độ oxy thấp v&agrave; hiển thị c&aacute;c cảnh b&aacute;o an to&agrave;n, gi&uacute;p người d&ugrave;ng ph&aacute;t hiện kịp thời sự cố v&agrave; sửa chữa.</p>\r\n\r\n<p>Thiết bị d&ugrave;ng cho c&aacute;c bệnh nh&acirc;n được chẩn đo&aacute;n cần bổ sung oxy, bệnh nh&acirc;n mắc bệnh đường h&ocirc; hấp như ho, hen suyễn, vi&ecirc;m phổi, phổi tắc nghẽn m&atilde;n t&iacute;nh&hellip;&nbsp;<strong><a href=\"https://sieuthiyte.com.vn/may-tao-oxy\">M&aacute;y tạo oxy</a></strong>&nbsp;cung cấp bổ sung nguồn oxy tinh khiết với nồng độ cao, hỗ trợ qu&aacute; tr&igrave;nh điều trị. M&aacute;y được sử dụng tại nh&agrave;, ph&ograve;ng kh&aacute;m, bệnh viện.</p>\r\n\r\n<p><img alt=\"Máy tạo oxy 5 lít Reiwa K5BW\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-reiwa-k5bw-ndbs1.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><strong><em><a href=\"https://sieuthiyte.com.vn/may-tao-oxy-5-lit-reiwa-k5bw-1230.html\">M&aacute;y tạo oxy 5 l&iacute;t Reiwa K5BW</a></em></strong></p>\r\n\r\n<h2><strong>Ưu điểm m&aacute;y tạo oxy Reiwa 5 l&iacute;t</strong></h2>\r\n\r\n<ul>\r\n	<li>Lưu lượng d&ograve;ng chảy oxy cung cấp cho bệnh nh&acirc;n l&ecirc;n đến&nbsp;<strong>5 l&iacute;t/ph&uacute;t</strong>.</li>\r\n	<li>Chuyển chế độ giữa&nbsp;<strong>tạo oxy</strong>&nbsp;v&agrave;&nbsp;<strong>x&ocirc;ng mũi họng</strong>&nbsp;với c&ugrave;ng 1 n&uacute;t bấm.</li>\r\n	<li>Oxy y tế c&oacute; nồng&nbsp;<strong>độ tinh khiết cao 93% +/-3%</strong>, đ&aacute;p ứng nhu cầu chữa bệnh của người d&ugrave;ng.</li>\r\n	<li>T&iacute;nh năng thống k&ecirc; thời gian hoạt động của m&aacute;y.&nbsp;</li>\r\n	<li><strong>Chức năng bảo vệ</strong>&nbsp;khi xuất hiện t&igrave;nh trạng qu&aacute; tải nhiệt hoặc hoạt động qu&aacute; tải.&nbsp;</li>\r\n	<li><strong>Hệ thống b&aacute;o động</strong>&nbsp;khi m&aacute;y mất nguồn đột ngột, &aacute;p suất thấp/cao, độ tinh khiết dưới 82%.</li>\r\n	<li>M&aacute;y hoạt động &ecirc;m &aacute;i,&nbsp;<strong>độ ồn &le; 48 dB</strong>, kh&ocirc;ng ảnh hưởng đến giấc ngủ của người bệnh.&nbsp;</li>\r\n	<li>Thiết kế m&aacute;y<strong>&nbsp;nhỏ gọn</strong>, c&oacute; 4 b&aacute;nh xe, dễ di chuyển trong nh&agrave;, ph&ograve;ng kh&aacute;m, bệnh viện.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong><em>T&igrave;m hiểu sản phẩm mới:&nbsp;<a href=\"https://sieuthiyte.com.vn/may-tao-oxy-owgels-oz-5-01tw0-co-xong-mui-815.html\">Owgels OZ-5-01TW0</a></em></strong></p>\r\n\r\n<p><img alt=\"Chi tiết thân máy\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-reiwa-k5bw-ndbs33.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><em>Chi tiết th&acirc;n m&aacute;y</em></p>\r\n\r\n<p><img alt=\"Thiết kế hiện đại, sang trọng\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-reiwa-k5bw-nd1.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><em>Thiết kế hiện đại, sang trọng</em></p>\r\n\r\n<p><em><img alt=\"Máy tạo oxy dung tích 5 lít\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-reiwa-k5bw-nd-new1.jpg\" style=\"width:650px\" /></em></p>\r\n\r\n<p><em><img alt=\"Máy tạo oxy 5 lít Reiwa K5BW tích hợp chức năng xông mũi\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-reiwa-k5bw-nd-new2.jpg\" style=\"width:650px\" /></em></p>\r\n\r\n<p><em><img alt=\"Máy tạo oxy 5 lít Reiwa K5BW có độ tinh khiết oxy đạt chuẩn &gt; 90%\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-reiwa-k5bw-nd-new3.jpg\" style=\"width:650px\" /></em></p>\r\n\r\n<p><em><img alt=\"Máy tạo oxy Reiwa K5BW có trang bị cầu chì an toàn\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-reiwa-k5bw-nd-new4.jpg\" style=\"width:650px\" /></em></p>\r\n\r\n<p><em><img alt=\"Khóa chống trượt máy tạo oxy Reiwa\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-reiwa-k5bw-nd-new5.jpg\" style=\"width:650px\" /></em></p>\r\n\r\n<p><em><img alt=\"Đầu gắn bình tạo ẩm và ống xông oxy Reiwa 5 lít\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-reiwa-k5bw-nd-new6.jpg\" style=\"width:650px\" /></em></p>\r\n\r\n<p><em><img alt=\"Gắn dây oxy\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-reiwa-k5bw-nd-new7.jpg\" style=\"width:650px\" /></em></p>\r\n\r\n<p><em><img alt=\"Gắn dây khí dung oxy Reiwa\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-reiwa-k5bw-nd-new8.jpg\" style=\"width:650px\" /></em></p>\r\n\r\n<h2><strong>Phụ kiện sản phẩm&nbsp;</strong></h2>\r\n\r\n<ul>\r\n	<li>Th&acirc;n m&aacute;y</li>\r\n	<li>1 b&igrave;nh tạo ẩm</li>\r\n	<li>1 d&acirc;y oxy</li>\r\n	<li>1 d&acirc;y kh&iacute; dung</li>\r\n	<li>1 ống ngậm</li>\r\n	<li>1 buồng thuốc</li>\r\n	<li>1 mặt nạ người lớn</li>\r\n	<li>1 mặt nạ trẻ em</li>\r\n	<li>1 van kết nối bộ x&ocirc;ng kh&iacute;</li>\r\n	<li>HDSD v&agrave; Phiếu bảo h&agrave;nh.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Chi tiết phụ kiện\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tao-oxy-5-lit-reiwa-k5bw-ndbs2.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><em>Chi tiết phụ kiện</em></p>\r\n\r\n<p><strong><em>Xem th&ecirc;m c&aacute;c sản phẩm m&aacute;y tạo oxy 5 l&iacute;t</em></strong></p>\r\n\r\n<ul>\r\n	<li><strong><em><a href=\"https://sieuthiyte.com.vn/may-tao-oxy-5-lit-wellmed-do2-5a-series-1174.html\" target=\"_blank\">M&aacute;y tạo oxy 5 l&iacute;t Wellmed DO2-5A Series - C&oacute; x&ocirc;ng mũi</a></em></strong></li>\r\n	<li><strong><em><a href=\"https://sieuthiyte.com.vn/may-tao-oxy-philips-everflo-99.html\" target=\"_blank\">M&aacute;y tạo oxy 5 l&iacute;t Philips EverFlo</a></em></strong></li>\r\n</ul>', 1, NULL, '2023-10-16', '2023-10-16 03:29:08'),
(9, 8, 'Máy trợ thở mini xách tay Snore Circle Auto CPAP YA50', '1697455821-product.jpg', 12000000, 1900000, 199, '<p>M&aacute;y trợ thở mini&nbsp;</p>', '<h2><strong>Giới thiệu&nbsp;m&aacute;y trợ thở mini x&aacute;ch tay Snore Circle Auto CPAP YA50</strong></h2>\r\n\r\n<p><em><strong>M&aacute;y trợ thở mini x&aacute;ch tay Auto CPAP Snore Circle YA50</strong></em>&nbsp;l&agrave; thiết bị trợ thở di động, kh&ocirc;ng x&acirc;m lấn được t&iacute;ch hợp&nbsp;2 chế độ&nbsp;APAP&nbsp;v&agrave;&nbsp;CPAP. &Aacute;p lực đường thở dương gi&uacute;p giữ cho đường h&ocirc; hấp tr&ecirc;n của người d&ugrave;ng th&ocirc;ng tho&aacute;ng v&agrave; kh&ocirc;ng bị cản trở, loại bỏ t&igrave;nh trạng ng&aacute;y, kh&oacute; thở v&agrave; ngưng thở khi ngủ. Với&nbsp;<em><strong><a href=\"https://sieuthiyte.com.vn/may-tro-tho-cpap-bpap\">m&aacute;y thở cpap</a></strong></em>&nbsp;<strong><em>Snore Circle YA50</em></strong>, người d&ugrave;ng c&oacute; thể tận hưởng giấc ngủ y&ecirc;n tĩnh v&agrave; thoải m&aacute;i nhất.</p>\r\n\r\n<p><img alt=\"Máy trợ thở mini xách tay Snore Circle Auto CPAP YA50\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd1.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><em>M&aacute;y trợ thở mini x&aacute;ch tay Snore Circle Auto CPAP YA50</em></p>\r\n\r\n<p>M&aacute;y trợ thở&nbsp;Snore Circle YA50 sở hữu c&ocirc;ng nghệ HEM hiện đại bậc nhất ho&agrave;n to&agrave;n kh&aacute;c biệt với d&ograve;ng m&aacute;y trợ thở truyền thống, tạo ra độ ẩm m&agrave; kh&ocirc;ng cần nước v&ocirc; c&ugrave;ng tiện dụng, gi&uacute;p người d&ugrave;ng lu&ocirc;n thấy dễ chịu v&agrave; kh&ocirc;ng bị kh&ocirc; họng khi trị liệu.&nbsp;</p>\r\n\r\n<p><img alt=\"Máy trợ thở mini Auto CPAP Snore Circle YA50\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd2.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, thiết bị t&iacute;ch hợp đầy đủ c&aacute;c chức năng của một&nbsp;<strong><a href=\"https://sieuthiyte.com.vn/may-tro-tho\">m&aacute;y trợ thở cao cấp</a></strong>&nbsp;như: t&iacute;nh năng tự động bắt đầu/dừng, giảm &aacute;p lực, thời gian tăng tốc, giảm tiếng ồn, cảnh b&aacute;o r&ograve; rỉ, hoạt động liền mạch với ứng dụng VVFLY YA50 để t&ugrave;y chỉnh c&agrave;i đặt v&agrave; theo d&otilde;i dữ liệu.</p>\r\n\r\n<h2><strong>Ưu điểm v&agrave; t&iacute;nh năng&nbsp;m&aacute;y trợ thở mini Auto CPAP YA50</strong></h2>\r\n\r\n<ul>\r\n	<li>M&aacute;y trợ thở mini x&aacute;ch tay Auto CPAP Snore Circle YA50&nbsp;trang bị&nbsp;<strong>cảm biến ti&ecirc;n tiến</strong>&nbsp;đ&atilde; được kiểm tra v&agrave; hiệu chỉnh nghi&ecirc;m ngặt c&oacute; thể ph&aacute;t hiện cả những thay đổi nhỏ nhất trong nhịp thở, cung cấp khả năng&nbsp;<strong>theo d&otilde;i ch&iacute;nh x&aacute;c về c&aacute;c hoạt động thở</strong>&nbsp;bao gồm&nbsp;<strong>ng&aacute;y</strong>,&nbsp;<strong>giảm thở</strong>&nbsp;v&agrave;&nbsp;<strong>ngừng thở khi ngủ</strong>.</li>\r\n	<li>Cung cấp&nbsp;<strong>hai chế độ APAP v&agrave; CPAP</strong>&nbsp;để người d&ugrave;ng nhận được c&agrave;i đặt &aacute;p suất tối ưu theo kiểu thở v&agrave; sở th&iacute;ch c&aacute; nh&acirc;n, từ đ&oacute; gi&uacute;p ngăn ngừa ng&aacute;y v&agrave; duy tr&igrave; nhịp thở khỏe mạnh trong khi ngủ:</li>\r\n</ul>\r\n\r\n<p><em>&gt;&nbsp;Chế độ CPAP: Tạo ra gi&aacute; trị &aacute;p suất li&ecirc;n tục v&agrave; kh&ocirc;ng đổi trong qu&aacute; tr&igrave;nh thở ra v&agrave; h&iacute;t v&agrave;o.</em></p>\r\n\r\n<p><em>&gt;&nbsp;Chế độ APAP: Tự động điều chỉnh &aacute;p suất luồng kh&iacute; đầu ra khi ph&aacute;t hiện người d&ugrave;ng c&oacute; dấu hiệu ngưng thở, thở gấp hoặc ng&aacute;y ngủ.</em></p>\r\n\r\n<ul>\r\n	<li><strong>T&iacute;nh năng tự động bắt đầu</strong>: Thiết bị tự động bắt đầu trị liệu ở &aacute;p suất đ&atilde; đặt khi người d&ugrave;ng thở li&ecirc;n tục v&agrave;o mặt nạ (tốc độ d&ograve;ng kh&iacute; tho&aacute;t ra &gt; 15 LPM). Khi t&iacute;nh năng n&agrave;y tắt, thiết bị chỉ được khởi động thủ c&ocirc;ng bằng ứng dụng hoặc n&uacute;t.</li>\r\n	<li><strong>T&iacute;nh năng tự động dừng</strong>: Thiết bị tự động ngừng trị liệu khi kh&ocirc;ng ph&aacute;t hiện chu kỳ h&ocirc; hấp (tốc độ d&ograve;ng kh&iacute; ra thay đổi hơn 50%, k&eacute;o d&agrave;i &iacute;t nhất 15 gi&acirc;y). Khi t&iacute;nh năng n&agrave;y tắt, thiết bị chỉ dừng thủ c&ocirc;ng bằng ứng dụng hoặc n&uacute;t.</li>\r\n	<li><strong>Thời gian tăng tốc</strong>: &Aacute;p lực trị liệu tăng dần gi&uacute;p người d&ugrave;ng trị liệu thoải m&aacute;i hơn khi cố gắng ch&igrave;m v&agrave;o giấc ngủ. C&oacute; thể được đặt tự động, tắt hoặc khoảng thời gian t&ugrave;y chỉnh từ 5 - 60 ph&uacute;t.</li>\r\n	<li><strong>Giảm &aacute;p lực</strong>: Đảm bảo sự thoải m&aacute;i trong qu&aacute; tr&igrave;nh trị liệu. C&oacute; 5 t&ugrave;y chọn gồm cấp 1 - 2 - 3, tự động v&agrave; tắt.</li>\r\n	<li><strong>C&ocirc;ng nghệ HEM</strong>&nbsp;cung cấp độ ẩm hiệu quả m&agrave; kh&ocirc;ng cần nước hoặc điện, th&acirc;n thiện hơn với người d&ugrave;ng:</li>\r\n</ul>\r\n\r\n<p><em>&gt; Thiết bị d&ugrave;ng một miếng đệm tạo độ ẩm chuy&ecirc;n dụng để hấp thụ độ ẩm từ hơi thở của người d&ugrave;ng v&agrave; đưa trở lại trong qu&aacute; tr&igrave;nh h&iacute;t v&agrave;o.</em></p>\r\n\r\n<p><em>&gt; Qu&aacute; tr&igrave;nh n&agrave;y gi&uacute;p ngăn ngừa t&igrave;nh trạng kh&ocirc; v&agrave; k&iacute;ch ứng đường h&ocirc; hấp c&oacute; thể dẫn đến kh&oacute; chịu v&agrave; thậm ch&iacute; l&agrave; c&aacute;c vấn đề về h&ocirc; hấp.</em></p>\r\n\r\n<p><em>&gt; Bằng c&aacute;ch duy tr&igrave; độ ẩm tối ưu, hệ thống HEM c&oacute; thể cải thiện hiệu quả của liệu ph&aacute;p &aacute;p lực đường thở dương do m&aacute;y cung cấp.</em></p>\r\n\r\n<ul>\r\n	<li><strong>Hoạt động liền mạch với ứng dụng</strong><strong>&nbsp;VVFLY YA50</strong>: Với ứng dụng n&agrave;y, người d&ugrave;ng c&oacute; thể t&ugrave;y chỉnh c&agrave;i đặt trị liệu v&agrave; xem dữ liệu về giấc ngủ như điểm chất lượng giấc ngủ dựa tr&ecirc;n thời gian ngủ, tiếng ng&aacute;y v&agrave; c&aacute;c hiện tượng h&ocirc; hấp gi&uacute;p người d&ugrave;ng tối ưu h&oacute;a chất lượng giấc ngủ của m&igrave;nh.</li>\r\n	<li><strong>C&ocirc;ng nghệ giảm tiếng ồn</strong>:&nbsp;Với &aacute;p suất 30dB v&agrave; c&ocirc;ng suất 37dB, thiết bị gần như im lặng v&agrave; tạo ra kh&ocirc;ng gian ngủ y&ecirc;n tĩnh. T&iacute;nh năng n&agrave;y đặc biệt hữu &iacute;ch với những người kh&oacute; ngủ hoặc c&oacute; th&iacute;nh gi&aacute;c nhạy cảm.</li>\r\n	<li><strong>Cảnh b&aacute;o r&ograve; rỉ kh&ocirc;ng kh&iacute;</strong>: Khi t&iacute;nh năng tự động dừng bị tắt, thiết bị sẽ cảnh b&aacute;o nếu ph&aacute;t hiện r&ograve; rỉ kh&ocirc;ng kh&iacute; như mặt nạ rơi ra hoặc ống bị ngắt kết nối.</li>\r\n	<li><strong>Mặt nạ mũi thiết kế c&ocirc;ng th&aacute;i học</strong>&nbsp;với đệm silicon mang lại cảm gi&aacute;c thoải m&aacute;i v&agrave; ho&agrave;n to&agrave;n vừa vặn.</li>\r\n	<li><strong>Ống thở d&agrave;i 1850mm mang đến sự linh hoạt v&agrave; thoải m&aacute;i</strong><strong>&nbsp;chuyển động</strong>&nbsp;để người d&ugrave;ng ngủ ngon ở mọi tư thế. Thiết bị đi k&egrave;m với c&aacute;c đầu nối ống bổ sung tương th&iacute;ch với tất cả c&aacute;c k&iacute;ch thước ống ti&ecirc;u chuẩn quốc tế (đường k&iacute;nh trong 15mm v&agrave; 22mm).</li>\r\n	<li>Thiết kế hiện đại, kiểu d&aacute;ng&nbsp;<strong>di động&nbsp;</strong>v&agrave;<strong>&nbsp;nhỏ gọn</strong>&nbsp;th&iacute;ch hợp mang theo d&ugrave;ng khi đi đến bất kỳ đ&acirc;u.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Nói lời tạm biệt với ngáy ngủ\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd8.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Lý do nên mua máy trợ thở Auto CPAP YA50\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd9.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Máy trợ thở Auto CPAP YA50 với kích thước nhỏ gọn\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd4-2.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Tùy chỉnh cá nhân hóa của máy trợ thở mang lại cảm giác thoải mái nhất khi sử dụng\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd10.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Máy trợ thở Snore Circle YA50 CPAP có 2 chế độ\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd11-1.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Công nghệ giảm tiếng ồn của Snore Circle\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd3-1.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Ứng dụng giám sát giấc ngủ thông minh VVFLY\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd7-1.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Trải nghiệm giấc ngủ thoải mái cả đêm\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd12-1.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Mặt nạ gọn nhẹ thoải mái vẫn đảm bảo kín khít khuôn mặt\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd13-1.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Ống thở dài giúp thoải mái di chuyển\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd14.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><img alt=\"Độ ẩm tối ưu\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd15.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><strong>Phụ kiện sản phẩm</strong></p>\r\n\r\n<ul>\r\n	<li>Th&acirc;n m&aacute;y</li>\r\n	<li>Bộ đổi nguồn</li>\r\n	<li>Bộ lọc kh&ocirc;ng kh&iacute;</li>\r\n	<li>Ống thở (t&ugrave;y chọn)</li>\r\n	<li>Mặt nạ thở (t&ugrave;y chọn)</li>\r\n	<li>Đầu nối đa năng</li>\r\n	<li>Hướng dẫn sử dụng.</li>\r\n</ul>\r\n\r\n<p><strong><img alt=\"Phụ kiện máy trợ thở Mini\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-tro-tho-mini-xach-tay-snore-circle-auto-cpap-ya50-nd5.jpg\" style=\"width:650px\" /></strong></p>', 1, NULL, '2023-10-16', '2023-10-16 03:31:16'),
(10, 9, 'Máy đo Acid Uric (kiểm tra Gout) Benecheck Plus', '1697452518-product.jpg', 899000, 676000, 100, '<p>M&aacute;y đo Acid Uric&nbsp;</p>', '<p><strong>M&aacute;y đo Acid Uric&nbsp;Benecheck&nbsp;Plus</strong></p>\r\n\r\n<h2><strong>Giới thiệu sản phẩm</strong></h2>\r\n\r\n<p>Bệnh gout l&agrave; căn bệnh ng&agrave;y c&agrave;ng phổ biến, tỷ lệ người mắc bệnh gia tăng đ&aacute;ng kể. Ch&iacute;nh v&igrave; thế mọi người cần phải chủ động tầm so&aacute;t căn bệnh n&agrave;y, bằng c&aacute;ch thường xuy&ecirc;n kiểm tra sức khỏe định kỳ hoặc sử dụng m&aacute;y đo acid Uric để kiểm tra lượng acid uric ngay tại nh&agrave;. Hiện nay tr&ecirc;n thị trường, c&oacute; b&aacute;n m&aacute;y đo acid&nbsp;uric Benecheck&nbsp;Plus rất tốt, mọi người c&oacute; thể tham khảo.</p>\r\n\r\n<p>M&aacute;y đo Acid Uric Benecheck&nbsp;Plus l&agrave; sản phẩm của thương hiệu General Life Biotechnology nổi tiếng. M&aacute;y được nghi&ecirc;n cứu, ứng dụng v&agrave; sản xuất dựa tr&ecirc;n c&ocirc;ng nghệ cảm biến sinh học điện h&oacute;a hiện đại, duy nhất tr&ecirc;n thế giới gi&uacute;p đo nồng độ acid uric nhanh ch&oacute;ng, ch&iacute;nh x&aacute;c chỉ sau v&agrave;i gi&acirc;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/10-27-benecheck-gout.jpg\" style=\"width:600px\" /></p>\r\n\r\n<h2><strong>Ưu điểm v&agrave; t&iacute;nh năng sản phẩm</strong></h2>\r\n\r\n<ul>\r\n	<li>Benecheck Plus gi&uacute;p đo nồng độ Acid Uric trong m&aacute;u nhanh ch&oacute;ng chỉ sau 15 gi&acirc;y , gi&uacute;p tầm so&aacute;t được bệnh Gout ngay tại nh&agrave;. Sản phẩm đạt chứng nhận chất lượng theo ti&ecirc;u chuẩn CE 0537 v&agrave; G.M.P.</li>\r\n	<li>M&aacute;y đo acid uric ho&agrave;n to&agrave;n tự động, người d&ugrave;ng kh&ocirc;ng cần phải thực hiện qu&aacute; nhiều thao t&aacute;c, que tự động h&uacute;t m&aacute;u, tự động b&aacute;o lỗi, tự động d&ograve; code v&agrave; tự động tắt nếu kh&ocirc;ng sử dụng nữa.</li>\r\n	<li>M&aacute;y đo Acid Uric được thiết kế th&ocirc;ng minh, nhỏ gọn, dễ sử dụng, khi đo kh&ocirc;ng g&acirc;y đau đớn cho người đo. Lượng m&aacute;u lấy đo rất nhở chỉ khoảng 1-1.5 &micro;l.</li>\r\n	<li>Sản phẩm c&oacute; chức năng c&agrave;i đặt thời gian v&agrave; lựa chọn chuyển đổi giữa 2 đơn vị đo &ldquo;mg/dL v&agrave; &ldquo;mmol/L&rdquo;, c&oacute; chế độ tự động t&iacute;nh quả trung b&igrave;nh cho 7,14, 21,28 ng&agrave;y. Khung m&aacute;u chắc chắn, m&agrave;u sắc sang trọng, m&agrave;n h&igrave;nh LCD c&oacute; giao diện rộng, th&acirc;n thiện với người sử dụng.</li>\r\n	<li>Lưu &yacute;: ngo&agrave;i chức năng đo &nbsp;nồng độ acid uric th&igrave; m&aacute;y Benecheck Plus c&ograve;n đo được mỡ m&aacute;u v&agrave; lượng đường trong m&aacute;u.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>&gt;&gt; Xem th&ecirc;m c&aacute;c mẫu&nbsp;<a href=\"https://sieuthiyte.com.vn/may-do-duong-huyet\" target=\"_blank\">m&aacute;y thử đường huyết</a>&nbsp;ch&iacute;nh h&atilde;ng, gi&aacute; tốt</strong></p>\r\n\r\n<p><strong>Phụ kiện bao gồm:</strong></p>\r\n\r\n<ul>\r\n	<li>10 que Axit Uric (g&uacute;t)</li>\r\n	<li>10&nbsp;kim&nbsp;</li>\r\n	<li>1 b&uacute;t thử m&aacute;u</li>\r\n	<li>1&nbsp;que code</li>\r\n</ul>', 1, NULL, '2023-10-16', '2023-10-16 03:35:18'),
(11, 10, 'Máy đo huyết áp điện tử bắp tay Wellmed AXD-804', '1697452600-product.jpg', 900000, 599000, 20, '<p>M&aacute;y đo huyết &aacute;p điện tử&nbsp;</p>', '<h2><strong>Giới thiệu m&aacute;y đo huyết &aacute;p bắp tay tự động Omron&nbsp;HEM-7143T1</strong></h2>\r\n\r\n<p><strong><a href=\"https://sieuthiyte.com.vn/may-do-huyet-ap\" target=\"_blank\">M&aacute;y đo huyết &aacute;p</a></strong>&nbsp;l&agrave; một lựa chọn tuyệt vời tại nh&agrave; để duy tr&igrave; sức khỏe v&agrave; nếu bạn c&oacute; bệnh nền&nbsp;cần đo huyết &aacute;p thường xuy&ecirc;n. Đặc biệt,&nbsp;<strong><a href=\"https://sieuthiyte.com.vn/may-do-huyet-ap-dien-tu\" target=\"_blank\">m&aacute;y đo huyết &aacute;p điện tử</a></strong>&nbsp;c&oacute; ứng dụng được kết nối bluetooth như&nbsp;<em><strong>m&aacute;y đo huyết &aacute;p tự động Omron HEM-7143T1&nbsp;</strong></em>c&oacute; thể cung cấp cho bạn c&aacute;i nh&igrave;n thấu đ&aacute;o hơn về xu hướng chỉ số huyết &aacute;p của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Máy đo huyết áp tự động Omron HEM-7143T1\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-do-huyet-ap-tu-dong-omron-hem-7143t1-nd1.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><a href=\"https://sieuthiyte.com.vn/may-do-huyet-ap-tu-dong-omron-hem-7143t1-1315.html\" target=\"_blank\">M&aacute;y đo huyết &aacute;p điện tử tự động Omron HEM-7143T1</a></p>\r\n\r\n<p><em><strong>M&aacute;y đo huyết &aacute;p bắp tay HEM-7143T1</strong></em>&nbsp;cung cấp cho người d&ugrave;ng kết quả đo nhanh ch&oacute;ng, ch&iacute;nh x&aacute;c với c&aacute;ch vận h&agrave;nh đơn giản chỉ bằng một n&uacute;t ấn. C&agrave;i đặt&nbsp;<em><strong>ứng dụng Connect Omron</strong></em>&nbsp;v&agrave; kết nối bluetooth để xem ph&acirc;n t&iacute;ch kết quả đo huyết &aacute;p v&agrave; cho bạn biết liệu huyết &aacute;p của m&igrave;nh c&oacute; bất thường hoặc ở mức b&igrave;nh thường hay kh&ocirc;ng.</p>\r\n\r\n<h2><strong>Ưu điểm v&agrave; t&iacute;nh năng&nbsp;m&aacute;y đo huyết &aacute;p điện tử Omron</strong></h2>\r\n\r\n<ul>\r\n	<li>Sở hữu&nbsp;<strong>c&ocirc;ng nghệ IntelliSense</strong>&nbsp;để&nbsp;<strong>đo huyết &aacute;p tự động</strong>, nhanh ch&oacute;ng, ch&iacute;nh x&aacute;c v&agrave; thoải m&aacute;i.&nbsp;<strong>Một số ưu điểm của c&ocirc;ng nghệ IntelliSense</strong>:</li>\r\n</ul>\r\n\r\n<p><em>+&nbsp;<strong>Bơm hơi v&ograve;ng b&iacute;t</strong>&nbsp;đến mức ti&ecirc;u chuẩn l&yacute; tưởng cho mỗi lần sử dụng m&agrave; kh&ocirc;ng cần người d&ugrave;ng phải điều chỉnh, tiện lợi cho người bị huyết &aacute;p cao v&agrave; rối loạn nhịp tim v&igrave; huyết &aacute;p của họ c&oacute; thể tăng giảm bất thường.</em></p>\r\n\r\n<p><em>+&nbsp;<strong>Tự động đo huyết &aacute;p</strong>&nbsp;đ&uacute;ng mức &aacute;p suất.</em></p>\r\n\r\n<p><em>+<strong>&nbsp;Van xả hơi nhanh</strong>, thuận tiện đo nhanh ch&oacute;ng.</em></p>\r\n\r\n<ul>\r\n	<li><strong>V&ograve;ng b&iacute;t thoải m&aacute;i</strong>, k&iacute;ch thước vừa vặn v&agrave; linh hoạt, gi&uacute;p bạn đo huyết &aacute;p ch&iacute;nh x&aacute;c.&nbsp;</li>\r\n	<li>Bộ nhớ th&ocirc;ng minh,&nbsp;<strong>lưu trữ đến 30 số đ</strong>o để người d&ugrave;ng kiểm so&aacute;t huyết &aacute;p của m&igrave;nh.</li>\r\n	<li><strong>Đ&egrave;n hướng dẫn quấn v&ograve;ng b&iacute;t</strong>&nbsp;để người d&ugrave;ng thao t&aacute;c ch&iacute;nh x&aacute;c bằng c&aacute;ch chỉ định &amp; quot; OK &amp; quot, gi&uacute;p kết quả huyết &aacute;p ch&iacute;nh x&aacute;c v&agrave; tin cậy hơn.</li>\r\n	<li>Cung cấp c&aacute;c&nbsp;<strong>b&aacute;o động</strong>&nbsp;v&agrave;&nbsp;<strong>chỉ b&aacute;o</strong>&nbsp;như:&nbsp;</li>\r\n</ul>\r\n\r\n<p><em>+&nbsp;<strong>B&aacute;o cử động khi đo</strong>, ph&aacute;t hiện lỗi v&agrave; cảnh b&aacute;o khi người d&ugrave;ng chuyển động cơ thể.</em></p>\r\n\r\n<p><em>+&nbsp;<strong>Cảnh b&aacute;o tăng huyết &aacute;p</strong>&nbsp;bằng biểu tượng nhịp tim nhấp nh&aacute;y khi huyết &aacute;p t&acirc;m thu tr&ecirc;n 135 mmHg v&agrave; t&acirc;m trương tr&ecirc;n 85 mmHg.</em></p>\r\n\r\n<p><em>+&nbsp;<strong>Chỉ b&aacute;o pin yếu</strong>&nbsp;để người d&ugrave;ng kịp thời thay pin, kh&ocirc;ng l&agrave;m gi&aacute;n đoạn qu&aacute; tr&igrave;nh sử dụng.</em></p>\r\n\r\n<ul>\r\n	<li>T&iacute;ch hợp tiện &iacute;ch kết nối&nbsp;<strong>bluetooth</strong>, đồng bộ kh&ocirc;ng d&acirc;y với điện thoại th&ocirc;ng minh để theo d&otilde;i kết quả đo th&ocirc;ng qua&nbsp;<strong>ứng dụng OMRON connect</strong>, gi&uacute;p bạn dễ d&agrave;ng xem, lưu v&agrave; quản l&yacute; dữ liệu huyết &aacute;p của m&igrave;nh.</li>\r\n	<li>Sản phẩm c&oacute; kiểu d&aacute;ng&nbsp;<strong>hiện đại</strong>, k&iacute;ch thước&nbsp;<strong>nhỏ gọn</strong>, thuận tiện để bạn mang theo sử dụng mọi nơi v&agrave; kiểm tra sức khỏe bất cứ khi n&agrave;o.</li>\r\n</ul>\r\n\r\n<h2><strong>Phụ kiện sản phẩm</strong></h2>\r\n\r\n<ul>\r\n	<li>V&ograve;ng b&iacute;t cỡ trung b&igrave;nh</li>\r\n	<li>Hướng dẫn sử dụng</li>\r\n	<li>Bộ pin.</li>\r\n</ul>\r\n\r\n<p><strong>&gt;&gt; Xem th&ecirc;m:&nbsp;<a href=\"https://sieuthiyte.com.vn/may-do-huyet-ap-bap-tay-wellmed-fdbp-a4-cap-usb-1265.html\" target=\"_blank\">M&aacute;y đo huyết &aacute;p bắp tay Wellmed FDBP A4 (C&aacute;p USB)</a></strong></p>\r\n\r\n<p>&nbsp;</p>', 1, NULL, '2023-10-16', '2023-10-16 03:36:40'),
(12, 11, 'Máy xông khí dung dạng lưới Wellmed Air Pro II', '1697452696-product.jpg', 500000, 389000, 20, '<p>M&aacute;y x&ocirc;ng kh&iacute;&nbsp;</p>', '<h2><strong>Giới thiệu m&aacute;y x&ocirc;ng kh&iacute; dung Wellmed Air Pro II</strong></h2>\r\n\r\n<p><strong>M&aacute;y x&ocirc;ng kh&iacute; dung Wellmed Air Pro II</strong>&nbsp;l&agrave; d&ograve;ng&nbsp;<strong><a href=\"https://sieuthiyte.com.vn/may-xong-mui-hong\">m&aacute;y x&ocirc;ng kh&iacute; dung cầm tay</a></strong>&nbsp;sử dụng c&ocirc;ng nghệ lưới rung để tạo ra một l&agrave;n sương thuốc mịn với k&iacute;ch thước hạt sương nhỏ, tốc độ x&ocirc;ng nhanh, hỗ trợ điều trị bệnh h&ocirc; hấp hiệu quả.&nbsp;M&aacute;y x&ocirc;ng kh&iacute; dung di động của Wellmed c&oacute; trọng lượng nhẹ v&agrave; nhỏ rất thuận tiện cho việc sử dụng khi đang di chuyển.</p>\r\n\r\n<p><em><img alt=\"Máy xông khí dung Welmed AirPro II sử dụng công nghệ lưới rung siêu âm\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-khi-dung-dang-luoi-wellmed-air-pro-ii-nd2-1.jpg\" style=\"width:650px\" /></em></p>\r\n\r\n<p><em>M&aacute;y x&ocirc;ng kh&iacute; dung Welmed Air Pro II sử dụng c&ocirc;ng nghệ lưới rung si&ecirc;u &acirc;m</em></p>\r\n\r\n<p><strong><em>M&aacute;y x&ocirc;ng kh&iacute; dung dạng lưới Welmed Air Pro II</em></strong>&nbsp;c&oacute; thể tương th&iacute;ch với nhiều loại thuốc kh&aacute;c nhau, ph&ugrave; hợp điều trị bệnh h&ocirc; hấp cho cả trẻ em, người trưởng th&agrave;nh v&agrave; người lớn tuổi.</p>\r\n\r\n<h2><strong>Ưu điểm v&agrave; t&iacute;nh năng&nbsp;m&aacute;y x&ocirc;ng kh&iacute; dung Wellmed Air Pro II</strong></h2>\r\n\r\n<ul>\r\n	<li>Sử dụng&nbsp;<strong>c&ocirc;ng nghệ phun sương mịn dạng lưới</strong>, đưa thuốc hấp thụ trực tiếp v&agrave; lắng đọng trong phế quản, phế nang của bệnh nh&acirc;n để n&acirc;ng cao điều trị c&aacute;c bệnh đường h&ocirc; hấp.</li>\r\n	<li>Tốc độ x&ocirc;ng kh&iacute; dung 0,15 ml/ph&uacute;t &ndash; 0,19 ml/ph&uacute;t với&nbsp;<strong>thời gian điều trị nhanh</strong>&nbsp;chỉ từ 5 đến 10 ph&uacute;t.</li>\r\n	<li><strong>K&iacute;ch thước hạt sương mịn v&agrave; nhỏ</strong>&nbsp;chỉ &lt; 5 &micro;m, dễ d&agrave;ng đi s&acirc;u v&agrave; thẩm thấu trong phế quản để người bệnh nhận được đầy đủ thuốc điều trị.</li>\r\n	<li>M&aacute;y x&ocirc;ng kh&iacute; dung c&oacute; thể tương th&iacute;ch với nhiều loại thuốc n&ecirc;n&nbsp;<strong>ph&ugrave; hợp để điều trị c&aacute;c t&igrave;nh trạng h&ocirc; hấp kh&aacute;c nhau</strong>.&nbsp;</li>\r\n	<li>Thao t&aacute;c sử dụng đơn giản chỉ bằng&nbsp;<strong>một n&uacute;t bấm</strong>,&nbsp;<strong>dễ d&agrave;ng vệ sinh</strong>.</li>\r\n	<li>Kiểu d&aacute;ng cầm tay&nbsp;<strong>nhỏ gọn</strong>, tiện lợi bỏ v&agrave;o t&uacute;i để mang theo điều trị bất cứ khi n&agrave;o.</li>\r\n	<li>M&aacute;y x&ocirc;ng kh&iacute; dung d&ugrave;ng&nbsp;<strong>pin Lithium sạc lại</strong>, c&oacute;&nbsp;<strong>c&aacute;p USB</strong>&nbsp;đi k&egrave;m, một lần sạc đầy c&oacute; thể&nbsp;<strong>d&ugrave;ng đến 60 ph&uacute;t</strong>&nbsp;li&ecirc;n tục&nbsp;</li>\r\n	<li><strong>Đ&egrave;n chỉ b&aacute;o</strong>&nbsp;t&igrave;nh trạng pin, t&igrave;nh trạng sạc dễ theo d&otilde;i.</li>\r\n	<li>Chức năng th&ocirc;ng minh&nbsp;<strong>tự động tắt</strong>&nbsp;sau 10 ph&uacute;t hoạt động, kh&ocirc;ng chỉ&nbsp;<strong>tiết kiệm năng lượng</strong>&nbsp;v&agrave; c&ograve;n đảm bảo an to&agrave;n cho người d&ugrave;ng.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 1, NULL, '2023-10-16', '2023-10-16 03:38:16'),
(14, 3, 'Máy tỉa lông mày TouchBeauty', '1697608719-product.jpg', 300000, 199000, 10, '<p>M&aacute;y tỉa l&ocirc;ng m&agrave;y TouchBeauty TB1658 l&agrave; sản phẩm mang thương hiệu nổi tiếng của TouchBeauty</p>', '<p><strong>M&aacute;y tỉa l&ocirc;ng m&agrave;y TouchBeauty TB1658</strong></p>\r\n\r\n<h2><strong>Giới thiệu sản phẩm</strong></h2>\r\n\r\n<p>M&aacute;y tỉa l&ocirc;ng m&agrave;y TouchBeauty TB1658 l&agrave; sản phẩm mang thương hiệu nổi tiếng của TouchBeauty. Đ&acirc;y l&agrave; sản phẩm được thiết kế để cắt tỉa l&ocirc;ng m&agrave;y, mặt v&agrave; l&ocirc;ng tr&ecirc;n cơ thể - an to&agrave;n v&agrave; hiệu quả. Đầu tỉa&nbsp;định h&igrave;nh theo khu&ocirc;n l&ocirc;ng m&agrave;y ho&agrave;n hảo với, v&agrave; dễ d&agrave;ng định h&igrave;nh c&aacute;c khu vực kh&oacute; tiếp cận với lưỡi dao độc đ&aacute;o c&oacute; thể cắt tỉa ch&iacute;nh x&aacute;c.&nbsp;M&aacute;y&nbsp;nhỏ như một c&acirc;y b&uacute;t bi rất đẹp mắt, c&oacute; thể bỏ v&agrave;o v&iacute; v&agrave; sử dụng mọi l&uacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/may-cat-tia-long-may-touchbeauty-tb1658-nd2-min.png\" style=\"width:600px\" /></p>\r\n\r\n<p><em><a href=\"https://sieuthiyte.com.vn/may-cat-tia-long-may-touchbeauty-tb1658-1131.html\">M&aacute;y tỉa l&ocirc;ng m&agrave;y TouchBeauty TB1658</a></em></p>\r\n\r\n<h2><strong>Ưu điểm v&agrave; t&iacute;nh năng</strong></h2>\r\n\r\n<ul>\r\n	<li>Dụng cụ c&oacute; 2 lưỡi dao ngắn v&agrave; d&agrave;i, thực hiện ch&iacute;nh x&aacute;c v&agrave; dễ d&agrave;ng</li>\r\n	<li>Lưỡi dao bằng th&eacute;p kh&ocirc;ng gỉ th&acirc;n thiện với mọi loại da, an to&agrave;n khi sử dụng</li>\r\n	<li>Ch&iacute;nh x&aacute;c, nhẹ nh&agrave;ng, nhanh ch&oacute;ng loại bỏ c&aacute;c v&ugrave;ng l&ocirc;ng m&agrave;y kh&ocirc;ng mong muốn</li>\r\n	<li>Ho&agrave;n hảo cho l&agrave;n da nhạy cảm</li>\r\n	<li>Kh&ocirc;ng g&acirc;y đau r&aacute;t, ngăn ngừa đỏ da hoặc k&iacute;ch ứng da&nbsp;</li>\r\n	<li>Sản phẩm được thiết kế đẹp mắt, gọn nhẹ để sử dụng h&agrave;ng ng&agrave;y&nbsp;</li>\r\n	<li>C&oacute; thể cắt tỉa ở mọi khu vực như l&ocirc;ng m&agrave;y, mặt, tay, ch&acirc;n, v&ugrave;ng bikini</li>\r\n	<li>Tiết kiệm thời gian, tiền bạc</li>\r\n	<li>C&oacute; thể sử dụng li&ecirc;n tục trong 3 giờ.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/may-cat-tia-long-may-touchbeauty-tb1658-nd1-min.png\" style=\"width:600px\" /></p>\r\n\r\n<p><em>Sử dụng m&aacute;y cắt tỉa TouchBeauty TB1658 ở nhiều nơi tr&ecirc;n cơ thể</em></p>\r\n\r\n<p>&nbsp;</p>', 1, NULL, '2023-10-18', '2023-10-17 22:58:39'),
(17, 9, 'Que thử đường huyết máy đo Sapphire Plus (25 que)', '1697623849-product.jpg', 200000, 148000, 10, '<p>&nbsp;</p>\r\n\r\n<p>Que thử đường huyết d&agrave;nh cho m&aacute;y đo đường huyết Sapphire Plus.</p>', '<p><strong>Que thử m&aacute;y đo đường huyết Sapphire Plus (25 que)</strong></p>\r\n\r\n<hr />\r\n<h2><strong>Th&ocirc;ng tin chi tiết</strong></h2>\r\n\r\n<p>Que thử đường huyết d&agrave;nh cho m&aacute;y đo đường huyết Sapphire Plus.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/20150914_103338.jpg\" style=\"width:600px\" /></p>\r\n\r\n<h2><strong>Th&ocirc;ng số sản phẩm</strong></h2>\r\n\r\n<ul>\r\n	<li>Gi&aacute;: 210.000đ/Hộp/25 que thử</li>\r\n	<li>H&atilde;ng sản xuất: MediSmart</li>\r\n	<li>Xuất xứ: Thụy Sĩ</li>\r\n</ul>\r\n\r\n<p>&gt;&gt;&nbsp;<a href=\"https://sieuthiyte.com.vn/que-thu-duong-huyet-tieu-duong/\" target=\"_blank\" title=\"que thu duong huyet\">Que thử đường huyết</a>&nbsp;tiểu đường</p>\r\n\r\n<h2><strong>KH&Aacute;CH H&Agrave;NG SỬ DỤNG SẢN PHẨM</strong></h2>\r\n\r\n<p><strong><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/3-min_18.png\" style=\"width:600px\" /></strong></p>\r\n\r\n<p><strong><em>➡️</em>&nbsp;<strong><em><a href=\"https://sieuthiyte.com.vn/blog/hinh-anh-khach-hang-su-dung-may-do-duong-huyet-tai-sieu-thi-y-te\" target=\"_blank\">Xem th&ecirc;m h&igrave;nh ảnh feedback sử dụng sản phẩm</a></em></strong></strong></p>', 1, NULL, '2023-10-18', '2023-10-18 03:10:49');
INSERT INTO `products` (`id`, `id_cat`, `name_product`, `image`, `price`, `price_sale`, `qty`, `preview`, `detail`, `sp_hot`, `deleted_at`, `updated_at`, `created_at`) VALUES
(18, 12, 'Máy tạo oxy xách tay LoveGo LG 102', '1697624047-product.jpg', 8000000, 69900000, 20, '<h1><span style=\"font-size:16px\">Sản phẩm l&agrave; một d&ograve;ng cải tiến về chất lượng với lưu lượng&nbsp;</span></h1>', '<h2><strong>Giới thiệu sản phẩm</strong></h2>\r\n\r\n<p><em><strong>M&aacute;y tạo oxy x&aacute;ch tay LoveGo LG 102</strong></em>&nbsp;l&agrave; thiết bị cầm tay hiện đại, cung cấp oxy thay thế, được sử dụng hỗ trợ điều trị c&aacute;c vấn đề li&ecirc;n quan đến h&ocirc; hấp ở bệnh nh&acirc;n:&nbsp;vi&ecirc;m phổi, vi&ecirc;m phế quản, hen suyễn, lao phổi, bệnh phổi tắc nghẽn mạn t&iacute;nh (COPD)&hellip;&nbsp;</p>\r\n\r\n<p>Sản phẩm l&agrave; một d&ograve;ng cải tiến về chất lượng với lưu lượng li&ecirc;n tục 1.8LPM v&agrave; lưu lượng xung 4.5L, tiện lợi di chuyển khi sử dụng. Đạt c&aacute;c chứng nhận&nbsp;<strong>CE, FDA</strong>, ISO13485, pin MSDS được ph&ecirc; duyệt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/upload/may-tao-oxy-xach-tay-lovego-lg-102-nd4.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>M&aacute;y tạo oxy x&aacute;ch tay LoveGo LG 102 với thiết kế nhỏ gọn đẹp mắt</em></p>\r\n\r\n<h2><strong>Ưu điểm v&agrave; t&iacute;nh năng sản phẩm</strong></h2>\r\n\r\n<ul>\r\n	<li>Sử dụng mọi l&uacute;c, mọi nơi: đi tr&ecirc;n xe hơi, xe tải, hoặc đi xa...</li>\r\n	<li>Hỗ trợ 24 giờ l&agrave;m việc mỗi ng&agrave;y.</li>\r\n	<li>Thời lượng pin hai giờ ở 5 c&agrave;i đặt.</li>\r\n	<li>Hộp đựng v&agrave; xe đẩy cho h&agrave;nh tr&igrave;nh d&agrave;i.</li>\r\n	<li>Thiết bị n&agrave;y tạo ra phạm vi độ tinh khiết oxy ở&nbsp;<strong>90% + 5%/-3%&nbsp;</strong>(Lưu lượng điều chỉnh c&agrave;ng l&ecirc;n cao độ tinh khiết oxy sẽ giảm dần).</li>\r\n	<li>LoveGo LG102 c&oacute; thể đ&aacute;p ứng nhu cầu trị liệu oxy&nbsp;từ&nbsp;<strong>1- 1.5L</strong>&nbsp;với&nbsp;<strong>5 c&agrave;i đặt lưu lượng</strong>. C&oacute; thể chung cấp bằng nguồn điện gia đ&igrave;nh, pin xe hơi v&agrave; pin lithium. Một pin c&oacute; thể hỗ trợ 2 giờ ở mọi d&ograve;ng chảy.</li>\r\n	<li>Đ&acirc;y l&agrave; một trong những m&aacute;y tạo oxy x&aacute;ch tay phổ biến nhất v&agrave; b&aacute;n chạy nhất tr&ecirc;n thị trường do hiệu suất tuyệt vời v&agrave; gi&aacute; cả phải chăng.</li>\r\n	<li>Độ ồn thấp<strong>&nbsp;&le; 40dB</strong>&nbsp;kh&ocirc;ng g&acirc;y kh&oacute; chịu khi ngủ.</li>\r\n	<li>M&aacute;y sẽ b&aacute;o động mất điện, cho ph&eacute;p người d&ugrave;ng chuyển sang d&ugrave;ng nguồn pin, vẫn đảm bảo qu&aacute; tr&igrave;nh trị liệu được diễn ra.</li>\r\n	<li>Chỉ b&aacute;o nồng độ O2: M&aacute;y sẽ th&ocirc;ng b&aacute;o cho người d&ugrave;ng nếu chỉ b&aacute;o O2 c&oacute; nồng độ thấp.</li>\r\n	<li>3 b&aacute;o động: Mất nguồn, nhiệt độ cao v&agrave; mức O2 thấp.</li>\r\n	<li>Chỉ số tập trung O2: Đ&egrave;n xanh - b&igrave;nh thường, đ&egrave;n v&agrave;ng =&lt; 82%, m&agrave;u đỏ với b&aacute;o động &acirc;m thanh = cảnh b&aacute;o &lt;72%.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/upload/may-tao-oxy-xach-tay-lovego-lg-102-nd11.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>Chi tiết th&acirc;n m&aacute;y</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/upload/may-tao-oxy-xach-tay-lovego-lg-102-nd5.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>Tay x&aacute;ch tiện lợi</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/LG102-i3i.png\" style=\"width:600px\" /></p>\r\n\r\n<p><em><a href=\"https://sieuthiyte.com.vn/may-tao-oxy\" target=\"_blank\">M&aacute;y thở oxy</a>&nbsp;x&aacute;ch tay LoveGo LG 102&nbsp;với xe đẩy dễ d&agrave;ng di chuyển hơn</em></p>\r\n\r\n<h2><strong>Phụ kiện sản phẩm</strong></h2>\r\n\r\n<ul>\r\n	<li>Thiết bị LoveGo</li>\r\n	<li>T&uacute;i đựng sản phẩm</li>\r\n	<li>Bộ nguồn AC</li>\r\n	<li>Bộ chuyển đổi nguồn điện</li>\r\n	<li>Pin</li>\r\n	<li>D&acirc;y sạc Pin</li>\r\n	<li>Xe đẩy di động.&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/upload/may-tao-oxy-xach-tay-lovego-lg-102-nd22.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>Phụ kiện</em></p>', 1, NULL, '2023-10-18', '2023-10-18 03:14:07'),
(19, 11, 'Máy xông khí dung Wellmed CNB69028', '1697624729-product.jpg', 980000, 699000, 20, '<p>M&aacute;y x&ocirc;ng kh&iacute; dung Wellmed- CNB69028&nbsp;</p>', '<p><strong>M&aacute;y x&ocirc;ng kh&iacute; dung Wellmed&nbsp;</strong><strong>CNB69028</strong></p>\r\n\r\n<hr />\r\n<h2><strong>Giới thiệu sản phẩm</strong></h2>\r\n\r\n<p><strong>M&aacute;y x&ocirc;ng kh&iacute; dung Wellmed- CNB69028</strong>&nbsp;l&agrave; loại m&aacute;y d&ugrave;ng để điều trị một số bệnh về đường h&ocirc; hấp như ho, hen suyễn, vi&ecirc;m phổi, vi&ecirc;m phế quản, phổi tắc nghẽn m&atilde;n t&iacute;nh&hellip; M&aacute;y tạo ra luồng kh&iacute; th&ocirc;ng qua ống&nbsp;phun sương, chuyển h&oacute;a dược phẩm th&agrave;nh dạng phun sương để x&ocirc;ng hoặc h&iacute;t v&agrave;o phế quản, gi&uacute;p qu&aacute; tr&igrave;nh điều trị hiệu quả hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-khi-dung-wellmed-cnb69028-ndnew1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>M&aacute;y x&ocirc;ng kh&iacute; dung Wellmed CNB69028</em></p>\r\n\r\n<h2><strong>Ưu điểm v&agrave; t&iacute;nh năng sản phẩm</strong></h2>\r\n\r\n<ul>\r\n	<li><strong><a href=\"https://sieuthiyte.com.vn/may-xong-mui-hong\">M&aacute;y x&ocirc;ng kh&iacute; dung</a></strong>&nbsp;Wellmed-CNB69028 l&agrave; sản phẩm c&oacute; nguồn gốc xuất xứ r&otilde; r&agrave;ng, từ&nbsp;<strong>thương hiệu Wellmed</strong>&nbsp;được nhiều người tin d&ugrave;ng hiện nay.</li>\r\n	<li><strong>Mặt nạ</strong>&nbsp;x&ocirc;ng kh&iacute; dung Wellmed được sản xuất dựa tr&ecirc;n c&ocirc;ng nghệ của Cộng h&ograve;a Li&ecirc;n Bang Đức. Chất liệu&nbsp;<strong>nhựa y tế dẻo</strong>,&nbsp;<strong>an to&agrave;n</strong>&nbsp;cho việc sử dụng. Mặt nạ được thiết kế hai k&iacute;ch cỡ kh&aacute;c nhau, ph&ugrave; hợp cho trẻ em v&agrave; người lớn, gi&uacute;p tiết kiệm chi ph&iacute; v&agrave; tiện lợi.</li>\r\n	<li><strong>Bầu x&ocirc;ng được thiết kế liền khối</strong>, gi&uacute;p tr&aacute;nh thất tho&aacute;t thuốc trong qu&aacute; tr&igrave;nh sử dụng. Ngo&agrave;i ra, cổng mở tr&ecirc;n bầu x&ocirc;ng hỗ trợ người d&ugrave;ng thay đổi tốc độ phun thuốc.</li>\r\n	<li>M&aacute;y c&oacute;&nbsp;k&iacute;ch thước&nbsp;<strong>nhỏ gọn</strong>, dễ d&agrave;ng lắp r&aacute;p v&agrave; mang đi. Người d&ugrave;ng c&oacute; thể sử dụng ngay tại nh&agrave; hoặc mang đến cơ quan, đi c&ocirc;ng t&aacute;c hoặc du lịch đều được.</li>\r\n	<li><strong>Ngăn chứa</strong>&nbsp;c&aacute;c bộ phận đi k&egrave;m&nbsp;<strong>tiện lợi</strong>&nbsp;cho qu&aacute; tr&igrave;nh sử dụng. Thiết kế với&nbsp;<strong>nắp bản lề 90&ordm;</strong>&nbsp;v&agrave; chốt an to&agrave;n.</li>\r\n	<li>Bộ dụng cụ phun sương đi k&egrave;m theo m&aacute;y ho&agrave;n chỉnh v&agrave; dễ d&agrave;ng l&agrave;m sạch.</li>\r\n	<li>Sản phẩm được l&agrave;m bằng&nbsp;<strong>chất liệu cao su tổng hợp</strong>, kh&ocirc;ng g&acirc;y dị ứng cho người sử dụng.</li>\r\n	<li>M&aacute;y<strong>&nbsp;hoạt động &ecirc;m &aacute;i</strong>, kh&ocirc;ng g&acirc;y tiếng ồn trong qu&aacute; tr&igrave;nh điều trị.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-khi-dung-wellmed-cnb69028-ndnew22.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>Chi tiết th&acirc;n m&aacute;y</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-khi-dung-wellmed-cnb69028-ndnew44.jpg\" style=\"width:600px\" /></em></p>\r\n\r\n<p><em>Với hộc chứa phụ kiện tiết kiệm kh&ocirc;ng gian, nắp bản lề dễ d&agrave;ng đ&oacute;ng mở</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-khi-dung-wellmed-cnb69028-ndnew5.jpg\" style=\"width:600px\" /></em></p>\r\n\r\n<p><em>Phần sau l&agrave; hộc tay cầm thuận tiện</em></p>\r\n\r\n<h2><strong>Phụ kiện sản phẩm</strong></h2>\r\n\r\n<ul>\r\n	<li>Mặt nạ người lớn: 1</li>\r\n	<li>Mặt nạ trẻ em: 1</li>\r\n	<li>Bầu x&ocirc;ng: 1</li>\r\n	<li>Ống dẫn kh&iacute;: 1</li>\r\n	<li>Th&acirc;n m&aacute;y: 1</li>\r\n	<li>Ống ngậm: 1</li>\r\n	<li>Miếng lọc: 5</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/may-xong-khi-dung-wellmed-cnb69028-ndnew2.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>Phụ kiện</em>&nbsp;</p>', 1, NULL, '2023-11-01', '2023-10-18 03:25:29'),
(20, 11, 'Máy xông mũi họng Philips Innospire Essence', '1697624929-product.jpg', 1200000, 980000, 20, '<p>x&ocirc;ng mũi họng bằng</p>', '<h2><strong>M&aacute;y X&ocirc;ng Kh&iacute; Dung&nbsp;Philips Innospire Essence</strong></h2>\r\n\r\n<hr />\r\n<p><strong>Giới thiệu sản phẩm</strong></p>\r\n\r\n<p>X&ocirc;ng mũi họng bằng<strong>&nbsp;<a href=\"https://sieuthiyte.com.vn/may-xong-mui-hong\" target=\"_blank\" title=\"may khi dung\">m&aacute;y x&ocirc;ng kh&iacute; dung</a></strong>&nbsp;(m&aacute;y x&ocirc;ng mũi họng) để điều trị một số bệnh h&ocirc; hấp như vi&ecirc;m phế quản, hen suyễn, vi&ecirc;m thanh quản&hellip; được chứng minh l&agrave; phương ph&aacute;p điều trị hiệu quả cao so với điều trị bằng thuốc uống.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/Y/essence-nd-600x400-min.png\" style=\"width:600px\" /></p>\r\n\r\n<p><em>M&aacute;y x&ocirc;ng mũi họng Philips Innospire Essence</em>&nbsp;</p>\r\n\r\n<p><strong>M&aacute;y x&ocirc;ng mũi họng Innospire Essence</strong>&nbsp;sử dụng c&ocirc;ng nghệ x&ocirc;ng kh&iacute;&nbsp;SideStream, thuốc được chuyển từ dạng dung dịch sang dạng phun sương c&oacute; k&iacute;ch thước dưới 5 &micro;m, cơ thể dễ d&agrave;ng hấp thụ thuốc (phế nang, phổi) cung cấp thuốc một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/Essence/Essence-nd5-min.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>M&aacute;y x&ocirc;ng mũi họng Philips Innospire Essence c&oacute; thiết kế sang trọng</em>&nbsp;</p>\r\n\r\n<p><strong>Ưu điểm v&agrave; t&iacute;nh năng sản phẩm</strong></p>\r\n\r\n<ul>\r\n	<li>SideStream&nbsp;được thiết kế để thu h&uacute;t khi v&agrave;o b&ecirc;n trong nhiều hơn, th&ocirc;ng qua hoạt động của hệ thống khuếch t&aacute;n, tạo kết quả trong c&ocirc;ng việc ph&acirc;n phối thuốc nhanh hơn v&agrave; thời gian điều trị ngắn. Với v&ograve;i phun h&igrave;nh thoi duy nhất được thiết kế nhằm gi&uacute;p giảm thiểu sự hao m&ograve;n trong qu&aacute; tr&igrave;nh sử dụng thường xuy&ecirc;n v&agrave; hỗ trợ sự cung cấp lượng kh&iacute; ph&ugrave; hợp với chất lượng cao.</li>\r\n	<li>X&ocirc;ng thuốc bằng m&aacute;y x&ocirc;ng mũi họng Philips Innospire Essence, thuốc v&agrave;o cơ thể th&ocirc;ng qua đường h&iacute;t nhờ đ&oacute; hạn chế được c&aacute;c t&aacute;c hại của phản ứng phụ do uống thuốc.&nbsp;<em>Bệnh nh&acirc;n c&oacute; thể x&ocirc;ng thuốc qua đường ống ngậm miệng (của m&aacute;y x&ocirc;ng) hoặc chuyển đổi sang d&ugrave;ng mặt nạ h&iacute;t (d&ugrave;ng cho trẻ em v&agrave; người lớn) đảm bảo được liều lượng thuốc sử dụng</em>.</li>\r\n	<li>Thời gian điều trị ngắn chỉ khoảng 6 &ndash; 8 ph&uacute;t. Luồng kh&iacute; x&ocirc;ng với lượng ph&acirc;n tử thuốc c&oacute; k&iacute;ch thước dưới 5 &micro;m chiếm tỉ lệ cao 77%, được dễ d&agrave;ng hấp thu th&ocirc;ng qua hơi thở gi&uacute;p đạt hiệu quả điều trị cao.</li>\r\n	<li>M&aacute;y x&ocirc;ng mũi họng Philips Innospire Essence k&iacute;ch thước gọn nhẹ, dễ di chuyển khi đi xa. Kiểu d&aacute;ng tinh tế, độ bền l&acirc;u. Th&iacute;ch hợp với mọi đối tượng.</li>\r\n	<li>Với hơn 20 năm kinh nghiệm trong lĩnh vực điều trị bằng liệu ph&aacute;p x&ocirc;ng kh&iacute; dung của h&atilde;ng Philips. M&aacute;y x&ocirc;ng mũi họng Innospire Essence l&agrave; lựa chọn tin cậy của bạn.&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/Essence/bauxong-essence-min.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>Cấu tạo của bầu x&ocirc;ng</em></p>\r\n\r\n<p><strong># Dữ liệu hiệu suất</strong></p>\r\n\r\n<ul>\r\n	<li>MMAD 2.9 &mu;m</li>\r\n	<li>Hạt ph&acirc;n tử mịn,nhỏ 77% dưới 5 &mu;m</li>\r\n	<li>Thời gian điều trị (2.5ml) 6-8 ph&uacute;t&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/Essence/editessence-1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>Chi tiết th&acirc;n m&aacute;y</em>&nbsp;</p>\r\n\r\n<p><em><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/Essence/Essence-nd3-min.jpg\" style=\"width:600px\" /></em></p>\r\n\r\n<p><em>Bộ lọc&nbsp;M&aacute;y x&ocirc;ng mũi họng Philips Innospire Essence gi&uacute;p chặn đứng bụi bẩn từ luồng kh&iacute; b&ecirc;n ngo&agrave;i v&agrave;o b&ecirc;n trong</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/Essence/Essence-nd2-min.jpg\" style=\"width:600px\" /></em></p>\r\n\r\n<p><em>Khe tỏa nhiệt gi&uacute;p m&aacute;y hoạt động hiệu quả</em></p>\r\n\r\n<p><strong># Phụ kiện bao gồm:</strong>&nbsp;th&acirc;n m&aacute;y, bầu x&ocirc;ng, ống ngậm miệng, 2 mặt nạ, ống dẫn kh&iacute;, 2 bộ lọc, s&aacute;ch HDSD.</p>\r\n\r\n<p><em><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/Essence/editessence-22.jpg\" style=\"width:600px\" /></em></p>\r\n\r\n<p><em>Phụ kiện</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"https://sieuthiyte.com.vn/data/images/Essence/Essence-nd6-min.jpg\" style=\"width:600px\" /></em></p>\r\n\r\n<p><em>Vỏ hộp&nbsp;M&aacute;y x&ocirc;ng mũi họng Philips Innospire Essence</em></p>', 1, NULL, '2023-11-09', '2023-10-18 03:28:49'),
(25, 2, 'Cây lăn massage mặt và body Kakusan KB-21', '1697625704-product.jpg', 400000, 279000, 10, '<p>C&acirc;y lăn massage mặt v&agrave; body&nbsp;</p>', '<h2><strong>Giới thiệu&nbsp;C&acirc;y lăn massage mặt v&agrave; body Kakusan&nbsp;KB-213</strong></h2>\r\n\r\n<p>Sử dụng&nbsp;<strong><em>C&acirc;y lăn massage mặt v&agrave; body Kakusan&nbsp;KB-213</em></strong>&nbsp;h&agrave;ng ng&agrave;y sẽ l&agrave;m cho l&agrave;n da mặt của bạn tr&ocirc;ng khỏe mạnh v&agrave; trẻ trung hơn. Ngo&agrave;i ra,&nbsp;<strong><a href=\"https://sieuthiyte.com.vn/blog/cay-lan-massage-mat\" target=\"_blank\">c&acirc;y lăn massage mặt</a></strong>&nbsp;c&oacute; thể kết hợp với c&aacute;c sản phẩm chăm s&oacute;c da h&ograve;a tan trong nước để th&uacute;c đẩy sự hấp thụ dưỡng chất của da mặt được tốt hơn.</p>\r\n\r\n<p><img alt=\"Cây lăn massage Kakusan KB-213\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/cay-lan-massage-mat-va-body-kakusan-kb-213-ndbsf1.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>C&acirc;y lăn massage Kakusan KB-213</em></p>\r\n\r\n<p><strong><em>Con lăn massage cao cấp</em></strong>&nbsp;sở hữu&nbsp;<em><strong>c&ocirc;ng nghệ EMS</strong>&nbsp;</em>hiện đại với d&ograve;ng điện vi m&ocirc; si&ecirc;u nhỏ t&aacute;c động đến từng tế b&agrave;o da, kh&ocirc;ng chỉ d&agrave;nh cho da mặt m&agrave; c&ograve;n c&oacute; thể d&ugrave;ng thiết bị để xoa b&oacute;p giảm đau mỏi tr&ecirc;n nhiều v&ugrave;ng cơ thể như: ngực, c&aacute;nh tay, thắt lưng, h&ocirc;ng, đ&ugrave;i, ch&acirc;n.</p>\r\n\r\n<p><img alt=\"Cây lăn massage mặt và body Kakusan KB-213\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/cay-lan-massage-mat-va-body-kakusan-kb-213-ndbsf11.jpg\" style=\"width:650px\" /></p>\r\n\r\n<p><em>C&acirc;y lăn massage mặt v&agrave; body Kakusan KB-213</em></p>\r\n\r\n<h2><strong>Lợi &iacute;ch sức khỏe khi sử dụng c&acirc;y lăn massage Kakusan KB-213</strong></h2>\r\n\r\n<ul>\r\n	<li>Th&uacute;c đẩy tuần ho&agrave;n m&aacute;u tr&ecirc;n khu&ocirc;n mặt.</li>\r\n	<li>K&iacute;ch hoạt qu&aacute; tr&igrave;nh trao đổi chất của tế b&agrave;o da, l&agrave;m da đ&agrave;n hồi v&agrave; săn chắc.</li>\r\n	<li>Giảm cellulite (sần da cam) v&agrave; c&aacute;c dấu hiệu l&atilde;o h&oacute;a.</li>\r\n	<li>Giảm vi&ecirc;m, cải thiện chứng ph&ugrave; nề v&agrave; kh&ocirc; da.</li>\r\n	<li>C&oacute; t&aacute;c dụng giảm căng thẳng, thư gi&atilde;n tinh thần.</li>\r\n</ul>\r\n\r\n<h2><strong>Ưu điểm v&agrave; t&iacute;nh năng c&acirc;y lăn massage mặt&nbsp;năng lượng mặt trời&nbsp;Kakusan&nbsp;KB-213</strong></h2>\r\n\r\n<ul>\r\n	<li><strong><a href=\"https://sieuthiyte.com.vn/cay-lan-massage-mat-va-body-kakusan-kb-213-1285.html\">C&acirc;y lăn massage Kakusan KB-213</a></strong>&nbsp;<em><strong>chạy bằng năng lượng mặt trời</strong>&nbsp;</em>v&agrave; năng lượng được thu thập bằng bảng năng lượng mặt trời tr&ecirc;n th&acirc;n c&acirc;y lăn.</li>\r\n	<li>Thiết kế&nbsp;<em><strong>bi lăn đ&ocirc;i 360&deg;</strong></em>, ph&ugrave; hợp với tất cả c&aacute;c bộ phận của cơ thể như: l&ocirc;ng m&agrave;y, mũi, m&aacute;, c&aacute;nh tay, đ&ugrave;i,&hellip;&nbsp;</li>\r\n	<li>Con lăn b&aacute;m da, thoải m&aacute;i v&agrave; kh&ocirc;ng dễ trượt.</li>\r\n	<li><em><strong>Kiểu d&aacute;ng chữ Y</strong></em>&nbsp;tiện dụng, hai con lăn tạo&nbsp;<strong><em>g&oacute;c 70&deg;</em>&nbsp;</strong>để tiếp cận to&agrave;n bộ khu&ocirc;n mặt với t&aacute;c động massage nhẹ nh&agrave;ng, giảm căng thẳng cho da mặt.</li>\r\n	<li>C&ocirc;ng nghệ d&ograve;ng điện vi m&ocirc;&nbsp;<em><strong>EMS</strong></em>&nbsp;với&nbsp;<strong><em>cường độ d&ograve;ng điện thay đổi theo cường độ &aacute;nh s&aacute;ng</em></strong>, gi&uacute;p k&iacute;ch th&iacute;ch ATP v&agrave; sản sinh collagen để l&agrave;m săn chắc da.</li>\r\n	<li>Kết hợp c&aacute;c kỹ thuật nh&agrave;o, nắm, xoắn phức tạp, t&aacute;c động s&acirc;u lớp mỡ dưới da, đẩy nhanh qu&aacute; tr&igrave;nh đốt ch&aacute;y mỡ để l&agrave;m thon gọn nơi bạn muốn.</li>\r\n	<li>Sử dụng được với tinh chất l&agrave;m đẹp h&ograve;a tan trong nước, mang đến hiệu quả l&agrave;m đẹp da tối ưu hơn.</li>\r\n	<li>K&iacute;ch thước gọn nhẹ, bạn c&oacute; thể tận hưởng trải nghiệm massage v&agrave; thư gi&atilde;n ở mọi nơi.</li>\r\n	<li><em><strong>C&acirc;y lăn massage mặt&nbsp;kh&ocirc;ng cần d&ugrave;ng pin</strong></em>, bạn kh&ocirc;ng cần lo qu&aacute; tr&igrave;nh sử dụng bị gi&aacute;n đo&aacute;n do hết pin.</li>\r\n</ul>', 1, NULL, '2023-10-18', '2023-10-18 03:41:44'),
(26, 2, 'Bàn chải rửa mặt và massage silicone TouchBeauty TB1762', '1697625782-product.jpg', 400000, 179000, 11, '<p>B&agrave;n chải rửa mặt v&agrave; massage silicone</p>', '<p><strong>B&agrave;n chải rửa mặt v&agrave; massage silicone&nbsp;TouchBeauty&nbsp;TB1762</strong></p>\r\n\r\n<hr />\r\n<h2><strong>Giới thiệu sản phẩm</strong></h2>\r\n\r\n<p><em><strong>B&agrave;n chải rửa mặt v&agrave; massage silicone&nbsp;TouchBeauty&nbsp;TB1762&nbsp;</strong></em>l&agrave; phụ kiện c&oacute; nguồn gốc từ thương hiệu TouchBeauty được nhiều kh&aacute;ch h&agrave;ng ưa chuộng thời gian gần đ&acirc;y.</p>\r\n\r\n<p><img alt=\"Bàn chải rửa mặt và massage silicone TB1762\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/ban-chai-rua-mat-va-massage-silicone-tb1762-nd3.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>B&agrave;n chải rửa mặt v&agrave; massage silicone&nbsp;TouchBeauty&nbsp;TB1762</em>&nbsp;</p>\r\n\r\n<h2><strong>Ưu điểm v&agrave; t&iacute;nh năng sản phẩm</strong></h2>\r\n\r\n<ul>\r\n	<li><strong>Đầu b&agrave;n chải với l&ocirc;ng PBT</strong>: mượt v&agrave; mềm mại, l&agrave;m sạch bụi bẩn, vi khuẩn một c&aacute;ch nhẹ nh&agrave;ng tr&ecirc;n da.&nbsp;</li>\r\n	<li><strong>Đầu b&agrave;n chải silicone</strong>: d&ugrave;ng để tẩy tế b&agrave;o chết cho da. Bề mặt silicone mềm mại, th&iacute;ch hợp để sử dụng cho bất kỳ loại da.</li>\r\n	<li><strong>Nắp trong suốt</strong>: Bảo vệ đầu b&agrave;n chải khỏi bụi bẩn, vi khuẩn tấn c&ocirc;ng.</li>\r\n	<li>Thiết kế nhỏ gọn dễ d&agrave;ng bỏ v&agrave;o t&uacute;i x&aacute;ch mang đi du lịch khắp mọi nơi.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Lông bàn chải siêu mượt\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/ban-chai-rua-mat-va-massage-silicone-tb1762-nd1.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>L&ocirc;ng b&agrave;n chải si&ecirc;u mượt</em></p>\r\n\r\n<p><img alt=\"Đầu bàn chải silicon mềm mại\" src=\"https://sieuthiyte.com.vn/data/images/San-Pham/ban-chai-rua-mat-va-massage-silicone-tb1762-nd2.jpg\" style=\"width:600px\" /></p>\r\n\r\n<p><em>Đầu b&agrave;n chải silicon mềm mại</em></p>', 1, NULL, '2023-11-07', '2023-10-18 03:43:02'),
(27, 14, 'Sản phẩm demo', '1699879056-product.jpg', 300000, 19900, 2, '<p>M&ocirc; tả demo</p>', '<p>nội dung sản phẩm demo</p>', 1, '2023-11-13', '2023-11-13', '2023-11-13 12:37:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_cmt`
--

CREATE TABLE `product_cmt` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `content` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 'Quản trị', 'admin@gmail.com', NULL, '$2y$10$caSacaNmZUxCNAwu37QnWegnUm7B9Kn7u5UG6lP0Tr.fBq0STEAQa', 1, NULL, '2023-01-09 18:22:59', '2023-01-09 18:22:59', NULL),
(15, 'Quang', 'quang@gmail.com', NULL, '$2y$10$8M9bd00tSni3ykjA8TrZLulmL1zxt1sgKj3.3a.rrfJy0HchIvVcK', 0, NULL, '2023-10-15 07:22:35', '2023-10-15 07:22:35', NULL),
(16, 'user1', 'user1@gmail.com', NULL, '$2y$10$vmx7NN64EVyDwa0j7kJHMu9sYsnLvtp1e3xHoOtf8VpQutoTAdFXK', 0, NULL, '2023-10-15 07:39:30', '2023-10-15 07:39:30', NULL),
(17, 'thành viên', 'thanhvien@gmail.com', NULL, '$2y$10$fJLvtN2.AwVVaybWyuVk0.G6HX1Hui2T2Zq1hZan98526li2X3Z9i', 0, NULL, '2023-10-16 21:40:15', '2023-10-16 21:40:15', NULL),
(18, 'dang', 'dang@gmail.com', NULL, '$2y$10$tCc/gVsRCZbk9gyB6W.j8ugppmxTvDd5DnCwAkiV/7Z50160KoeBi', 0, NULL, '2023-10-16 21:43:45', '2023-10-16 21:43:45', NULL),
(19, 'user3', 'user3@gmail.com', NULL, '$2y$10$HzFgx8SCGMiLMZDhCsNQ/uy0ma6iHHFEK2siZOPFwbqPkZPkXrYH2', 0, NULL, '2023-10-16 21:51:42', '2023-10-16 21:51:42', NULL),
(20, 'userw', 'userw@gmail.com', NULL, '$2y$10$zT53C4fTYKCaPXK5Q3kWFeLwL3rO6LolmITWetqKwPNyUItTN9Pfe', 0, NULL, '2023-10-16 22:07:15', '2023-10-16 22:07:15', NULL),
(21, 'jon', 'jon@gmail.com', NULL, '$2y$10$QSatGgMAAbwhc3ipWPr.ReXyuK6Qyzex1gixed7v6KuU7.4Z4osRK', 0, NULL, '2023-10-17 21:05:36', '2023-10-17 21:05:36', NULL),
(22, 'quang nguyễn', 'quang1@gmail.com', NULL, '$2y$10$izy.FvjgiuMLWZgZMNNMaufT3vHcYfNgxepHVCJcraHyhzhy4nVWS', 0, NULL, '2023-10-18 04:40:48', '2023-10-18 04:40:48', NULL),
(24, 'tkdemo', 'tkdemo@gmail.com', NULL, '$2y$10$6PieCxtOCefdKq1MhdYvWuUZvSwfdiFVGG4w4vYWaDF2GBBjrI35S', 0, NULL, '2023-11-13 12:28:25', '2023-11-13 12:28:25', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_blog` (`id_blog`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `img_products`
--
ALTER TABLE `img_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`,`id_sp`),
  ADD KEY `order_detail_ibfk_2` (`id_sp`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Chỉ mục cho bảng `product_cmt`
--
ALTER TABLE `product_cmt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sp` (`id_sp`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `img_products`
--
ALTER TABLE `img_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `product_cmt`
--
ALTER TABLE `product_cmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_blog`) REFERENCES `blog` (`id`);

--
-- Các ràng buộc cho bảng `img_products`
--
ALTER TABLE `img_products`
  ADD CONSTRAINT `img_products_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`id_sp`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_cat`) REFERENCES `cat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
