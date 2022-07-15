-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 13, 2022 lúc 11:57 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `img_banner` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id_banner`, `img_banner`, `url`) VALUES
(17, '637739134888909955_F-C1_1200x300.jfif', 'product-detail.php?id=22'),
(18, '637739145749445245_F-C1_1200x300.jfif', 'product-detail.php?id=26'),
(19, '637739496194231009_F-C1_1200x300@2x.jfif', 'product-detail.php?id=24'),
(20, '637738904222602672_F-C1_1200x300.jfif', 'product-detail.php?id=35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id_bl` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id_bl`, `id_sp`, `id_user`, `noi_dung`) VALUES
(39, 23, 2, 'Không có chplay'),
(42, 36, 2, 'Không có chplay'),
(43, 36, 2, 'bfjdbgjafjkgjksdfnhkjghkjsfdnhgnjfkdngnjksfdnjvnfjdsnvjknfjskdvnjk'),
(44, 36, 2, 'Không có chplay'),
(45, 36, 2, 'bfjdbgjafjkgjksdfnhkjghkjsfdnhgnjfkdngnjksfdnjvnfjdsnvjknfjskdvnjk');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id_ctdh` int(11) NOT NULL,
  `don_gia` double NOT NULL,
  `so_luong` int(11) NOT NULL,
  `id_dh` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id_ctdh`, `don_gia`, `so_luong`, `id_dh`, `id_sp`) VALUES
(13, 41990000, 1, 20, 27),
(14, 7389997, 1, 21, 34),
(15, 3690000, 3, 22, 35),
(16, 3690000, 2, 23, 35),
(17, 16999000, 1, 24, 23),
(18, 7389997, 1, 25, 34),
(19, 41990000, 1, 26, 27),
(20, 4990000, 1, 26, 36),
(21, 33990000, 1, 27, 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_dm` int(11) NOT NULL,
  `ten_dm` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_dm`, `ten_dm`) VALUES
(1, 'Oppo'),
(2, 'Iphone'),
(3, 'Samsung'),
(4, 'Vivo'),
(5, 'Realme');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id_dh` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tong_tien` float NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `trang_thai` int(1) NOT NULL,
  `ngay_tao` date NOT NULL,
  `ngay_hoan_thanh` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id_dh`, `id_user`, `ho_ten`, `dia_chi`, `sdt`, `tong_tien`, `ghi_chu`, `trang_thai`, `ngay_tao`, `ngay_hoan_thanh`) VALUES
(20, 10, 'Nguyễn Văn A', 'Sóc Sơn Hà Nội', '0123456789', 41990000, '', 2, '2021-11-30', NULL),
(21, 4, 'Lê hoàng duy', 'x1sdfsdfsdfsdfsdfdsf', '0959865656', 7390000, '', 3, '2021-11-29', '2021-11-30'),
(22, 4, 'Lê hoàng duy', 'aergresgsehbesthst sbgszrrgfz', '0959865656', 11070000, '', 4, '2021-12-01', NULL),
(23, 4, 'Lê hoàng duy', 'x1sdfsdfsdfsdfsdfdsfx1sdfsdfsdfsdfsdfdsfx1sdfsdfsdfsdfsdfdsfx1sdfsdfsdfsdfsdfdsfx1sdfsdfsdfsdfsdfdsfx1sdfsdfsdfsdfsdfdsfx1sdfsdfsdfsdfsdfdsfx1sdfsdfsdfsdfsdfdsfx1sdfsdfsdfsdfsdfdsfx1sdfsdfsdfsdfsdfdsfx1sdfsdfsdfsdfsdfdsfx1sdfsdfsdfsdfsdfdsfx1sdfsdfsdfsdfs', '0959865656', 7380000, '', 3, '2021-12-01', '2021-12-01'),
(24, 4, 'Lê hoàng duy', 'sadfsdfasdfasdfasdgfdasgafdsgdfg', '0959865656', 16999000, '', 0, '2021-12-01', NULL),
(25, 4, 'Lê hoàng duy', 'srtthgsrthsrthsrh', '0959865656', 7390000, '', 0, '2021-12-06', NULL),
(26, 10, 'Nguyễn Văn A', 'Sóc Sơn Hà Nội', '0123456789', 46980000, 'abc', 0, '2021-12-12', NULL),
(27, 10, 'Nguyễn Văn A', 'Sóc Sơn Hà Nội', '0123456789', 33990000, 'mẹ huyền', 3, '2022-02-05', '2022-02-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(11) NOT NULL,
  `ten_sp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `gia_cu` double NOT NULL,
  `gia_moi` double NOT NULL,
  `mo_ta` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `anh_sp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_dm` int(11) NOT NULL,
  `cau_hinh` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hien_sp` int(1) NOT NULL COMMENT '0:ẩn, 1:hiện'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `ten_sp`, `gia_cu`, `gia_moi`, `mo_ta`, `anh_sp`, `id_dm`, `cau_hinh`, `hien_sp`) VALUES
(22, 'Iphone 13 Pro Max 128gb', 34990000, 33990000, '<p>iPhone 13 Pro Max&nbsp;xứng đ&aacute;ng l&agrave; một&nbsp;chiếc iPhone lớn nhất, mạnh mẽ nhất v&agrave; c&oacute; thời lượng pin d&agrave;i nhất từ trước đến nay sẽ cho bạn trải nghiệm tuyệt vời, từ những t&aacute;c vụ b&igrave;nh thường cho đến c&aacute;c ứng dụng chuy&ecirc;n nghiệp.</p>\r\n', 'iphone-13-pro-max-sierra-blue-600x600.jpg', 2, '<ul>\r\n	<li>6.7&quot;, Super Retina XDR, OLED, 2778 x 1284 Pixel</li>\r\n	<li>12.0 MP + 12.0 MP + 12.0 MP</li>\r\n	<li>12.0 MP</li>\r\n	<li>A15 Bionic</li>\r\n	<li>128 GB</li>\r\n</ul>\r\n', 1),
(23, 'Iphone 11 64gb', 17690000, 16999000, '<p><strong>Iphone 11 với 6 phi&ecirc;n bản m&agrave;u sắc, camera c&oacute; khả năng chụp ảnh vượt trội, thời lượng pin cực d&agrave;i v&agrave; bộ vi xử l&yacute; mạnh nhất từ trước đến nay sẽ mang đến trải nghiệm tuyệt vời d&agrave;nh cho bạn.</strong></p>\r\n', 'iphone-xi-do-600x600.jpg', 2, '<ul>\r\n	<li>6.1&quot;, Liquid Retina HD, IPS LCD, 828 x 1792 Pixel</li>\r\n	<li>12.0 MP + 12.0 MP</li>\r\n	<li>12.0 MP</li>\r\n	<li>A13 Bionic</li>\r\n	<li>64 GB</li>\r\n</ul>\r\n', 1),
(24, 'Iphone 12 Pro Max 128gb ', 32999000, 30999000, '<p>&ldquo;Tr&ugrave;m cuối&rdquo; của d&ograve;ng iPhone 12 đ&atilde; xuất hiện.&nbsp;iPhone 12 Pro Max&nbsp;l&agrave; chiếc&nbsp;iPhone&nbsp;c&oacute; m&agrave;n h&igrave;nh lớn nhất từ trước đến nay, mang tr&ecirc;n m&igrave;nh bộ vi xử l&yacute; mạnh nhất, camera&nbsp;đẳng cấp pro c&ugrave;ng kết nối 5G si&ecirc;u tốc, cho bạn những trải nghiệm tuyệt vời chưa từng c&oacute;.</p>\r\n', 'iphone-12-pro-max-xam-new-600x600-200x200.jpg', 2, '<ul>\r\n	<li>6.7&quot;, Super Retina XDR, OLED, 2778 x 1284 Pixel</li>\r\n	<li>12.0 MP + 12.0 MP + 12.0 MP</li>\r\n	<li>12.0 MP</li>\r\n	<li>A14 Bionic</li>\r\n	<li>128 GB</li>\r\n</ul>\r\n', 1),
(25, 'Samsung Galaxy Z Flip3 5g 128gb', 25990000, 24990000, '<p>Một biểu tượng thời trang, một kiệt t&aacute;c của thế giới c&ocirc;ng nghệ m&agrave; ai cũng phải kinh ngạc khi nh&igrave;n thấy&nbsp;Samsung Galaxy Z Flip3 5G&nbsp;v&agrave; c&aacute;ch m&agrave; bạn sử dụng si&ecirc;u phẩm smartphone n&agrave;y, nơi c&ocirc;ng nghệ điện thoại m&agrave;n h&igrave;nh gập đ&atilde; mang đến những điều kh&ocirc;ng tưởng.</p>\r\n', 'samsung-galaxy-s21-plus-den-600x600-200x200 (1).jpg', 3, '<ul>\r\n	<li>M&agrave;n h&igrave;nh ch&iacute;nh: 6.7&rdquo;, M&agrave;n h&igrave;nh phụ: 1.9&rdquo;, FHD+, Ch&iacute;nh: Dynamic AMOLED, phụ: Super AMOLED, 1080 x 2636 Pixel</li>\r\n	<li>12.0 MP + 12.0 MP</li>\r\n	<li>10.0 MP</li>\r\n	<li>Snapdragon 888</li>\r\n</', 1),
(26, 'Samsung Galaxy S21+ 128gb', 25990000, 20990000, '<p><strong>Kh&aacute;m ph&aacute; vẻ đẹp chuẩn mực, ho&agrave;n to&agrave;n kh&aacute;c biệt tr&ecirc;n Samsung Galaxy S21 Plus, nơi bạn sẽ được tận hưởng camera chuy&ecirc;n nghiệp nhất từ trước đến nay, bộ vi xử l&yacute; mạnh mẽ v&agrave; hỗ trợ kết nối mạng 5G si&ecirc;u tốc.</strong></p>\r\n', 'samsung-galaxy-s21-plus-den-600x600-200x200.jpg', 3, '<ul>\r\n	<li>6.7&quot;, FHD+, Dynamic AMOLED 2X, 1080 x 2400 Pixel</li>\r\n	<li>12.0 MP + 12.0 MP + 64.0 MP</li>\r\n	<li>10.0 MP</li>\r\n	<li>Exynos 2100</li>\r\n	<li>128 GB</li>\r\n</ul>\r\n', 1),
(27, 'Samsung Galaxy Z Fold3 5g 256gb', 43990000, 41990000, '<p>Khi bạn mở ra m&agrave;n h&igrave;nh gập lớn tới 7,6 inch tr&ecirc;n&nbsp;Samsung Galaxy Z Fold3 5G&nbsp;l&agrave; l&uacute;c bạn đ&atilde; mở ra một tương lai ho&agrave;n to&agrave;n mới cho thế giới smartphone, nơi c&ocirc;ng nghệ vượt qua mọi giới hạn, cho trải nghiệm ho&agrave;n hảo nhất ở một thiết bị di động nhỏ gọn.</p>\r\n', 'samsung-galaxy-z-fold-3-green-1-600x600.jpg', 3, '<ul>\r\n	<li>M&agrave;n h&igrave;nh ch&iacute;nh: 7.6&rdquo;, M&agrave;n h&igrave;nh phụ: 6.2&rdquo;, HD+, Ch&iacute;nh: Dynamic AMOLED 2X, phụ: Dynamic AMOLED 2X, 1768 x 2208 Pixel</li>\r\n	<li>12.0 MP + 12.0 MP + 12.0 MP</li>\r\n	<li>10.0 MP</li>\r\n	<li>Snapdr', 1),
(28, 'Oppo Find X3 Pro 5g', 26990000, 19990000, '<p><strong>Sẵn s&agrave;ng c&ugrave;ng bạn hướng tới tương lai với&nbsp;OPPO Find X3 Pro 5G, chiếc&nbsp;điện thoại&nbsp;sở hữu camera m&agrave;u sắc trung thực, m&agrave;n h&igrave;nh 120Hz si&ecirc;u mượt, 1 tỷ m&agrave;u sống động v&agrave; hiệu năng đột ph&aacute; với sức mạnh của con chip Qualcomm Snapdragon 888 hỗ trợ 5G.</strong></p>\r\n', 'oppo-find-x3-pro-black-001-1-600x600.jpg', 1, '<ul>\r\n	<li>6.7&quot;, QHD+, AMOLED, 1440 x 3216 Pixel</li>\r\n	<li>50.0 MP + 50.0 MP + 13.0 MP + 3.0 MP</li>\r\n	<li>32.0 MP</li>\r\n	<li>Snapdragon 888</li>\r\n	<li>256 GB</li>\r\n</ul>\r\n', 1),
(29, 'Oppo Reno6 5g', 15990000, 12990000, '<p><strong>Sẵn s&agrave;ng bật tung cảm x&uacute;c c&ugrave;ng&nbsp;OPPO Reno6 5G, chiếc&nbsp;điện thoại&nbsp;sở hữu thiết kế đẳng cấp si&ecirc;u mỏng nhẹ, camera chụp ch&acirc;n dung Bokeh Flare độc đ&aacute;o v&agrave; tr&ecirc;n hết l&agrave; kết nối mạng 5G si&ecirc;u tốc, c&ugrave;ng bạn kết nối tương lai.</strong></p>\r\n', 'oppo-reno6-pro-blue-1-600x600.jpg', 1, '<ul>\r\n	<li>6.43&quot;, FHD+, AMOLED, 1080 x 2400 Pixel</li>\r\n	<li>64.0 MP + 8.0 MP + 2.0 MP</li>\r\n	<li>32.0 MP</li>\r\n	<li>MediaTek Dimensity 900 5G</li>\r\n	<li>128 GB</li>\r\n</ul>\r\n', 1),
(30, 'Oppo A55 4gb-64gb', 6990000, 4990000, '<p><strong>Một chiếc&nbsp;điện thoại&nbsp;chụp ảnh tuyệt đẹp v&agrave; c&oacute; đủ năng lượng để c&ugrave;ng bạn trải nghiệm những điều th&uacute; vị trong cuộc sống,&nbsp;OPPO A55&nbsp;với thiết kế tươi trẻ, cấu h&igrave;nh xuất sắc trong tầm gi&aacute; rẻ chắc chắn sẽ l&agrave;m bạn h&agrave;i l&ograve;ng.</strong></p>\r\n', 'oppo-a55-4g-blue-600x600.jpg', 1, '<ul>\r\n	<li>6.5&quot;, HD+, LCD, 720 x 1600 Pixel</li>\r\n	<li>50.0 MP + 2.0 MP + 2.0 MP</li>\r\n	<li>16.0 MP</li>\r\n	<li>Mediatek Helio G35</li>\r\n	<li>64 GB</li>\r\n</ul>\r\n', 1),
(31, 'Vivo V23e 8gb - 128gb', 8690000, 8490000, '<p><strong>Với&nbsp;vivo V23e, mọi khu&ocirc;n h&igrave;nh selfie của bạn sẽ đẹp lung linh nhờ sự trợ gi&uacute;p của camera selfie 50MP kết hợp c&ugrave;ng c&ocirc;ng nghệ Eye Autofocus. Ngo&agrave;i ra,&nbsp;vivo&nbsp;đ&atilde; th&agrave;nh c&ocirc;ng trong việc đưa h&agrave;ng loạt t&iacute;nh năng đỉnh cao của h&atilde;ng v&agrave;o bộ khung vỏ mỏng nhẹ, thời trang, đầy phong c&aacute;ch.</strong></p>\r\n', 'c91ba5bf721d5b2d4eae4f821b8e4ced.png', 4, '<ul>\r\n	<li>6.44&quot;, FHD+, AMOLED, 1080 x 2400 Pixel</li>\r\n	<li>64.0 MP + 8.0 MP + 2.0 MP</li>\r\n	<li>50 MP</li>\r\n	<li>Mediatek Helio G96</li>\r\n	<li>128 GB</li>\r\n</ul>\r\n', 1),
(32, 'Vivo Y15s 3gb - 32gb', 4690000, 3690000, '<p><strong>Vivo Y15s&nbsp;kh&ocirc;ng chỉ c&oacute; hiệu năng xuất sắc m&agrave; chiếc&nbsp;điện thoại&nbsp;n&agrave;y&nbsp;c&ograve;n sở hữu camera si&ecirc;u chụp đ&ecirc;m v&agrave; khả năng quay video chống rung cực đỉnh, cho bạn tận hưởng cuộc sống năng động, tr&agrave;n đầy niềm vui.</strong></p>\r\n', 'dfd9ec612c5e9f30b622847873e3a962.png', 4, '<ul>\r\n	<li>6.51&quot;, HD+, IPS LCD, 720 x 1600 Pixel</li>\r\n	<li>13.0 MP + 2.0 MP</li>\r\n	<li>8.0 MP</li>\r\n	<li>Helio P35</li>\r\n	<li>32 GB</li>\r\n</ul>\r\n', 1),
(33, 'Vivo X70 Pro Plus', 19990000, 18990000, '<p><strong>Vivo X70 Pro&nbsp;l&agrave; chiếc&nbsp;điện thoại&nbsp;cao cấp h&agrave;ng đầu, khẳng định khả năng l&agrave;m chủ c&ocirc;ng nghệ của vivo. Bộ tứ camera ống k&iacute;nh ZEISS chống rung Gimbal đẳng cấp, thiết kế ho&agrave;n mỹ v&agrave; hiệu năng dẫn đầu, vivo X70 Pro ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n hảo d&agrave;nh cho bạn.</strong></p>\r\n', 'vivo-x70-pro-plus-1-600x600.jpg', 4, '<ul>\r\n	<li>6.56&quot;, FHD+, AMOLED, 1080 x 2376 Pixel</li>\r\n	<li>50.0 MP + 12.0 MP + 12.0 MP + 8.0 MP</li>\r\n	<li>32.0 MP</li>\r\n	<li>MediaTek 128</li>\r\n</ul>\r\n', 1),
(34, 'Realme 8 Pro 8gb - 128gb ', 8690000, 7389997, '<p><strong>Realme 8 Pro&nbsp;với camera độ ph&acirc;n giải l&ecirc;n tới 108MP, mang đến cho bạn những h&igrave;nh ảnh v&agrave; thước phim ch&acirc;n thực nhất. B&ecirc;n cạnh đ&oacute; cấu h&igrave;nh ấn tượng nhờ bộ vi xử l&yacute; Snapdragon 720G sẽ tạo n&ecirc;n dấu ấn sức mạnh đỉnh cao trong một thiết kế mỏng nhẹ.</strong></p>\r\n', 'realme-8-pro-balck-600x600.jpg', 5, '<ul>\r\n	<li>6.4&quot;, FHD+, Super AMOLED, 1080 x 2400 Pixel</li>\r\n	<li>108.0 MP + 8.0 MP + 2.0 MP + 2.0 MP</li>\r\n	<li>16.0 MP</li>\r\n	<li>Snapdragon 888+</li>\r\n</ul>\r\n', 1),
(35, 'Realme C21y 3gb', 3990000, 3690000, '<p><strong>Trải nghiệm mượt m&agrave; suốt cả ng&agrave;y nhờ vi&ecirc;n pin dung lượng cao 5000mAh, tận hưởng mọi nội dung tr&ecirc;n m&agrave;n h&igrave;nh lớn 6,5 inch cực đ&atilde;, thỏa sức s&aacute;ng tạo với bộ 3 camera chất lượng,&nbsp;realme C21Y&nbsp;sẽ khiến cho mỗi ng&agrave;y của bạn tr&ocirc;i qua đầy hứng khởi.</strong></p>\r\n', 'realme-c21-y-blue-600x600.jpg', 5, '<ul>\r\n	<li>6.5&quot;, HD+, IPS LCD, 720 x 1600 Pixel</li>\r\n	<li>13.0 MP + 2.0 MP + 2.0 MP</li>\r\n	<li>5.0 MP</li>\r\n	<li>Unisoc T610</li>\r\n	<li>32 GB</li>\r\n</ul>\r\n', 1),
(36, 'Realme C25y 4gb', 5490000, 4990000, '<p><strong>Trải nghiệm mượt m&agrave; suốt cả ng&agrave;y nhờ vi&ecirc;n pin dung lượng cao 5000mAh, tận hưởng mọi nội dung tr&ecirc;n m&agrave;n h&igrave;nh lớn 6,5 inch cực đ&atilde;, thỏa sức s&aacute;ng tạo với bộ 3 camera chất lượng,&nbsp;Realme C25y 4GB&nbsp;sẽ khiến cho mỗi ng&agrave;y của bạn tr&ocirc;i qua đầy hứng khởi.</strong></p>\r\n', 'realme-c25y-blue-600x600.jpg', 5, '<ul>\r\n	<li>6.5&quot;, HD+, LCD, 720 x 1600 Pixel</li>\r\n	<li>50.0 MP + 2.0 MP + 2.0 MP</li>\r\n	<li>8.0 MP</li>\r\n	<li>Unisoc T618</li>\r\n	<li>128 GB</li>\r\n</ul>\r\n', 1),
(37, 'Use Case', 999988, 52134, '<p>aerreag</p>\r\n', '72-729756_how-to-add-a-new-user-to-your.png', 1, '<p>ergesr</p>\r\n', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phan_quyen` int(1) NOT NULL COMMENT '0:người dùng - 1:qtv',
  `chan_user` int(1) NOT NULL COMMENT '0:không - 1:chặn người dùng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `ho_ten`, `username`, `password`, `sdt`, `phan_quyen`, `chan_user`) VALUES
(2, 'duy', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '0655151555', 1, 0),
(4, 'Lê hoàng duy', 'user1', 'e10adc3949ba59abbe56e057f20f883e', '0959865656', 0, 0),
(8, 'Nguyễn Minh Đức', 'ducnmph16013', 'e10adc3949ba59abbe56e057f20f883e', '0123456789', 1, 0),
(10, 'Nguyễn Văn A', 'abc123', 'e10adc3949ba59abbe56e057f20f883e', '0123456789', 0, 0),
(13, 'duyyy2912raegsergesg', 'user2', 'e10adc3949ba59abbe56e057f20f883e', '0123456789', 0, 0),
(17, 'duyyy2912raegsergesg', 'admina', 'e10adc3949ba59abbe56e057f20f883e', '0959865656', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id_bl`),
  ADD KEY `id_sp` (`id_sp`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id_ctdh`),
  ADD KEY `id_dh` (`id_dh`,`id_sp`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_dm`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_dh`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_dm` (`id_dm`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id_ctdh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_dm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_dh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`id_dh`) REFERENCES `donhang` (`id_dh`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_dm`) REFERENCES `danhmuc` (`id_dm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
