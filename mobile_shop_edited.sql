

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(6, 'Vsmart'),
(3, 'Realme'),
(1, 'iPhone'),
(4, 'Redmi'),
(7, 'OPPO'),
(2, 'Samsung'),
(5, 'OnePlus'),
(9, 'Vivo'),
(8, 'Xiaomi');


CREATE TABLE `comment` (
  `comm_id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `comm_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comm_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comm_date` datetime NOT NULL,
  `comm_details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `order_list` (
  `ord_id` int(11) NOT NULL,
  `ord_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ord_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_mail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ord_date` datetime NOT NULL,
  `ord_list` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ord_status` int(1) NOT NULL,
  `ord_total` double UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prd_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_price` int(11) UNSIGNED NOT NULL,
  `prd_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_new` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_status` int(1) NOT NULL,
  `prd_featured` int(1) NOT NULL,
  `prd_details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `product` (`prd_id`, `cat_id`, `prd_name`, `prd_image`, `prd_price`, `prd_warranty`, `prd_accessories`, `prd_new`, `prd_promotion`, `prd_status`, `prd_featured`, `prd_details`) VALUES
(1, 1, 'IPhone 13 Pro Max 256Gb Xanh', 'iphone-13-promax.jpg', 33000000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(2, 1, 'IPhone 13 Pro 128Gb Trắng', 'iPhone-13-Pro.jpg', 268000000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(3, 1, 'IPhone 13 Mini 128Gb Xanh', 'iphone-13-mini.png', 21890000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(4, 1, 'IPhone 12 Pro Max 128Gb Đen', 'iphone-12-pro-max.jpg', 25390000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(5, 1, 'IPhone 12 Pro 256Gb Xanh', 'iphone-12-pro.jpg', 21690000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(6, 1, 'IPhone 12 Mini 64Gb Trằng', 'iphone-12-mini.jpg', 14990000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(7, 1, 'IPhone 11 Pro Max 64Gb Xanh', 'iphone-11-pro-max.jpg', 1869000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(8, 1, 'IPhone 11 Pro 64Gb Trắng', 'iphone-11-pro.jpg', 12490000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(9, 1, 'IPhone 11 64Gb Tím ', 'iphone-11.png', 11590000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(10, 1, 'IPhone Xs Max 64Gb Vàng', 'ip-xsmax.jpg', 10490000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New%', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(11, 1, 'IPhone 8 Plus 64Gb Vàng', 'iPhone-8-Plus.png', 6490000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(12, 2, 'Samsung Galaxy Z Flip 3 128Gb Đen', 'samsung-galaxy-z-flip-3.jpeg', 18690000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(13, 2, 'Samsung Galaxy Z Fold3 5G 256Gb Đen', 'Samsung Galaxy Z Fold3.jpeg', 35790000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(14, 2, 'Samsung Galaxy Z Fold2 5G 256Gb Vàng đồng', 'Samsung Galaxy Z Fold2.jpg', 36000000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(15, 2, 'Samsung Galaxy S21 Ultra 5G 128Gb Bạc', 'Samsung Galaxy S21 Ultra.jpg', 22100000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(16, 2, 'Samsung Galaxy S20 FE 256Gb Xanh dương', 'Samsung Galaxy S20 FE.jpg', 12400000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(17, 2, 'Samsung Galaxy Note 20 5G 128Gb Đen', 'Samsung Galaxy Note 20.jpg', 23500000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(18, 2, 'Samsung Galaxy A72 128Gb Xanh', 'Samsung Galaxy A72.jpg', 11490000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(19, 2, 'Samsung Galaxy A52s 5G 128Gb Xanh', 'Samsung Galaxy A52s.jpg', 9450000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(20, 3, 'Realme GT 5G 128Gb Vàng', 'realme-gt-5g.jpg', 8750000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(21, 3, 'Realme GT Neo 128Gb Đen', 'realme-gt-neo.jpg', 6990000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(22, 3, 'Realme Q3 Pro 128Gb Vàng', 'realme-q3-pro.jpg', 6250000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(23, 3, 'Realme Q3s 128Gb Đa sắc', 'realme-q3s.jpg', 5290000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(24, 4, 'Redmi K30 Pro 128Gb Xanh', 'redmi-k30-pro.jpg', 6750000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(25, 4, 'Redmi K40 128Gb Trắng', 'redmi-k40.jpg', 7250000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(26, 4, 'Redmi Note 11 Pro 128Gb Đen', 'redmi-note-11-pro.jpg', 6250000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 1, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(27, 5, 'OnePlus 8 128Gb Xanh', 'oneplus-8.jpg', 8650000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(28, 5, 'OnePlus 8T 128Gb Xanh', 'oneplus8t.jpg', 9550000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(29, 5, 'OnePlus 9 128Gb Đen', 'oneplus-9.jpg', 10950000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(30, 5, 'OnePlus 9R 128Gb Xanh da trời', 'oneplus-9r.jpg', 9350000, '12 Tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Dán Màn Hình 4D', 0, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(31, 6, ' Vsmart Aris Pro 128Gb Xanh Lá cây', 'vsmart-aris-pro.jpg', 5150000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(32, 6, ' Vsmart Joy 4 64Gb Đen', 'vsmart-joy-4.png', 3590000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(33, 6, ' Vsmart Live 4 64Gb Xanh', 'vsmart-live-4.jpg', 3990000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),

(34, 7, ' Oppo A92 128Gb', 'oppo-a92.jpg', 6590000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(35, 7, ' Oppo A93 128Gb Trắng', 'oppo-a93.jpg', 6490000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(36, 7, ' Oppo Find X2 Pro 128Gb Đen', 'oppo-find-x2-pro.jpg', 11990000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(37, 7, ' Oppo Find X3 Pro 128Gb Đen', 'oppo-find-x3-pro.jpg', 14990000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(38, 8, ' Xiaomi Mi 11 Ultra 128Gb Trắng', 'xiaomi-mi-11-ultra.jpg', 17990000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(39, 8, ' Xiaomi Mi 11 128Gb Xanh', 'xiaomi-mi-11.jpg', 11390000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(40, 8, ' Xiaomi Mi 10 128Gb Hồng', 'xiaomi-mi-10.jpg', 8990000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(41, 8, ' Xiaomi Mi 11 Lite 5G 128Gb Tím', 'xiaomi-mi-11-lite5g.jpg', 7990000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(42, 9, ' Vivo V20 128Gb Xanh hồng', 'vivo v20.jpg', 8490000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(43, 9, ' Vivo V23e 128Gb Xanh hồng', 'vivo v23e.png', 7350000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(44, 9, ' Vivo X70 Pro Plus 256Gb Cam', 'vivo x70 pro plus.jpg', 18990000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(45, 9, ' Vivo X60 Pro Plus 256Gb Cam', 'vivo x60 pro plus.jpg', 14990000, '12 tháng', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất', 'New', 'Tặng ốp lưng + kính cường lực', 1, 0, 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.');


CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_full` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `user` (`user_id`, `user_full`, `user_mail`, `user_pass`, `user_level`) VALUES
(1, 'BK Academy', 'bk.edu.vn@gmail.com', '123456', 1),
(2, 'Administrator', 'admin@gmail.com', '123456', 1);


ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

ALTER TABLE `comment`
  ADD PRIMARY KEY (`comm_id`);

ALTER TABLE `order_list`
  ADD PRIMARY KEY (`ord_id`);

ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`);


ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `comment`
  MODIFY `comm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

ALTER TABLE `order_list`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
