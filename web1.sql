-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2018 at 10:44 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web1`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdondathang`
--

DROP TABLE IF EXISTS `chitietdondathang`;
CREATE TABLE IF NOT EXISTS `chitietdondathang` (
  `MaChiTietDonDatHang` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  PRIMARY KEY (`MaChiTietDonDatHang`),
  UNIQUE KEY `MaDonDatHang` (`MaDonDatHang`),
  KEY `MaSanPham` (`MaSanPham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

DROP TABLE IF EXISTS `dondathang`;
CREATE TABLE IF NOT EXISTS `dondathang` (
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime NOT NULL,
  `TongThanhTien` int(11) NOT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `MaTinhTrang` int(11) NOT NULL,
  PRIMARY KEY (`MaDonDatHang`),
  KEY `MaTaiKhoan` (`MaTaiKhoan`),
  KEY `MaTaiKhoan_2` (`MaTaiKhoan`),
  KEY `MaTinhTrang` (`MaTinhTrang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hangsanxuat`
--

DROP TABLE IF EXISTS `hangsanxuat`;
CREATE TABLE IF NOT EXISTS `hangsanxuat` (
  `MaHangSanXuat` int(11) NOT NULL AUTO_INCREMENT,
  `TenHangSanXuat` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `LogoURL` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(1) NOT NULL,
  PRIMARY KEY (`MaHangSanXuat`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MaHangSanXuat`, `TenHangSanXuat`, `LogoURL`, `BiXoa`) VALUES
(1, 'Apple', 'LogoHangIPhone.jpg', 0),
(2, 'Oppo', 'LogoHangOppo.jpg', 0),
(3, 'Samsung', 'LogoHangSamSung.jpg', 0),
(4, 'XiaoMi', 'LogoHangXiaAoMi.jpg', 0),
(5, 'Nokia', 'LogoHangRealMi.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

DROP TABLE IF EXISTS `loaisanpham`;
CREATE TABLE IF NOT EXISTS `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoaiSanPham` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(1) NOT NULL,
  PRIMARY KEY (`MaLoaiSanPham`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `TenLoaiSanPham`, `BiXoa`) VALUES
(1, 'IPhone 6', 0),
(2, 'IPhone 6S Plus', 0),
(3, 'IPhone 7', 0),
(4, 'IPhone 8 Plus', 0),
(5, 'IPhone X', 0),
(6, 'Samsung Galaxy J', 0),
(7, 'Samsung Galaxy A', 0),
(8, 'Samsung Galaxy S', 0),
(9, 'Samsung Galaxy Note', 0),
(10, 'Oppo F', 0),
(11, 'Oppo A', 0),
(12, 'Nokia 5', 0),
(13, 'Nokia 6', 0),
(14, 'Redmi', 0),
(15, 'Redmi S', 0),
(16, 'RedmiNote', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaitaikhoan`
--

DROP TABLE IF EXISTS `loaitaikhoan`;
CREATE TABLE IF NOT EXISTS `loaitaikhoan` (
  `MaiLoaiTaiKhoan` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoaiTaiKhoan` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaiLoaiTaiKhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaitaikhoan`
--

INSERT INTO `loaitaikhoan` (`MaiLoaiTaiKhoan`, `TenLoaiTaiKhoan`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `MaSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `TenSanPham` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `HinhURL` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `GiaSanPham` int(11) NOT NULL,
  `NgayNhap` datetime NOT NULL,
  `SoLuongTon` int(11) NOT NULL,
  `SoLuongBan` int(11) NOT NULL,
  `SoLuocXem` int(11) NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(1) NOT NULL,
  `MaLoaiSanPham` int(11) NOT NULL,
  `MaHangSanXuat` int(11) NOT NULL,
  `XuatXu` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaSanPham`),
  KEY `MaLoaiSanPham` (`MaLoaiSanPham`),
  KEY `MaHangSanXuat` (`MaHangSanXuat`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhURL`, `GiaSanPham`, `NgayNhap`, `SoLuongTon`, `SoLuongBan`, `SoLuocXem`, `MoTa`, `BiXoa`, `MaLoaiSanPham`, `MaHangSanXuat`, `XuatXu`) VALUES
(1, 'IPhone 6S Plus', 'iphone-6s-plus-32gb.png', 25000000, '2018-11-13 13:00:00', 230, 6, 0, 'Đặc điểm nổi bật của iPhone 6s Plus 32GB\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim\r\n\r\niPhone 6s Plus 32 GB là phiên bản nâng cấp hoàn hảo từ iPhone 6 Plus với nhiều tính năng mới hấp dẫn.\r\nCamera được cải tiến\r\nĐiện thoại iPhone 6s Plus 32 GB được nâng cấp độ phân giải camera sau lên 12 MP (thay vì 8 MP như trên iPhone 6 Plus), camera cho tốc độ lấy nét và chụp nhanh, thao tác chạm để chụp nhẹ nhàng. Chất lượng ảnh trong các điều kiện chụp khác nhau tốt.\r\n\r\nMàu sáng hơn hẳn so với iPhone 6 Plus\r\n\r\nCamera trước với độ phân giải 5 MP cho hình ảnh với độ chi tiết rõ nét, đặc biệt máy còn có tính năng Retina Flash, sẽ giúp màn hình sáng lên như đèn Flash để bức ảnh khi bạn chụp trong trời tối được tốt hơn.\r\n\r\nĐể bật tính năng Retina Flash, tại camera trước bạn bật đèn Flash lên\r\n\r\nĐể bật tính năng Retina Flash, tại camera trước bạn bật đèn Flash lên\r\n\r\nĐèn Flash giúp ảnh được sáng hơn\r\n\r\nThích thú hơn với màn hình rộng\r\nMàn hình lớn cùng màu sắc tươi tắn, độ nét cao sẽ mang đến nhiều thích thú khi lướt web, xem phim hay làm việc.', 0, 1, 1, 'Trung Quốc'),
(2, 'IPhone 7Plus Red', 'iphone-7-plus-red-256gb.png', 6200000, '2018-11-13 13:00:00', 56, 12, 0, 'iPhone 7 Plus Red 256GB là phiên bản iPhone 7 Plus mới được Apple giới thiệu với màu sắc mới là màu Red nhằm kỉ niệm 10 năm hợp tác giữa Apple và (RED) – một tổ chức gây quỹ hỗ trợ phòng chống AIDS.', 0, 1, 1, 'Trung Quốc'),
(3, 'IPhone X 64 GB Silver', 'iphone-x-64gb-silver.png', 9800000, '2018-11-28 05:13:10', 100, 50, 0, 'Kỉ niệm 10 năm chiếc điện thoại iPhone đầu tiên được bán ra, Apple đã cho ra mắt iPhone X với nhiều đột phá về thiết kế cũng như tính năng.\r\nMàn hình với tai thỏ thời thượng\r\nĐiểm khiến điện thoại iPhone X bị chê nhiều nhất đó chính là phần \"tai thỏ\" phía trên màn hình, Apple đã chấp nhận điều này để đặt cụm camera TrueDept mới của hãng.', 0, 1, 1, 'Trung Quốc'),
(4, 'IPhone X 64GB', 'iphone-x-64gb.png', 10000000, '2018-11-13 13:00:00', 50, 30, 0, 'Đặc điểm nổi bật của iPhone X 64GB Gray\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim\r\n\r\niPhone X là cụm từ được rất nhiều người mong chờ muốn biết và tìm kiếm trên Google bởi đây là chiếc điện thoại mà Apple kỉ niệm 10 năm iPhone đầu tiên được bán ra.\r\nThiết kế mang tính đột phá\r\nNhư các bạn cũng đã biết thì đã 4 năm kể từ chiếc điện thoại iPhone 6 và iPhone 6 Plus thì Apple vẫn chưa có thay đổi nào đáng kể trong thiết kế của mình.\r\n\r\nThiết kế đột phá của điện thoại iPhone X\r\n\r\nNhưng với iPhone X thì đó lại là 1 câu chuyện hoàn toàn khác, máy chuyển qua sử dụng màn hình tỉ lệ 19.5:9 mới mẻ với phần diện tích hiển thị mặt trước cực lớn.\r\n\r\nThiết kế đột phá của điện thoại iPhone X\r\n\r\nMặt lưng kính hỗ trợ sạc nhanh không dây cũng như phần camera kép đặt dọc cũng là những thứ đầu tiên xuất hiện trên 1 chiếc iPhone.\r\n\r\nMàn hình với tai thỏ\r\nĐiểm khiến iPhone X bị chê nhiều nhất đó chính là phần \"tai thỏ\" phía trên màn hình, Apple đã chấp nhận điều này để đặt cụm camera TrueDepth mới của hãng.\r\n\r\nMàn hình tai thỏ của điện thoại iPhone X\r\n\r\nMàn hình kích thước 5.8 inch độ phân giải 1125 x 2436 pixels đem đến khả năng hiển thị xuất sắc.\r\n\r\nMàn hình tai thỏ của điện thoại iPhone X\r\n\r\niPhone X sử dụng tấm nền OLED (được tinh chỉnh bởi Apple) thay vì LCD như những chiếc iPhone trước đây và điều này đem lại cho máy 1 màu đen thể hiện rất sâu cùng khả năng tái tạo màu sắc không kém phần chính xác.', 0, 1, 1, 'Trung Quốc'),
(5, 'Iphone XS MAX 512 GB', 'iphone-xs-max-512gb-gold.png', 42000000, '2018-11-28 05:13:10', 123, 38, 0, 'Là chiếc smartphone cao cấp nhất của Apple với mức giá khủng chưa từng có, bộ nhớ trong lên tới 512GB, iPhone XS Max 512GB - sở hữu cái tên khác biệt so với các thế hệ trước, trang bị tới 6.5 inch đầu tiên của hãng cùng các thiết kế cao cấp hiện đại từ chip A12 cho tới camera AI.\r\nMàn hình OLED chất lượng cao rộng 6.5 inch đầu tiên của Apple\r\nVới công nghệ Super Retina kết hợp tấm nền OLED trên iPhone XS Max đem lại dải màu sắc cực kì sống động và sắc nét đến từng chi tiết.\r\n\r\nMàn hình điện thoại iPhone Xs Max chính hãng\r\n\r\nBên cạnh đó, Apple còn tích hợp thêm công nghệ HDR10 cùng tần số cảm ứng 120 Hz giúp chất lượng hình ảnh được nâng cao và mượt mà hơn đáng kể.\r\n\r\nMàn hình điện thoại iPhone Xs Max chính hãng\r\n\r\nViệc sở hữu màn hình lớn đem đến cho bạn khá nhiều tiện ích như dễ dàng chỉnh sửa ảnh, xem phim, lướt web nhưng sẽ khó khăn hơn trong việc di chuyển.\r\n\r\nCamera kép tích hợp trí tuệ nhân tạo\r\nDù không sở hữu thông số camera khủng nhưng iPhone XS Max luôn cho thấy sự đẳng cấp của mình về khả năng nhiếp ảnh với cụm camera kép độ phân giải 12MP.\r\n\r\nCamera sau điện thoại iPhone Xs Max chính hãng\r\n\r\nMáy được trang bị hệ thống xử lý hình ảnh chất lượng cân bằng sáng, giảm nhiễu, tăng cường độ phơi sáng, màu da sao cho phù hợp và tự nhiên nhất.\r\n\r\nCùng với đó là khả năng điều chỉnh khẩu độ ấn tượng từ f/1.4 đến f/16 ngay trên bức ảnh sau khi chụp ảnh với chế độ chân dung.', 0, 1, 1, 'Trung Quốc'),
(6, 'OPPO A71 32 GB', 'oppo-a71-mau-xanh.png', 3700000, '2018-11-13 13:00:00', 90, 60, 0, 'Thiết kế liền mạch thời trang\r\nĐiện thoại OPPO A71 32 GB (2018) có thiết kế hoàn toàn tương tự thế hệ trước với vỏ nhựa nguyên khối liền mạch, thiết kế thời trang, đẹp mắt thừa hưởng \"chất OPPO\" hấp dẫn và độc đáo. Mặt trước kính cong 2.5D thời thượng.\r\n\r\nThiết kế điện thoại OPPO A71 2018\r\n\r\nMáy sử dụng chất liệu nhựa nhưng hoàn thiện chất lượng nên vừa tạo cảm giác chắc chắn, vừa làm máy nhẹ nhàng.\r\n\r\nCamera làm đẹp AI \r\nTương tự như chuyên gia selfie OPPO F5, chiếc OPPO A71 32 GB (2018) cũng tích hợp công nghệ AI trí tuệ nhân tạo vào camera để tăng khả năng làm đẹp khuôn mặt, chân thực và phù hợp với từng người, khuôn mặt khác nhau.\r\n\r\nCamera điện thoại OPPO A71 2018\r\n\r\nChế độ xóa phông ảo diệu\r\nCamera sau 13MP, trước 5 MP chụp ảnh sắc nét, chất lượng ở mức khá tốt với nhiều chế độ chụp dễ dàng. Bên cạnh đó, chế độ xóa phông như máy ảnh chuyên nghiệp đang rất được ưa thích hiện nay cũng được nhiều người ưa thích.\r\n\r\nẢnh chụp từ điện thoại OPPO A71 2018\r\n\r\nNâng cấp hiệu năng, giảm đa nhiệm\r\nVới giá bán rẻ hơn khá nhiều, chiếc điện thoại OPPO này được nâng cấp về hiệu năng với dòng chip xử lý Snapdragon 450 mới nhất trong phân khúc phổ thông của Qualcomm, mạnh hơn so với Mediatek ở thế hệ trước.\r\n\r\nRAM 3 GB cũng giúp máy có khả năng đa nhiệm tốt hơn.', 0, 11, 2, 'Trung Quốc'),
(7, 'OPPO A83 2018', 'oppo-a83-2018.png', 1100000, '2018-11-13 13:00:00', 500, 200, 0, 'OPPO A 83là chiếc smartphone dòng A đầu tiên sở hữu cho mình màn hình tràn viền và cùng với đó là camera với khả năng làm đẹp bằng AI nổi tiếng của OPPO.\r\nThiết kế thon gọn\r\nVới xu thế màn hình tràn viền 18:9 thì máy sở hữu một thân hình \"thon thả\" với các góc cạnh được bo tròn mềm mại.\r\n\r\nThiết kế Oppo A83\r\n\r\nThiết kế nguyên khối tạo sự chắc chắn tôn lên sự sang trọng của người sử dụng.\r\n\r\nMàn hình hiển thị tốt\r\nSở hữu cho mình một màn hình có kích thước 5.7 inch độ phân giải HD+ (720 x 1440 Pixels) OPPO A83 2018 cho chất lượng ở mức khá.\r\n\r\nMàn hình Oppo A83\r\n\r\nOppo A83 hiển thị màu sắc đúng chuẩn vừa mắt\r\n\r\nMáy sử dụng tấm nền IPS LCD cho màu sắc hiển thị chính xác, mặc dù độ sáng chưa thực sự ấn tượng khi sử dụng ngoài trời.\r\n\r\nHiệu năng mượt mà\r\nDù ở phân khúc thấp hơn nhưng chiếc điện thoại OPPO này vẫn được trang bị sức mạnh tương tự người đàn anh OPPO F5 của mình.\r\n\r\nĐó chính là con chip Mediatek Helio P23 3 GB RAM cùng 32 GB bộ nhớ trong đảm bảo máy hoạt động ổn định trong hầu hết tác vụ.', 0, 10, 2, 'Trung Quốc'),
(8, 'OPPO F7 Youth', 'oppo-f7-youth.jpg', 2300000, '2018-11-28 05:13:10', 10, 2, 0, 'OPPO F7 Youth là một phiên bản rút gọn của OPPO F7 không tai thỏ, không cảm biến vân tay, camera độ phân giải thấp hơn nhưng vẫn sở hữu cấu hình mạnh mẽ như người đàn anh trước đó.\r\nThiết kế bắt mắt\r\nTuy không còn phần \"tai thỏ\" theo xu thế nhưng tổng thể chiếc điện thoại OPPO này vẫn giữ được sự trẻ trung, thời trang của OPPO F7.\r\n\r\nThiết kế điện thoại OPPO F7 Youth\r\n\r\nMàu sắc sặc sỡ, bắt mắt\r\n\r\nHơi bất ngờ là F7 Youth vẫn chỉ được trang bị cổng microUSB, chưa dùng chuẩn USB Type-C thế hệ mới.\r\n\r\nThiết kế điện thoại OPPO F7 Youth\r\n\r\nPhần viền màn hình khá dày\r\n\r\nTrọng lượng của máy ở mức vừa phải, nhưng vẫn đủ để mang lại cảm giác cầm nắm chắc chắn.\r\n\r\nMàn hình hiển thị tốt\r\nMàn hình của máy có kích thước 6 inch tràn viền độ phân giải Full HD+ (1080 x 2160 Pixels) cho trải nghiệm người dùng tốt hơn.', 0, 11, 2, 'Trung Quốc'),
(9, 'OPPO Find X', 'oppo-find-x.png', 5600000, '2018-11-13 13:00:00', 980, 560, 0, 'OPPO FIND X tạo nên một cú hích lớn trong làng smartphone hiện nay khi mang trong mình nhiều tính năng đột phá mà nổi bật nhất đến từ thiết kế sáng tạo và một hiệu năng đỉnh cao.\r\nThiết kế đến từ tương lai\r\nChiếc điện thoại OPPO mới đã tạo nên sự khác biệt cho riêng mình nhờ lối thiết kế dạng trượt phần camera giúp không gian hiển thị mặt trước chiếm gần như là trọn vẹn.\r\n\r\nMàn hình điện thoại OPPO Find X\r\n\r\nMặt trước OPPO Find X chiếm diện tích khoảng 87.0%\r\n\r\nVà theo nhận định của nhiều chuyên gia cơ chế trượt của máy hoạt động khá trơn tru và bền bỉ trong thời gian dài.\r\n\r\nCơ chế trượt trên điện thoại OPPO Find X\r\n\r\nCơ chế trượt của OPPO Find X được điều khiển thông qua thao tác trên màn hình \r\n\r\nTuy nhiên, vấn đề bụi bẩn và nước sẽ là mối lo ngại đáng kể với hệ thống trượt này.\r\n\r\nThiết kế trượt trên điện thoại OPPO Find X\r\n\r\nCơ chế trượt OPPO Find X để lộ nhiều khoảng trống dễ bị vào bụi\r\n\r\nTổng thể thân máy được làm sắc sảo đến từng chi tiết trong sự kết hợp hài hòa giữa khung kim loại và 2 mặt kính cao cấp.', 0, 10, 2, 'Trung Quốc'),
(10, 'OPPO A83 2018', 'oppo-a83-2018.png', 1100000, '2018-11-28 05:13:10', 123, 23, 0, 'OPPO A83 2018 là chiếc smartphone dòng A đầu tiên sở hữu cho mình màn hình tràn viền và cùng với đó là camera với khả năng làm đẹp bằng AI nổi tiếng của OPPO.\r\nThiết kế thon gọn\r\nVới xu thế màn hình tràn viền 18:9 thì máy sở hữu một thân hình \"thon thả\" với các góc cạnh được bo tròn mềm mại.\r\n\r\nThiết kế Oppo A83\r\n\r\nThiết kế nguyên khối tạo sự chắc chắn tôn lên sự sang trọng của người sử dụng.\r\n\r\nMàn hình hiển thị tốt\r\nSở hữu cho mình một màn hình có kích thước 5.7 inch độ phân giải HD+ (720 x 1440 Pixels) OPPO A83 2018 cho chất lượng ở mức khá.\r\n\r\nMàn hình Oppo A83\r\n\r\nOppo A83 hiển thị màu sắc đúng chuẩn vừa mắt\r\n\r\nMáy sử dụng tấm nền IPS LCD cho màu sắc hiển thị chính xác, mặc dù độ sáng chưa thực sự ấn tượng khi sử dụng ngoài trời.\r\n\r\nHiệu năng mượt mà\r\nDù ở phân khúc thấp hơn nhưng chiếc điện thoại OPPO này vẫn được trang bị sức mạnh tương tự người đàn anh OPPO F5 của mình.\r\n\r\nĐó chính là con chip Mediatek Helio P23 3 GB RAM cùng 32 GB bộ nhớ trong đảm bảo máy hoạt động ổn định trong hầu hết tác vụ.', 0, 10, 2, 'Trung Quốc'),
(11, 'OPPO R15 X', 'oppo-r15x.png', 7300000, '2018-11-28 05:13:10', 134, 34, 0, 'OPPO R15x là chiếc điện thoại được nâng cấp từ phiên bản OPPO K1 với lối thiết kế trẻ trung, năng động, màn hình \"giọt nước\" cùng công nghệ cảm biến vân tay dưới màn hình hiện đại vừa được OPPO ra mắt.\r\nThiết kế sang trọng, bóng bẩy\r\nSự kết hợp hài hòa giữa khung kim loại cùng 2 mặt kính trước sau đã tạo nên OPPO R15x trong một thân hình hiện đại và cao cấp.\r\n\r\nThiết kế tổng thể OPPO R15x\r\n\r\nXung quanh thân máy là những đường cong mềm mại, uyển chuyển giúp việc cầm nắm máy trên tay sẽ vô cùng dễ chịu và thoải mái.\r\n\r\nThiết kế mặt lưng OPPO R15x\r\n\r\nẤn tượng nhất đến từ mặt lưng với các dải màu sắc được pha trộn một cách tinh tế tạo nên những hiệu ứng lấp lánh trông cực kì quyến rũ.\r\n\r\nThiết kế tổng thể OPPO R15x\r\n\r\nKhông gian mặt trước của máy cũng đẹp không kém khi sở hữu kích thước lên đến 6.41 inch được cách điệu bởi một chiếc tai thỏ đáng yêu hình giọt nước.', 0, 11, 2, 'Trung Quốc'),
(12, 'SamSung Galaxy A6 Plus', 'samsung-galaxy-a6-plus.png', 4500000, '2018-11-13 13:00:00', 600, 321, 0, 'Samsung Galaxy A6 (2018) là chiếc smartphone tầm trung vừa được ra mắt của Samsung bên cạnh chiếc Samsung Galaxy A6+ (2018).\r\nThiết kế kim loại nguyên khối\r\nMáy được hoàn thiện từ kim loại nguyên khối, kết hợp với mặt kính cong nhẹ 2.5D cho cảm giác vuốt chạm thoải mái hơn.\r\n\r\nDãy ăng-ten hình chữ U giống Galaxy J7 Pro\r\n\r\nDãy ăng-ten hình chữ U giống Galaxy J7 Pro​\r\n\r\nMặt trước là camera \"tự sướng\" và đèn LED trợ sáng 3 cấp độ giúp chụp ảnh selfie trong điều kiện thiếu sáng tốt hơn.\r\n\r\nMặt lưng là dãy ăng-ten trên dưới đối xứng hình chữ U và camera chính và cảm biến vân tay được gom chung vào 1 cụm.\r\n\r\nCảm biến vân tay ở mặt lưng\r\n\r\nCảm biến vân tay ở mặt lưng\r\n\r\nBộ cảm biến dấu vân tay được di chuyển về phía sau cùng với đó là đèn flash LED kép 2 tông màu.\r\n\r\nMàn hình độ phân giải cao\r\nSmartphone Galaxy A6 được trang bị màn hình hiển thị Infinity 5.6 inch, độ phân giải HD+.\r\n\r\nMàn hình vô cực của Samsung sử dụng tiêu chuẩn Cinema 18.5:9\r\n\r\nMàn hình vô cực của Samsung sử dụng tiêu chuẩn Cinema 18.5:9\r\n\r\nTheo đó, màn hình của máy sẽ có tỉ lệ 18.5:9 với các viền bezels mỏng.\r\n\r\nHiệu năng ổn định\r\nSamsung Galaxy A6 được trang bị vi xử lý Exynos 7870 kết hợp RAM 3 GB và bộ nhớ trong 32 GB.\r\n\r\nGiao diện Samsung Experience 9\r\n\r\nGiao diện Samsung Experience 9\r\n\r\nVới cấu hình này, Galaxy A6 đáp ứng tốt các nhu cầu cơ bản sử dụng hiện nay như lướt web, xem phim và chơi một số game ở mức đồ họa trung bình.\r\n\r\nMáy chạy sẵn Android 8.0 cùng viên pin dung lượng 3.000 mAh khá thoải mái cho một ngày sử dụng.', 0, 7, 3, 'Trung Quốc'),
(13, 'SamSung GaLAXy A9 ', 'samsung-galaxy-a9-2018-blue-600x600.jpg', 7690000, '2018-11-28 05:13:10', 234, 41, 0, 'Samsung Galaxy A9(2018) lột xác với nhiều thay đổi mới mẻ từ thiết kế đến hiệu năng. Bên cạnh đó, đây cũng là chiếc smartphone đầu tiên của Samsung sở hữu cụm camera sau với 3 thấu kính ấn tượng.\r\nChiếc điện thoại Samsung đầu tiên sở hữu 3 camera\r\nSamsung Galaxy A7 (2018) là chiếc smartphone đầu tiên của Samsung được trang bị cụm camera với 3 thấu kính có độ phân giải lần lượt là 24 MP, 8 MP và 5 MP.\r\n\r\nCụm camera sau điện thoại Samsung Galaxy A7 2018\r\n\r\nCảm biến chính 24 MP nằm giữa cụm camera có khẩu độ F/1.7, giúp hình ảnh chi tiết hơn, đặc biệt ở điều kiện ánh sáng thấp. Phía trên là cảm biến độ sâu 5 MP F/2.2 và ống kính góc rộng ở dưới 8 MP F/2.4.\r\n\r\nCụm camera sau điện thoại Samsung Galaxy A7 2018\r\n\r\nNhờ thế mà chất lượng ảnh chụp của máy được cải thiện một cách rõ rệt so với thế hệ trước về độ sáng, màu sắc cũng như độ tương phản.\r\n\r\nGiao diện camera điện thoại Samsung Galaxy A7 2018\r\n\r\nCamera trước cũng ấn tượng không kém khi sở hữu độ phân giải 24 MP hỗ trợ nhiều tính năng cao cấp như: Sticker AR, camera góc rộng hay có các chế độ làm đẹp khác nhau.\r\n\r\nSelfie trên điện thoại Samsung Galaxy A7 2018\r\n\r\n\r\nThiết kế nguyên khối sang trọng với vân tay cạnh bên\r\nSamsung Galaxy A7 (2018) sở hữu lối thiết kế nguyên khối với khung kim loại chắc chắn cùng vân tay ở cạnh bên.\r\n\r\nThiết kế điện thoại Samsung Galaxy A7 2018\r\n\r\nThân hình trông có phần nam tính nhưng được cách điệu bởi những đường cong mềm mại và uyển chuyển, cùng sự gia công tỉ mỉ, sắc sảo đem lại cho bạn cảm giác cầm nắm chắc chắn và dễ chịu.\r\n\r\nThiết kế điện thoại Samsung Galaxy A7 2018\r\n\r\nVới tỷ lệ màn hình 18.5:9 đảm bảo cho bạn có một không gian trải nghiệm rộng rãi trên kích thước 6 inch nhưng vẫn tối ưu được diện tích tổng thể thân máy.\r\n\r\nMàn hình điện thoại Samsung Galaxy A7 2018\r\n\r\nĐi kèm theo đó là tấm nền Super AMOLED cùng độ phân giải Full HD+ mang đến cho bạn những khung hình sắc nét, sống động mỗi khi thưởng thức những bộ phim chất lượng cao.\r\n\r\nXem phim trên điện thoại Samsung Galaxy A7 2018\r\n\r\nHiệu năng mượt mà với Exynos 7885\r\nSức mạnh cung cấp cho Galaxy A7 (2018) chính là con chip Exynos 7885, đáp ứng mượt mà cho các nhu cầu giải trí hằng ngày của bạn.\r\n\r\nChơi game trên điện thoại Samsung Galaxy A7 2018\r\n\r\nBên cạnh đó, với dung lượng RAM 4 GB cùng bộ nhớ trong lên đến 64 GB tương đối dư giả để bạn có thể chạy đa nhiệm ổn định hay lưu trữ dữ liệu một cách thoải mái.\r\n\r\nChơi game trên điện thoại Samsung Galaxy A7 2018\r\n\r\nMáy cũng được cài sẵn Android 8 (Oreo) đem lại giao diện đẹp, trực quan và mượt mà trong quá trình sử dụng.\r\n\r\nGiao diện Android điện thoại Samsung Galaxy A7 2018\r\nDung lượng pin 3300 mAh\r\nMang trong mình một viên pin có dung lượng 3300 mAh giúp Samsung A7 (2018) đáp ứng khá trọn vẹn với các nhu cầu giải trí cơ bản trong 1 ngày.\r\n\r\n\r\n\r\n\r\n', 0, 7, 3, 'Trung Quốc'),
(14, 'SamSung Galaxy  J6 Plus', 'samsung-galaxy-j6-plus-1.png', 4690000, '2018-11-13 13:00:00', 450, 321, 0, 'Samsung Galaxy J6+ là phiên bản cao cấp hơn của chiếc Samsung Galaxy J4+ với camera kép cùng nâng cấp về cấu hình bên trong.\r\nThiết kế điện thoại Samsung Galaxy J6+\r\n\r\nCamera kép chụp ảnh xóa phông theo xu thế\r\nVới Galaxy J6+ thì Samsung đã mang lên chiếc smartphone của mình bộ đôi camera kép với độ phân giải lần lượt là 13 MP + 5 MP.\r\n\r\nCụm camera kép mặt sau điện thoại Samsung Galaxy J6+\r\n\r\nVới bộ đôi camera này thì bạn có thể chụp cho mình những bức ảnh xóa phông rất ảo diệu để chia sẻ với bạn bè trên mạng xã hội.', 0, 6, 3, 'Trung Quốc'),
(15, 'SamSung GAlaXy Note 9 Black', 'samsung-galaxy-note-9-black.png', 12500000, '2018-11-28 05:13:10', 56, 5, 0, 'Mang lại sự cải tiến đặc biệt trong cây bút S-Pen, siêu phẩm Samsung Galaxy Note 9 còn sở hữu dung lượng pin khủng lên tới 4.000 mAh cùng hiệu năng mạnh mẽ vượt bậc, xứng đáng là một trong những chiếc điện thoại cao cấp nhất của Samsung.\r\n\r\nMột chút thay đổi trong thiết kế\r\nChiếc điện thoại Samsung mới vẫn thừa hưởng lối thiết kế vô cùng quyến rũ từ đàn anh của mình với thân hình mạnh mẽ và được cách điệu bởi những đường cong mềm mại.\r\n\r\nThiết kế điện thoại Samsung Galaxy Note 9\r\n\r\nĐiểm thay đổi đáng chú ý phải kể đến mặt lưng khi mà cảm biến vân tay của máy đã được đặt dưới cụm camera kép với một vị trí thuận lợi để bạn có thể mở khóa máy một cách dễ dàng.\r\n\r\nCảm biến vân tay trên điện thoại Samsung Galaxy Note 9\r\n\r\nBên cạnh đó Samsung đã tối giản cạnh viền trên dưới để mang lại cho bạn một trải nghiệm tuyệt vời hơn nữa với một màn hình có kích thước khủng lên đến 6.4 inch.', 0, 9, 3, 'Trung Quốc'),
(16, 'SamSung Galaxy Tab A6', 'samsung-galaxy-tab-a6.png', 8300000, '2018-11-13 13:00:00', 98, 78, 0, 'Tiếp nối sự thành công của chiếc Samsung Galaxy Tab A thì mới đây Samsung đã giới thiệu phiên bản cải tiến là chiếc Galaxy Tab A6 10.1 với nhiều nâng cấp đáng giá về cấu hình và thiết kế.\r\nThiết kế chưa đổi mới, ấn tượng với vỏ nhựa nhám\r\nLà dòng máy trong phân khúc tầm trung, Samsung Galaxy Tab A6 10.1 Spen được thiết kế với vỏ nhựa nhám nhẹ cùng các góc bo tròn cho cảm giác chắc chắn, không bám vân tay khi cầm.\r\n\r\nThiết kế quen thuộc của Samsung\r\n\r\nThiết kế quen thuộc của Samsung\r\n\r\nMặt lưng nhựa nhám mịn\r\n\r\nMặt lưng nhựa nhám mịn\r\n\r\nMáy sở hữu độ mỏng khá ấn tượng\r\n\r\nMàn hình hiển thị đẹp, sử dụng tốt dưới ánh nắng\r\nSở hữu màn hình kích thước 10.1 inch không quá lớn, có thể nhét vừa một chiếc balo dạng nhỏ, Samsung Galaxy Tab A6 10.1 Spen sử dụng tấm nền TFT LCD cho khả năng hiển thị tốt.\r\n\r\nĐộ phân giải  WUXGA 1920 x 1200 pixels cho chất lượng hình ảnh sắc nét, sử dụng tốt khi đi ngoài trời.', 0, 8, 3, 'Trung Quốc'),
(17, 'XiaoMi Black Shark', 'xiaomi-black-shark.png', 17000000, '2018-11-13 13:00:00', 896, 723, 0, 'Tiếp nối sự thành công của Xiaomi Black Shark thì mới đây Xiaomi lại tiếp tục giới thiệu phiên bản kế nhiệm là chiếc Xiaomi Black Shark Helo được nâng cấp về cấu hình bên trong so với người tiền nhiệm.\r\nHiệu năng hàng đầu với RAM siêu khủng\r\nChiếc điện thoại Xiaomi này là chiếc smartphone đầu tiên sở hữu dung lượng RAM lên tới 10 GB.\r\n\r\nCấu hình của điện thoại Xiaomi Black Shark Helo\r\n\r\nXiaomi vẫn trang bị cho máy bộ vi xử lý Snapdragon 845 8 nhân như Black Shark hỗ trợ HDR để cải thiện hiệu ứng hình ảnh.\r\n\r\nCấu hình của điện thoại Xiaomi Black Shark Helo\r\n\r\nMàn hình AMOLED kích thước 6.01 inch độ phân giải Full HD với tỉ lệ 18:9 và có độ sáng 430 nits sẽ giúp game thủ có không gian hiển thị lớn hơn.\r\n\r\nNhững trang bị chuyên game\r\nCũng giống với người tiền nhiệm, Black Shark Helo cũng sử dụng hệ thống làm mát bằng chất lỏng giúp mang lại hiệu suất chơi game cực cao.\r\n\r\nBên cạnh đó, chiếc điện thoại này được thiết lập giao diện cho người chơi game JOY UI, ROM Android Pie được tùy chỉnh bao gồm một số tính năng chính của MIUI.\r\n\r\nThiết kế độc đáo, chắc chắn\r\nXiaomi Black Shark Helo vẫn giữ cho mình vẻ ngoài cuốn hút với mặt lưng được thiết kế như một chiếc xe thể thao.', 0, 14, 4, 'Trung Quốc'),
(18, 'XiAoMi Mi8 Lite Black', 'xiaomi-mi-8-lite-black.png', 6600000, '2018-11-28 05:13:10', 345, 34, 0, 'Xiaomi Mi 8 Lite có lẽ là chiếc smartphone rẻ nhất của dòng Mi (dòng flagship của Xiaomi) mà vẫn giữ được cho mình thiết kế đẹp mắt và nhiều tính năng thú vị.\r\nThiết kế bắt mắt, thu hút mọi ánh nhìn\r\nĐiểm nhấn trên chiếc điện thoại Xiaomi này chính là phần mặt lưng với chất liệu kính với hiệu ứng gradient biến đổi màu sắc tùy theo mức độ ánh sáng chiếu vào. Nó thực sự đẹp mắt và ấn tượng mỗi khi nhìn vào.\r\n\r\nThiết kế điện thoại Xiaomi Mi 8 Lite chính hãng\r\n\r\nNgoài ra Xiaomi cũng tối ưu cách sắp xếp phần cứng bên trong để đạt được độ mỏng chỉ 7.5mm cho điện thoại, nhằm mang lại trải nghiệm cầm nắm tốt hơn cho người dùng.\r\n\r\nThiết kế điện thoại Xiaomi Mi 8 Lite chính hãng\r\n\r\nCamera chất lượng không kém các máy cao cấp\r\nCamera kép phía sau của Xiaomi Mi 8 Lite có độ phân giải 12 MP + 5 MP với khẩu độ f/1.9, có thể tùy chỉnh độ mờ phông nền và đi kèm với tính năng AI Scene Recognition.\r\n\r\n', 0, 14, 4, 'Trung Quốc'),
(19, 'XiaoMi Mi 8', 'xiaomi-mi-8dep.png', 11500000, '2018-11-13 13:00:00', 236, 132, 0, 'Đặc điểm nổi bật của Xiaomi Mi 8\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sách hướng dẫn, Cáp, Cây lấy sim, Adapter chuyển USB\r\n\r\nXiaomi Mi 8 sẽ là cái tên được nhắc đến nhiều trong gia đình Xiaomi khi mang trong mình đầy đủ những gì gọi là cao cấp đến từ vẻ đẹp bên ngoài cũng như phần cứng mạnh mẽ bên trong.\r\nThiết kế sang trọng\r\nXiaomi luôn biết làm mới mình khi tạo ra smartphone Mi 8 với thân hình long lanh và quyến rũ đến từng chi tiết nhờ sự kết hợp tinh tế giữa khung kim loại và 2 mặt kính cao cấp.\r\n\r\nXiaomi Mi 8\r\n\r\nMặt kính cong 2.5D đem lại sự mượt mà khi vuốt chạm\r\n\r\nMặt lưng của máy có khả năng thay đổi màu sắc ở các góc nghiêng khác nhau giúp máy trở nên nổi bật và thu hút mọi ánh nhìn.\r\n\r\nXiaomi Mi 8\r\n\r\nCảm biến vân tay được đặt ở vị trí thuận tiện, dễ dàng mở khóa\r\n\r\nSắc sảo không kém khi mặt trước của máy là một không gian hiển thị rộng lớn với điểm nhấn là chiếc tai thỏ \"dễ thương\" tạo cho bạn cảm giác vừa thân thuộc nhưng cũng đầy phá cách.', 0, 14, 4, 'Trung Quốc'),
(20, 'XiAoMi A2 Blue', 'xiaomi-mi-a2-blue.png', 18200000, '2018-11-28 05:13:10', 411, 56, 0, 'Tiếp nối sự thành công của Xiaomi Mi A1 thì Xiaomi tiếp tục giới thiệu tới người dùng phiên bản kế nhiệm là chiếc Xiaomi Mi A2 với nâng cấp mạnh mẽ về cấu hình cũng như camera.\r\nHiệu năng ấn tượng với cấu hình mạnh mẽ\r\nSức mạnh của smartphone Xiaomi Mi A2 đến từ con chip Qualcomm Snapdragon 660 với 4 GB RAM và 64 GB bộ nhớ trong.\r\n\r\nCấu hình của điện thoại Xiaomi Mi A2\r\n\r\nTương tự Mi A1 thì chiếc điện thoại Xiaomi vẫn chạy trên nền Android One với sự hợp tác của Xiaomi và Google mang lại cho bạn sự hỗ trợ lâu dài và luôn nhận được các bản cập nhật sớm nhất có thể.\r\n\r\nKáº¿t: Xiaomi Mi A2 hoÃ n toÃ n \r\n\r\nVới cấu hình như trên, mọi tác vụ hằng ngày của bạn như: chơi game, xem phim, lướt web... thì sẽ là chuyện nhỏ đối với máy nhờ tốc độ xử lý mạnh mẽ, nhanh chóng và tối ưu.\r\n\r\nChơi game Free Fire trên điện thoại Xiaomi Mi A2\r\n\r\nVí dụ như với tựa game sinh tồn Free Fire, khi thiết lập cấu hình cao, Mi A2 đáp ứng trải nghiệm game mượt mà và rất thích. Mọi chi tiết về hình ảnh trong game chi tiết và sắc sảo. Tương tự với các game khác như Liên Quân cũng vậy.', 0, 15, 4, 'Trung Quốc'),
(21, 'XiAoMi RedMi 6', 'xiaomi-redmi-6.png', 23200000, '2018-11-13 13:00:00', 90, 34, 0, 'Đặc điểm nổi bật của Xiaomi Redmi 6\r\n\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Sách hướng dẫn, Cáp, Cây lấy sim\r\n\r\nXiaomi Redmi 6 là chiến binh mới nhất của Xiaomi gia nhập phân khúc giá rẻ với nhiều trang bị đáng giá mà khó có đối thủ nào trong phân khúc sở hữu.\r\nHiệu năng mạnh mẽ\r\nHiệu năng luôn là điểm mạnh của những chiếc smartphone Xiaomi và với Redmi 6 cũng không phải là ngoại lệ.\r\n\r\nCấu hình của Xiaomi Redmi 6 khá tốt trong tầm giá\r\n\r\nCấu hình của Xiaomi Redmi 6 khá tốt trong tầm giá\r\n\r\nMáy sở hữu con chip MediaTek Helio P22 8 nhân cùng tiến trình 12 nm giúp bạn tiết kiệm năng lượng đáng kể.\r\n\r\nDung lượng RAM Xiaomi Redmi 6 vượt trội so với đối thủ\r\n\r\nCấu hình Xiaomi Redmi 6 vượt trội so với đối thủ\r\n\r\nNgoài ra máy còn có 3 GB RAM thoải mái cho bạn sử dụng nhiều ứng dụng cùng lúc.\r\n\r\nXiaomi Redmi 6 tiết kiệm pin hơn so với các đối thủ\r\n\r\nXiaomi Redmi 6 tiết kiệm pin hơn so với các đối thủ\r\n\r\nHỗ trợ trí tuệ nhân tạo AI\r\nRedmi 6 sử dụng giao diện MIUI 10 được tích hợp chặt chẽ với trí thông minh nhân tạo đảm bảo chiếc máy của bạn luôn trong trạng thái đáp ứng nhu cầu tốt nhất.', 0, 15, 4, 'Trung Quốc'),
(22, 'RealMe C1', 'realme c1.png', 4300000, '2018-11-13 13:00:00', 12, 2, 0, 'Tiện ích C1\r\nBảo mật nâng cao	\r\nMở khóa bằng khuôn mặt\r\nTính năng đặc biệt	Đèn pin, Chặn cuộc gọi, Chặn tin nhắn, Mặt kính 2.5D, Khoá ứng dụng, Không gian trẻ em, Đa cửa sổ (chia đôi màn hình)', 0, 12, 5, 'Trung Quốc'),
(23, 'RealMe 2 64 GB', 'realme-2-4gb-64gb.png', 1400000, '2018-11-28 05:13:10', 78, 11, 0, 'Realme 2 đã chính thức ra mắt sau phiên bản Realme 1. Chiếc điện thoại Realme này sở hữu phiên bản RAM 4 GB, bộ nhớ trong 64 GB và tích hợp cả hai loại bảo mật vân tay cùng mở khoá khuôn mặt hiện đại.\r\nĐược nâng cấp lên camera kép\r\nNếu trên Realme 1 người dùng chỉ có một camera đơn thì ở phiên bản kế nhiệm hãng đã mang lên hệ thống camera kép sau 13 MP khẩu độ f/ 2.2 và 2 MP khẩu độ f/2.4 hỗ trợ chụp ảnh xoá phông ở chế độ chân dung.\r\n\r\nCamera sau điện thoại Realme 2\r\n\r\nỞ mặt trước camera selfie 8 MP được tích hợp chế độ làm đẹp AI Beauty 2.0 cùng khả năng nhận diện khuôn mặt với 296 điểm.\r\n\r\nNgoài ra tính năng AR sticker còn được trang bị cho cả camera trước và sau.\r\n\r\nCamera sau điện thoại Realme 2\r\n\r\nMượt mà và lưu trữ thoải mái hơi với RAM 4 GB, ROM 64 GB\r\nRealme 2 sở hữu hai phiên bản và bản cao cấp nhất có RAM 4 GB và bộ nhớ trong 64 GB, giúp các thao tác đa nhiệm trở nên mượt mà hơn cũng như lưu trữ hình ảnh, video, âm nhạc thoải mái nhất.\r\n\r\nTrải nghiệm điện thoại Realme 2\r\n\r\nCùng với chip Snapdragon 450, bạn hoàn toàn có thể giải trí với các tựa game cấu hình tầm trung ổn định hay xem phim, lướt web nhanh chóng.\r\n\r\nChơi game trên điện thoại Realme 2\r\n\r\nDung lượng pin khủng tới 4230 mAh\r\nRealme 2 được nâng cấp dung lượng pin với 4.230 mAh (dung lượng pin lớn hơn 24% Realme 1) kết hợp với tính năng AI Power Manager hứa hẹn thời gian sử dụng lâu dài.\r\n\r\nĐánh giá điện thoại Realme 2\r\n\r\nHãng tuyên bố sản phẩm có thể đáp ứng 44 giờ thời gian gọi, 18 giờ phát nhạc và tối đa 10 giờ chơi game.\r\n\r\nTrải nghiệm điện thoại Realme 2\r\n\r\nSự xuất hiện trở lại của cảm biến vân tay\r\nĐể cắt giảm chi phí thì trên Realme 1 người dùng đã bị loại bỏ đi tính năng mở khóa bằng vân tay vốn được rất nhiều người dùng yêu thích.\r\n\r\nCảm biến vân tay ở mặt lưng điện thoại Realme 2\r\n\r\nTuy nhiên trên thế hệ tiếp theo Realme 2 thì cảm biến vân tay đã được mang trở lại ở mặt lưng giúp bạn có thể mở khóa thiết bị một cách dễ dàng.\r\n\r\nMàn hình tai thỏ thích mắt\r\nRealme 2 có màn hình 6.2 inch với độ phân giải màn hình 1520 x 720 pixel cho chất lượng hiển thị khá ổn.\r\n\r\nMàn hình điện thoại Realme 2\r\n\r\nĐộ sáng màn hình khá cao cùng góc nhìn rộng giúp bạn có thể dễ dàng sử dụng dưới điều kiện ánh sáng mạnh.\r\n\r\nMở khóa khuôn mặt cực nhanh\r\nTính năng mở khóa bằng khuôn mặt trên Realme 2 chỉ mất 0.1 giây để có thể nhận diện và mở khóa smartphone khi đang ở màn hình khóa.\r\n\r\nGiao diện Android trên điện thoại Realme 2\r\n\r\nMáy chạy ColorOS 5.0, dựa trên hệ điều hành Android 8.1 Oreo hứa hẹn mang lại trải nghiệm mượt mà.\r\n\r\nKhông hài lòng bài viết\r\n', 0, 12, 5, 'Trung Quốc'),
(24, 'RealMe 2 Black', 'realme-2-black.png', 2310000, '2018-11-13 13:00:00', 453, 234, 0, 'Dung lượng pin khủng\r\nRealme 2 được nâng cấp dung lượng pin với 4.230 mAh (dung lượng pin lớn hơn 24% Realme 1) kết hợp với tính năng AI Power Manager hứa hẹn thời gian sử dụng lâu dài.\r\n\r\nTrải nghiệm điện thoại Realme 2\r\n\r\nHãng tuyên bố sản phẩm có thể đáp ứng 44 giờ thời gian gọi, 18 giờ phát nhạc và tối đa 10 giờ chơi game.\r\n\r\nĐánh giá điện thoại Realme 2\r\n\r\nCamera giờ đã là camera kép\r\nNếu trên Realme 1 người dùng chỉ có một camera đơn thì ở phiên bản kế nhiệm hãng đã mang lên hệ thống camera kép sau 13 MP khẩu độ f/ 2.2 và 2 MP khẩu độ f/2.4 hỗ trợ chụp ảnh xoá phông ở chế độ chân dung.', 0, 13, 5, 'Trung Quốc'),
(25, 'RealMe 2 Pro 64GB', 'realme-2-pro-6gb-64gb.png', 6800000, '2018-11-28 05:13:10', 426, 312, 0, 'Dòng điện thoại Realme đã chính thức ra mắt chiếc smartphone giá rẻ sở hữu cấu hình cao mang tên Realme 2 Pro với phiên bản RAM 4 GB và ROM 64 GB.\r\nCamera selfie vẫn là điểm mạnh của máy\r\nRealme 2 Pro sở hữu bộ đôi camera kép với độ phân giải 16 MP + 2 MP và tất nhiên cũng hỗ trợ chụp ảnh xóa phông.\r\n\r\nCụm camera sau điện thoại Realme 2 Pro\r\n\r\nGiao diện chụp ảnh đơn giản giúp người dùng dễ dàng làm chủ chiếc camera của máy và có được những bức ảnh ưng ý nhất.\r\n\r\nCụm camera sau điện thoại Realme 2 Pro\r\n\r\nCamera selfie với độ phân giải 16 MP kết hợp với chế độ làm đẹp \"trứ danh\" hứa hẹn sẽ không làm bạn phải thất vọng.\r\n\r\nMạnh mẽ hơn với hiệu năng được nâng cấp\r\nPhiên bản Realme 2 Pro này được nâng cấp lên con chip Qualcomm Snapdragon 660 8 nhân cùng mức RAM 4 GB.\r\n\r\nChơi game trên điện thoại Realme 2 Pro\r\n\r\nMáy chạy trên Android 8.1 Oreo với giao diện ColorOS độc quyền của hãng mang trong mình nhiều tính năng mới mà Android gốc không có.\r\n\r\nGiao diện Android trên điện thoại Realme 2 Pro\r\n\r\nRealme 2 Pro có pin dung lượng 3.500 mAh kết hợp với con chip mới Snapdragon 660 cho khả năng cân bằng hiệu năng và tiêu thụ năng lượng tốt hơn.\r\n\r\nTrải nghiệm điện thoại Realme 2 Pro\r\n\r\nThiết kế bắt mắt với màn hình giọt nước\r\nRealme 2 Pro sở hữu thiết kế màn hình giọt nước đúng theo xu hướng của các smartphone mới nhất hiện nay.\r\n\r\nMàn hình điện thoại Realme 2 Pro\r\n\r\nTuy nhiên máy sở hữu phần notch tai thỏ rất nhỏ, ít ảnh hưởng tới trải nghiệm của người dùng mà còn đem lại sự thoải mái tối đa khi nhìn trên màn hình này.\r\n\r\nThiết kế điện thoại Realme 2 Pro\r\n\r\nCảm biến vân tay vẫn được duy trì\r\nRealme 2 Pro vẫn sở hữu cho mình cảm biến vân tay ở mặt lưng với tốc độ nhận diện rất nhanh và chính xác.\r\n\r\nCảm biến vân tay ở mặt lưng điện thoại Realme 2 Pro\r\n\r\nTất nhiên máy cũng hỗ trợ mở khóa bằng khuôn mặt cho bạn nhiều lựa chọn hơn trong việc bảo mật thiết bị.\r\n\r\nĐánh giá điện thoại Realme 2 Pro\r\n\r\nKhông hài lòng bài viết\r\n', 0, 13, 5, 'Trung Quốc'),
(26, 'RealMe 2 Pro 128 GB Black', 'realme-2-pro-black-4g-128g.png', 14500000, '2018-11-13 13:00:00', 800, 600, 0, 'Được nâng cấp lên camera kép\r\nNếu trên Realme 1 người dùng chỉ có một camera đơn thì ở phiên bản kế nhiệm hãng đã mang lên hệ thống camera kép sau 13 MP khẩu độ f/ 2.2 và 2 MP khẩu độ f/2.4 hỗ trợ chụp ảnh xoá phông ở chế độ chân dung.\r\n\r\nCamera sau điện thoại Realme 2\r\n\r\nỞ mặt trước camera selfie 8 MP được tích hợp chế độ làm đẹp AI Beauty 2.0 cùng khả năng nhận diện khuôn mặt với 296 điểm.\r\n\r\nNgoài ra tính năng AR sticker còn được trang bị cho cả camera trước và sau.\r\n\r\nCamera sau điện thoại Realme 2\r\n\r\nMượt mà và lưu trữ thoải mái hơi với RAM 4 GB, ROM 64 GB\r\nRealme 2 sở hữu hai phiên bản và bản cao cấp nhất có RAM 4 GB và bộ nhớ trong 64 GB, giúp các thao tác đa nhiệm trở nên mượt mà hơn cũng như lưu trữ hình ảnh, video, âm nhạc thoải mái nhất.', 0, 13, 5, 'Trung Quốc');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE IF NOT EXISTS `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TenHienThi` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(1) NOT NULL,
  `MaLoaiTaiKhoan` int(11) DEFAULT NULL,
  `DienThoai` int(11) NOT NULL,
  PRIMARY KEY (`MaTaiKhoan`),
  KEY `MaLoaiTaiKhoan` (`MaLoaiTaiKhoan`),
  KEY `MaLoaiTaiKhoan_2` (`MaLoaiTaiKhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `TenDangNhap`, `MatKhau`, `TenHienThi`, `DiaChi`, `BiXoa`, `MaLoaiTaiKhoan`, `DienThoai`) VALUES
(4, 'baobao', '123456', 'baobao', 'Hồ Chí Minh', 0, 1, 0),
(5, 'baobaobao', '1236987', 'baobaobao', '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrang`
--

DROP TABLE IF EXISTS `tinhtrang`;
CREATE TABLE IF NOT EXISTS `tinhtrang` (
  `MaTinhTrang` int(11) NOT NULL AUTO_INCREMENT,
  `TenTinhTrang` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaTinhTrang`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinhtrang`
--

INSERT INTO `tinhtrang` (`MaTinhTrang`, `TenTinhTrang`) VALUES
(1, 'Còn hàng'),
(2, 'Hết hàng');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `fk_MaDonDatHang` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`),
  ADD CONSTRAINT `fk_MaSanPham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`);

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_MaTaiKhoan` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`),
  ADD CONSTRAINT `fk_MaTinhTrang` FOREIGN KEY (`MaTinhTrang`) REFERENCES `tinhtrang` (`MaTinhTrang`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_MaHangSanXuat` FOREIGN KEY (`MaHangSanXuat`) REFERENCES `hangsanxuat` (`MaHangSanXuat`),
  ADD CONSTRAINT `fk_MaLoaiSanPham` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `fk_MaLoaiTk` FOREIGN KEY (`MaLoaiTaiKhoan`) REFERENCES `loaitaikhoan` (`MaiLoaiTaiKhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
