-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: helmetshop
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'CE','CE CN 1078'),(2,'SZ','Kích thước'),(3,'RS','Khóa nón'),(4,'WE','Trọng lượng'),(5,'VE','Thông gió'),(6,'ME','Vật liệu');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `banner` varchar(255) DEFAULT NULL,
  `content` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `blog_category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe6f1t09ecdjvr2ukrvijrpef4` (`blog_category_id`),
  CONSTRAINT `FKe6f1t09ecdjvr2ukrvijrpef4` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'1734883155582-poc-helmets-dat-giai-thuong-top-5-thuong-hieu-vang.jpg','','2024-12-22 22:59:15.586000','POC Helmets tự hào được vinh danh trong top 5 Thương hiệu Vàng Việt Nam – Logo và Slogan ấn tượng 2024, một giải thưởng uy tín do Hiệp hội VATAP',' POC – Top 5 Thương hiệu Vàng Việt Nam, Logo và Slogan Ấn Tượng 2024',NULL,1),(2,'1734883393944-POC-dai-hoc-hoa-sen.jpg','<p>Giải đấu <strong>HOA SEN 3×3 BASKETBALL TOURNAMENT</strong> – sân chơi thể thao bùng nổ dành cho sinh viên Đại học Hoa Sen và các bạn trẻ yêu thích bóng rổ tại TP. Hồ Chí Minh diễn ra vào ngày 20 và 21 tháng 4 năm 2024 chính là nơi để bạn cháy hết mình với đam mê.</p><figure class=\"image\" data-ckbox-resource-id=\"Wn0FM-0Q8csm\"><picture><source srcset=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Wn0FM-0Q8csm/images/108.webp 108w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Wn0FM-0Q8csm/images/216.webp 216w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Wn0FM-0Q8csm/images/324.webp 324w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Wn0FM-0Q8csm/images/432.webp 432w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Wn0FM-0Q8csm/images/540.webp 540w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Wn0FM-0Q8csm/images/648.webp 648w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Wn0FM-0Q8csm/images/756.webp 756w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Wn0FM-0Q8csm/images/864.webp 864w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Wn0FM-0Q8csm/images/972.webp 972w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Wn0FM-0Q8csm/images/1080.webp 1080w\" sizes=\"(max-width: 1080px) 100vw, 1080px\" type=\"image/webp\"><img src=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Wn0FM-0Q8csm/images/1080.jpeg\" width=\"1080\" height=\"720\"></picture><figcaption><strong>Giải đấu HOA SEN 3×3 BASKETBALL TOURNAMENT</strong></figcaption></figure><h2 style=\"margin-left:0px;\"><strong>Giới thiệu về sự kiện bóng rổ HOA SEN 3×3 BASKETBALL TOURNAMENT</strong></h2><p style=\"margin-left:0px;\">HOA SEN BASKETBALL TOURNAMENT là một giải đấu mở rộng dành cho các bạn vận động viên trong độ tuổi từ 16 đến 29 tuổi đang học tập và làm việc tại thành phố Hồ Chí Minh với mục đích tạo sân chơi lành mạnh nhằm nâng cao kĩ thuật cá nhân, kinh nghiệm thi đấu cho các đội bóng rổ nam, nữ tại Thành phố Hồ Chí Minh giúp nâng cao sức khoẻ, rèn luyện thể chất và mang lại sự giải trí sau các ngày học tập và làm việc căng thẳng.&nbsp;</p><p style=\"margin-left:0px;\">Sự kiện đã mang đến:</p><ul><li><p style=\"margin-left:2rem;\"><strong>Những trận cầu mãn nhãn: </strong>Với sự góp mặt của các đội bóng rổ nam, nữ xuất sắc tại Thành phố Hồ Chí Minh, HOA SEN 3×3 BASKETBALL TOURNAMENT đã mang đến cho khán giả những trận đấu đẳng cấp, với những pha bóng đẹp mắt và nghẹt thở. Các vận động viên có cơ hội thể hiện kỹ năng, tinh thần đồng đội và quyết tâm chiến thắng của mình.</p></li><li><p style=\"margin-left:2rem;\"><strong>Đông đảo sự ủng hộ của mọi người:</strong> Sự kiện không chỉ là nơi để các vận động viên thi đấu mà còn là một điểm hẹn lý tưởng cho những người yêu thích bóng rổ. Khán giả sẽ có cơ hội giao lưu, kết bạn, rinh quà tặng giá trị và tận hưởng bầu không khí thể thao sôi động, náo nhiệt.</p></li><li><p style=\"margin-left:2rem;\"><strong>Trở thành sự kiện thường niên của trường:</strong> HOA SEN 3×3 BASKETBALL TOURNAMENT không phải là một sự kiện một lần mà còn hứa hẹn trở thành một sự kiện thường niên của trường đại học Hoa Sen. Mong muốn tạo ra sân chơi lành mạnh cho các bạn trẻ, giúp họ có cơ hội cọ xát, tìm hiểu và phát triển bản thân.</p><figure class=\"image image_resized\" style=\"width:100%;\" data-ckbox-resource-id=\"rha21OODvXF_\"><picture><source srcset=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/rha21OODvXF_/images/108.webp 108w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/rha21OODvXF_/images/216.webp 216w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/rha21OODvXF_/images/324.webp 324w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/rha21OODvXF_/images/432.webp 432w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/rha21OODvXF_/images/540.webp 540w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/rha21OODvXF_/images/648.webp 648w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/rha21OODvXF_/images/756.webp 756w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/rha21OODvXF_/images/864.webp 864w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/rha21OODvXF_/images/972.webp 972w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/rha21OODvXF_/images/1080.webp 1080w\" sizes=\"(max-width: 1080px) 100vw, 1080px\" type=\"image/webp\"><img src=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/rha21OODvXF_/images/1080.jpeg\" width=\"1080\" height=\"720\"></picture><figcaption><strong>Trao quà tại sự kiện</strong></figcaption></figure><p>&nbsp;</p></li></ul>','2024-12-22 23:03:13.947000','Bạn là một người trẻ năng động, yêu thích bóng rổ?','POC đồng hành cùng sự kiện bóng rổ của đại học Hoa Sen',NULL,1),(3,'1734883526743-bo-qua-tet.jpg','<p style=\"margin-left:0px;\">Quà Tết không chỉ đơn giản là việc sự trao tặng vật chất mà còn ẩn chứa nhiều ý nghĩa tinh tế và tâm linh, tạo nên một không khí ấm cúng và tràn đầy tình thân trong dịp Tết. Nó mang lại sự chân thành, là cách thể hiện tình cảm, lòng biết ơn và sự quan tâm tới những người bạn, người thân trong gia đình.&nbsp;</p><p style=\"margin-left:0px;\">Thấu hiểu điều đó, chúng tôi đã gửi gắm tâm tư, tình cảm và mong ước trao tới tay khách hàng thật nhiều phần quà đẹp mắt, có giá trị, ý nghĩa trong dịp tết Giáp Thìn 2024 năm nay. Vậy những phần quà đặc biệt đang chờ đợi các bạn là gì? Hãy cùng chúng tôi khám phá ngay nhé!</p><h2 style=\"margin-left:0px;\"><strong>Ý Nghĩa Của Quà Tặng Tết</strong></h2><h3 style=\"margin-left:0px;\"><strong>Gửi Lời Chúc May Mắn</strong></h3><p style=\"margin-left:0px;\"><a target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://poc-helmet.com/\"><strong>POC Helmets</strong></a> hiểu rằng Tết là thời điểm quan trọng để gửi lời chúc tốt đẹp nhất đến gia đình, bạn bè và người thân. Quà tặng chính là hình thức thể hiện sự chân thành và mong muốn cho một năm mới tràn đầy may mắn và thành công.</p><h3 style=\"margin-left:0px;\"><strong>Kết Nối Gia Đình và Bạn Bè</strong></h3><p style=\"margin-left:0px;\">Việc tặng quà Tết thường kết hợp với việc sum họp gia đình và bạn bè. Nó giúp tạo ra không khí ấm cúng và kết nối các thành viên trong gia đình cũng như những người thân thiết ngày càng trở nên bền chặt hơn.</p><h3 style=\"margin-left:0px;\"><strong>Tôn Vinh Truyền Thống</strong></h3><p style=\"margin-left:0px;\">Quà Tết còn phản ánh sự tôn trọng và tình yêu thương đối với phong tục của người Việt Nam. Những món quà mang ý nghĩa tốt đẹp được xem là một cách để chia sẻ may mắn và phú quý cho người nhận. Nó được coi là điều mang lại tài lộc và thành công cho năm mới.</p><figure class=\"image\" data-ckbox-resource-id=\"xVDMdodJfHsg\"><picture><source srcset=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/xVDMdodJfHsg/images/160.webp 160w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/xVDMdodJfHsg/images/320.webp 320w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/xVDMdodJfHsg/images/480.webp 480w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/xVDMdodJfHsg/images/640.webp 640w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/xVDMdodJfHsg/images/800.webp 800w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/xVDMdodJfHsg/images/960.webp 960w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/xVDMdodJfHsg/images/1120.webp 1120w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/xVDMdodJfHsg/images/1280.webp 1280w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/xVDMdodJfHsg/images/1440.webp 1440w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/xVDMdodJfHsg/images/1600.webp 1600w\" sizes=\"(max-width: 1600px) 100vw, 1600px\" type=\"image/webp\"><img src=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/xVDMdodJfHsg/images/1600.jpeg\" width=\"1600\" height=\"905\"></picture></figure><h2 style=\"margin-left:0px;\"><strong>Quà Tặng Đặc Biệt Tết 2024 Của POC Helmets</strong></h2><h3 style=\"margin-left:0px;\"><strong>Đổi mới giao diện cùng bộ thùng tết</strong></h3><p style=\"margin-left:0px;\">Giới thiệu phiên bản thùng Tết giới hạn chỉ có trong dịp xuân Giáp Thìn 2024 – Thùng Tết thăng hoa. Một chút đổi mới so với giao hiện hộp cũ bằng sắc đỏ đặc trưng của những điều may mắn và tài lộc. Hình ảnh hiện hữu của rồng – linh vật của năm, đại diện của những điềm lành và hy vọng một năm mới phồn thịnh.</p><p style=\"margin-left:0px;\">Sang trọng, đẳng cấp là vẻ đẹp của bộ thùng Tết toát lên. Mỗi chiếc nón bảo hiểm POC trong dịp xuân 2024 sẽ được đựng ở trong bộ thùng Tết sắc đỏ may mắn. Đây cũng là sự thay đổi hòa mình cùng không khí ngày Tết, sắm ngày một chiếc <a target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://poc-helmet.com/san-pham/\"><strong>nón bảo hiểm</strong></a> vừa để làm quà tặng, vừa để tạo vệ người thân thì còn gì tuyệt vời hơn.</p><figure class=\"image\" data-ckbox-resource-id=\"tgTN2TJuXqbl\"><picture><source srcset=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/tgTN2TJuXqbl/images/160.webp 160w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/tgTN2TJuXqbl/images/320.webp 320w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/tgTN2TJuXqbl/images/480.webp 480w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/tgTN2TJuXqbl/images/640.webp 640w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/tgTN2TJuXqbl/images/800.webp 800w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/tgTN2TJuXqbl/images/960.webp 960w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/tgTN2TJuXqbl/images/1120.webp 1120w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/tgTN2TJuXqbl/images/1280.webp 1280w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/tgTN2TJuXqbl/images/1440.webp 1440w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/tgTN2TJuXqbl/images/1600.webp 1600w\" sizes=\"(max-width: 1600px) 100vw, 1600px\" type=\"image/webp\"><img src=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/tgTN2TJuXqbl/images/1600.jpeg\" width=\"1600\" height=\"900\"></picture></figure>','2024-12-22 23:05:26.747000','Quà Tết không chỉ đơn giản là việc sự trao tặng vật chất mà còn ẩn chứa nhiều ý nghĩa tinh tế và tâm linh, tạo nên một không khí ấm cúng và tràn đầy tình thân trong dịp Tết','Quà Tặng Tết 2024 Đặc Biệt Từ POC Helmets Dành Cho Khách Hàng',NULL,1),(4,'1734883675229-hinh-phim-ngan-tet-2024-1536x864.jpg','<p style=\"margin-left:0px;\">Chuẩn bị cho kỳ nghỉ Tết 2024 không chỉ là niềm vui khi được sắm sửa những bộ quần áo mới, nấu các món ăn đặc trưng, trao tặng những câu chúc ý nghĩa tới người thân,… Mà Tết còn phải đoàn viên, phải an toàn. Đặc biệt trong giai đoạn Tết Nguyên Đán, mỗi người chúng ta cần nâng cao ý thức, trang bị cho mình những vật dụng cần thiết để khi tham gia giao thông được an toàn, thông suốt.</p><p style=\"margin-left:0px;\">POC Helmets – thương hiệu nổi tiếng với các sản phẩm mũ bảo hiểm chất lượng cao. Mang lại sự an tâm, phong cách thời trang riêng mỗi khi xuống phố, là đối tác đồng hành đáng tin cậy trong những chuyến du xuân đón Tết. Nhân dịp xuân 2024, POC mong muốn gửi gắm tới bạn thông điệp “không để đường xa cản bước về nhà”</p><h2 style=\"margin-left:0px;\"><strong>Thông điệp POC Helmets mong muốn truyền tải trong dịp Tết 2024</strong></h2><p style=\"margin-left:0px;\">Ngày Tết cổ truyền Việt Nam là khoảnh khắc quan trọng và tràn ngập cảm xúc, đánh dấu sự kết thúc của một năm cũ và bắt đầu hành trình mới. Đây là dịp để gia đình đoàn tụ, dọn dẹp nhà cửa và chào đón một năm mới đầy hứng khởi.</p><p style=\"margin-left:0px;\">Tuy nhiên, nhịp sống hiện đại dễ làm chúng ta bị cuốn vào công việc mà quên đi ý nghĩa ngày Tết quan trọng đến nhường nào! Cho dù bạn có bận bịu tới đâu, nhà có xa cách mấy thì xin chớ quên Tết là đoàn viên, “Không để đường xa cản bước về nhà”.</p><figure class=\"image\" data-ckbox-resource-id=\"MbAbZn_VrKVS\"><picture><source srcset=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/MbAbZn_VrKVS/images/160.webp 160w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/MbAbZn_VrKVS/images/320.webp 320w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/MbAbZn_VrKVS/images/480.webp 480w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/MbAbZn_VrKVS/images/640.webp 640w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/MbAbZn_VrKVS/images/800.webp 800w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/MbAbZn_VrKVS/images/960.webp 960w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/MbAbZn_VrKVS/images/1120.webp 1120w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/MbAbZn_VrKVS/images/1280.webp 1280w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/MbAbZn_VrKVS/images/1440.webp 1440w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/MbAbZn_VrKVS/images/1600.webp 1600w\" sizes=\"(max-width: 1600px) 100vw, 1600px\" type=\"image/webp\"><img src=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/MbAbZn_VrKVS/images/1600.jpeg\" width=\"1600\" height=\"900\"></picture><figcaption><strong>Phim ngắn Tết “Không để đường xa cản bước về nhà”</strong></figcaption></figure><p style=\"margin-left:0px;\">Xuất phát từ những mong muốn giản đơn, ước mơ lan tỏa tải thông điệp ý nghĩa và quan tâm tới sự an toàn khi điều khiển phương tiện giao thông đường bộ của mọi người trong dịp Tết Nguyên Đán 2024. POC xin phép được kể câu chuyện thông qua một bộ phim ngắn.</p><ul><li><p style=\"margin-left:2rem;\">Tên phim: Không để đường xa cản bước về nhà</p></li><li><p style=\"margin-left:2rem;\">Ngày phát hành: Ngày 20 Tháng 2 năm 2024&nbsp;</p></li><li><p style=\"margin-left:2rem;\">Thể loại: Tình cảm, gia đình, đời thường</p></li><li><p style=\"margin-left:2rem;\">Đơn vị sản xuất:<a target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://poc-helmet.com/\"><strong> POC Helmets</strong></a></p></li></ul><p style=\"margin-left:0px;\">Sau vô vàn dự định ấp ủ, lần đầu tiên POC Helmets cho ra mắt phim ngắn trong dịp Tết Giáp Thìn 2024. Rất mong được sự ủng hộ và đón nhận của Quý khán giả.&nbsp;</p><p style=\"margin-left:0px;\">Trong phim, nhân vật Tuấn làm công việc tài xế xe ôm công nghệ. Một thanh niên từ dưới quê lên thành phố lập nghiệp với bao khao khát cháy bỏng của tuổi trẻ. Tuy nhiên, nhịp sống hối hả của thành thị cùng những áp lực cơm, áo, gạo, tiền đã làm anh cuốn theo dòng chảy của công việc mà quên đi ngày Tết đến gần, quên đi gia đình đang mong ngóng anh trở về…&nbsp;</p><p style=\"margin-left:0px;\">Qua một chuyến xe, anh vô tình gặp được Trang, một cô gái mạnh mẽ, có tính cách hài hước, cô đang trên đường về quê đón Tết để đoàn tụ cùng gia đình nhưng vô tình gặp được Tuấn. Bằng những câu nói thật thà, chất phát của người miền Tây, cô đã giúp Tuấn nhận ra mình đang bỏ quên đi ý nghĩa thật sự đáng quý của ngày Tết.</p><p style=\"margin-left:0px;\">Với sự kết hợp của dàn diễn viên trẻ trung, tài năng và nội dung phim cảm động, sâu lắng, “Không để đường xa cản bước về nhà” hứa hẹn sẽ mang đến rất nhiều bất ngờ cho khán giả trong dịp Tết Nguyên Đán 2024. Còn chần chờ gì nữa mà không thưởng thức bộ phim với chất lượng cao nhất tại kênh <a target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://www.youtube.com/watch?v=U8sNeJwXyko\"><strong>YouTube POC Official</strong></a><strong>.</strong></p>','2024-12-22 23:07:55.234000','Đồng hành cùng POC, Tết về nhà thôi','Đón Tết 2024 Cùng POC Helmet, Không Để Đường Xa Cản Bước Về Nhà',NULL,1),(5,'1734883876197-bao-lau-thay-non-bao-hiem.jpg','<p>Mọi vật đều có thời hạn sử dụng nhất định, nón bảo hiểm cũng thế, sau một thời gian sử dụng, nếu không có chế độ bảo hành, kiểm tra thường xuyên, thì chất lượng nón sẽ xuống cấp. Vậy bao lâu nên thay nón bảo hiểm 1 lần để đảm bảo an toàn cho bản thân? Qua bài viết sau, POC sẽ chia sẻ cho bạn thời điểm nào cần thay <a target=\"_blank\" rel=\"noopener noreferrer\" href=\"https://poc-helmet.com/non-bao-hiem/\"><i><strong>nón bảo hiểm</strong></i></a> và bí quyết để bảo quản được dài lâu?&nbsp;</p><h2 style=\"margin-left:0px;\"><strong>Lý do cần thay mới nón bảo hiểm?</strong></h2><p style=\"margin-left:0px;\">Có phải bạn thường nghĩ nón bảo hiểm vẫn còn đội được thì không cần thiết phải đổi mới? Một chút trầy xước bên ngoài cũng sẽ không ảnh hưởng đến công dụng của nón? Tuy nhiên đây là suy nghĩ sai lầm, việc thay mới nón bảo hiểm định kỳ là vô cùng quan trọng bởi những lý do sau:&nbsp;</p><ul><li><p style=\"margin-left:2rem;\">Nón bảo hiểm sử dụng quá lâu có thể đã bị lão hóa, hao mòn theo thời gian vậy nên khi gặp phải những va chạm bất ngờ, cấu tạo bên trong nón sẽ bị ảnh hưởng làm giảm khả năng bảo vệ vùng đầu của bạn, dẫn đến những chấn thương nguy hiểm.&nbsp;&nbsp;</p></li><li><p style=\"margin-left:2rem;\">Nón bảo hiểm cũ có thể chứa nhiều vi khuẩn, nấm mốc do mồ hôi tiết ra và ảnh hưởng của thời tiết tác động lên môi trường, gây hại cho sức khỏe đặc biệt là phần da đầu của bạn.</p><figure class=\"image\" data-ckbox-resource-id=\"cDwoOeAuu0cJ\"><picture><source srcset=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/cDwoOeAuu0cJ/images/205.webp 205w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/cDwoOeAuu0cJ/images/410.webp 410w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/cDwoOeAuu0cJ/images/615.webp 615w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/cDwoOeAuu0cJ/images/820.webp 820w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/cDwoOeAuu0cJ/images/1025.webp 1025w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/cDwoOeAuu0cJ/images/1230.webp 1230w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/cDwoOeAuu0cJ/images/1435.webp 1435w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/cDwoOeAuu0cJ/images/1640.webp 1640w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/cDwoOeAuu0cJ/images/1845.webp 1845w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/cDwoOeAuu0cJ/images/2048.webp 2048w\" sizes=\"(max-width: 2048px) 100vw, 2048px\" type=\"image/webp\"><img src=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/cDwoOeAuu0cJ/images/2048.webp\" width=\"2048\" height=\"910\"></picture></figure><h2 style=\"margin-left:0px;\"><strong>Các trường hợp cần thay mới nón bảo hiểm</strong></h2><figure class=\"image\" data-ckbox-resource-id=\"JOiVie96IBl6\"><picture><source srcset=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/JOiVie96IBl6/images/160.webp 160w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/JOiVie96IBl6/images/320.webp 320w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/JOiVie96IBl6/images/480.webp 480w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/JOiVie96IBl6/images/640.webp 640w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/JOiVie96IBl6/images/800.webp 800w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/JOiVie96IBl6/images/960.webp 960w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/JOiVie96IBl6/images/1120.webp 1120w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/JOiVie96IBl6/images/1280.webp 1280w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/JOiVie96IBl6/images/1440.webp 1440w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/JOiVie96IBl6/images/1600.webp 1600w\" sizes=\"(max-width: 1600px) 100vw, 1600px\" type=\"image/webp\"><img src=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/JOiVie96IBl6/images/1600.jpeg\" alt=\"\" width=\"1600\" height=\"900\"></picture></figure></li><li><h3 style=\"margin-left:0px;\"><strong>Nón bảo hiểm bị va đập mạnh&nbsp;</strong></h3></li><li><p style=\"margin-left:0px;\">Sau bất kỳ va đập mạnh nào, dù nón không có dấu hiệu hư hỏng bên ngoài, bạn cũng nên thay mới vì cấu trúc bên trong nón có thể đã bị ảnh hưởng và không còn khả năng chịu lực giống như ban đầu. Nón đã bảo vệ phần đầu của bạn trong lần va chạm đầu tiên, nên việc bạn cần làm là xem xét và thay nón mới tránh để các trường hợp đáng tiếc xảy ra.</p></li><li><h3 style=\"margin-left:0px;\"><strong>Các dấu hiệu lão hóa của nón bảo hiểm&nbsp;</strong></h3></li><li><p style=\"margin-left:0px;\">Bao gồm lớp vỏ ngoài bị nứt, xước, phai màu; lớp lót bên trong bị rách, sờn, mục nát; quai nón bị dão, đứt; nón có mùi hôi khó chịu. Đây là những dấu hiệu dễ nhận thấy nhất mà bạn có thể xử lý kịp thời.</p></li><li><h3 style=\"margin-left:0px;\"><strong>Không bảo quản nón sau khi sử dụng</strong></h3></li><li><p style=\"margin-left:0px;\">Nếu bạn sử dụng nón bảo hiểm mỗi ngày, hoặc thường xuyên đi đường dài, bạn nên thay nón mới sớm hơn so với khuyến cáo. Bởi thời gian sử dụng liên tục, nón phải chịu nhiều tác nhân gây hại từ môi trường như nắng gắt, mưa,… nếu bạn không vệ sinh kĩ thì khả năng lão hóa sẽ nhanh hơn các nón thông thường</p></li></ul>','2024-12-22 23:11:16.202000','Nón bảo hiểm là vật dụng bảo hộ không thể thiếu đối với người tham gia giao thông, đặc biệt là xe máy, xe đạp điện.','Bao lâu thay mới nón bảo hiểm?',NULL,2),(6,'1734884033050-cach-doi-mu-bao-hiem-khong-xep-toc-cho-ca-nam-va-nu.jpg','<p style=\"margin-left:0px;\">Việc đội mũ bảo hiểm là một quy định bắt buộc khi tham gia giao thông, đảm bảo sự an toàn cho bạn và người xung quanh. Tuy nhiên, nhiều người thường gặp phải vấn đề mái tóc bị xẹp, rối và mất nếp sau khi đội mũ bảo hiểm khiến bạn cảm thấy khó chịu và mất tự tin.</p><p style=\"margin-left:0px;\">Trong bài viết này, chúng tôi sẽ chia sẻ với bạn những nguyên nhân chính gây ra hiện tượng xẹp tóc khi đội mũ bảo hiểm, cũng như các mẹo đội mũ bảo hiểm không làm xẹp tóc để bạn bảo vệ mái tóc của mình.</p><h2 style=\"margin-left:0px;\"><strong>Nguyên nhân gây xẹp tóc khi đội mũ bảo hiểm</strong></h2><h3 style=\"margin-left:0px;\"><strong>Tóc tiếp xúc trực tiếp với về mặt mũ bảo hiểm quá nhiều</strong></h3><p style=\"margin-left:0px;\">Một trong những nguyên nhân chính khiến tóc bị xẹp khi đội mũ bảo hiểm là do tóc tiếp xúc trực tiếp với bề mặt nón quá nhiều. Sự ma sát liên tục giữa tóc và chất liệu bên trong mũ bảo hiểm sẽ làm tóc mất đi hình dạng ban đầu, thậm chí là bị “cộm” vô cùng khó chịu.</p><figure class=\"image\" data-ckbox-resource-id=\"U6CwXrTmGmYW\"><picture><source srcset=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/U6CwXrTmGmYW/images/160.webp 160w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/U6CwXrTmGmYW/images/320.webp 320w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/U6CwXrTmGmYW/images/480.webp 480w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/U6CwXrTmGmYW/images/640.webp 640w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/U6CwXrTmGmYW/images/800.webp 800w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/U6CwXrTmGmYW/images/960.webp 960w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/U6CwXrTmGmYW/images/1120.webp 1120w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/U6CwXrTmGmYW/images/1280.webp 1280w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/U6CwXrTmGmYW/images/1440.webp 1440w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/U6CwXrTmGmYW/images/1600.webp 1600w\" sizes=\"(max-width: 1600px) 100vw, 1600px\" type=\"image/webp\"><img src=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/U6CwXrTmGmYW/images/1600.jpeg\" width=\"1600\" height=\"900\"></picture><figcaption><i>Nguyên nhân đội mũ bảo hiểm gây xẹp tóc</i></figcaption></figure><p style=\"margin-left:0px;\">Thật sự là “nỗi ác mộng” với những mái tóc dài, uốn xoăn hoặc tóc được tạo kiểu bằng các sản phẩm làm tóc như gel, sáp. Khi tóc tiếp xúc trực tiếp với mũ bảo hiểm, các lọn tóc sẽ bị đè xuống và mất đi sự bồng bềnh, tạo nên hiện tượng xẹp tóc.</p><h3 style=\"margin-left:0px;\"><strong>Hầm bí, đổ mồ hôi đầu</strong></h3><p style=\"margin-left:0px;\">Mồ hôi là một yếu tố quan trọng khác gây nên tình trạng xẹp tóc khi đội mũ bảo hiểm. Khi tham gia giao thông, đặc biệt là vào những ngày nóng nực, bạn sẽ ra khá nhiều mồ hôi ở vùng đầu. Mồ hôi và độ ẩm tích tụ bên trong mũ bảo hiểm chính là nguyên nhân khiến tóc dễ dàng bị xẹp xuống. Thậm chí, khi mồ hôi bắt đầu khô đi, nó sẽ để lại những vết bết dính trên tóc, khiến tóc trở nên rối bù và mất nếp. Điều này đặc biệt khó chịu với những mái tóc dài và tóc uốn.</p><figure class=\"image\" data-ckbox-resource-id=\"Hldy7Yqz8155\"><picture><source srcset=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Hldy7Yqz8155/images/160.webp 160w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Hldy7Yqz8155/images/320.webp 320w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Hldy7Yqz8155/images/480.webp 480w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Hldy7Yqz8155/images/640.webp 640w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Hldy7Yqz8155/images/800.webp 800w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Hldy7Yqz8155/images/960.webp 960w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Hldy7Yqz8155/images/1120.webp 1120w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Hldy7Yqz8155/images/1280.webp 1280w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Hldy7Yqz8155/images/1440.webp 1440w,https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Hldy7Yqz8155/images/1600.webp 1600w\" sizes=\"(max-width: 1600px) 100vw, 1600px\" type=\"image/webp\"><img src=\"https://ckbox.cloud/zZTdTfkhYow1pVYJDXb1/assets/Hldy7Yqz8155/images/1600.jpeg\" width=\"1600\" height=\"900\"></picture><figcaption><i>Hầm bí, đổ mồ hôi</i></figcaption></figure>','2024-12-22 23:13:53.057000','Bài viết này sẽ hướng dẫn cách đội mũ bảo hiểm không làm xẹp tóc, giúp bạn vừa an toàn chấp hành đúng luật giao thông, vừa tự tin với mái tóc đẹp.','Cách Đội Mũ Bảo Hiểm Không Làm Xẹp Tóc?',NULL,2);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'Thông tin sự kiện',NULL),(2,'Thông tin nón bảo hiểm',NULL);
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_detail`
--

DROP TABLE IF EXISTS `cart_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `quantity` bigint NOT NULL,
  `size_item` varchar(255) DEFAULT NULL,
  `cart_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbql1m2v2po7hcawonqsgqex88` (`cart_id`),
  KEY `FKclb1c0wg3mofxnpgidib1t987` (`product_id`),
  CONSTRAINT `FKbql1m2v2po7hcawonqsgqex88` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  CONSTRAINT `FKclb1c0wg3mofxnpgidib1t987` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_detail`
--

LOCK TABLES `cart_detail` WRITE;
/*!40000 ALTER TABLE `cart_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sum` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK64t7ox312pqal3p7fg9o503c2` (`user_id`),
  CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `carts_chk_1` CHECK ((`sum` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'2024-12-22 22:07:24.638000','Nón thể thao',_binary '\0','1734880044638-non-bao-hiem-the-thao-POC-Helmets.webp',NULL),(2,NULL,'Nón xe máy',_binary '\0','1734880077944-non-bao-hiem-xe-may-POC-Helmets.webp','2024-12-22 22:07:57.944000'),(3,'2024-12-22 22:08:16.648000','Nón trẻ em',_binary '\0','1734880096647-non-bao-hiem-tre-em-POC-Helmets.webp',NULL),(4,'2024-12-22 22:08:50.370000','Phụ kiện',_binary '\0','1734880130370-phu-kien-the-thao-POC-Helmets.webp',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `created_at` varbinary(255) DEFAULT NULL,
  `start` int NOT NULL,
  `updated_at` varbinary(255) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKti2ywtwc29ys1i591rmmaveyc` (`product_id`),
  KEY `FK312drfl5lquu37mu4trk8jkwx` (`user_id`),
  CONSTRAINT `FK312drfl5lquu37mu4trk8jkwx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKti2ywtwc29ys1i591rmmaveyc` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name_image` varchar(255) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKghwsjbjo7mg3iufxruvq6iu3q` (`product_id`),
  CONSTRAINT `FKghwsjbjo7mg3iufxruvq6iu3q` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'1734880841276-mu-bao-hiem-poc-p11-full-phu-kien.png',1),(2,'1734880841277-mu-bao-hiem-poc-p11-goc-45-ngang.png',1),(3,'1734880841277-mu-bao-hiem-poc-p11-goc-45-ngang-co-kinh.png',1),(4,'1734880841277-mu-bao-hiem-poc-p11-goc-45-sau.png',1),(5,'1734881103927-mu-bao-hiem-poc-p10-goc-sau-45.png',2),(6,'1734881103930-mu-bao-hiem-poc-p10-goc-truoc.png',2),(7,'1734881103932-mu-bao-hiem-poc-p10-kinh-trang-guong.png',2),(8,'1734881103934-mu-bao-hiem-poc-p10-kinh-vang-cam.png',2),(9,'1734881257696-creation1.png',3),(10,'1734881257696-non-poc-p01-2-1.png',3),(11,'1734881408050-3-1.png',4),(12,'1734881408065-4-2.png',4),(13,'1734881548627-sau.png',5),(14,'1734881548630-truoc.png',5),(15,'1734881746943-1.png',6),(16,'1734881746944-2.png',6),(17,'1734881746944-4.png',6),(18,'1734881746944-5.png',6),(19,'1734881898197-poc-power-goc-ngang.png',7),(20,'1734881898197-poc-power-goc-nghieng-khong-co-mui.png',7),(21,'1734882129157-non-poc-pk01.png',8),(22,'1734882301927-non-bao-hiem-poc-pk02-goc-ngang.png',9),(23,'1734882301931-non-bao-hiem-poc-pk02-goc-truoc.png',9),(24,'1734882301934-non-poc-pk02.png',9),(25,'',10),(26,'',11),(27,'',12),(28,'',13),(29,'',14),(30,'',15);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  `size_item` varchar(255) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrws2q0si6oyd6il8gqe2aennc` (`order_id`),
  KEY `FKc7q42e9tu0hslx6w4wxgomhvn` (`product_id`),
  CONSTRAINT `FKc7q42e9tu0hslx6w4wxgomhvn` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKrws2q0si6oyd6il8gqe2aennc` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,470000,3,' XL',1,2),(2,1500000,2,' L',1,4),(3,470000,2,' XL',2,2),(4,1500000,2,' L',3,4),(5,2000000,3,' XL',4,1),(6,1500000,4,' L',5,4),(7,1000000,1,' M',5,4),(20,470000,2,' XL',11,2),(21,200000,2,' XL',11,3),(22,450000,3,' M',12,2),(23,470000,2,' XL',13,2),(24,750000,2,' M',13,1),(25,1500000,3,' M',14,5),(26,1500000,3,' M',15,5),(27,1500000,2,' L',16,4),(28,470000,2,' XL',17,2),(29,450000,1,' M',17,2);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_ref` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh0vxwit7yrip7v9pjqlocmbxp` (`order_id`),
  CONSTRAINT `FKh0vxwit7yrip7v9pjqlocmbxp` FOREIGN KEY (`order_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Quang Binh - Le Thuy','2024-12-22 23:25:25.078000','nanh02465@gmail.com','Tài','Đoàn','Giao hàng cẩn thận','Vn_pay','59bde217,9079,470e,91fe,ae85ca272f4a','PAYMENT_SUCCEED','0937797443','CONFIRM\r',4410000,NULL,2),(2,'Quang Binh - Le Thuy','2024-12-22 23:27:47.540000','nanh02465@gmail.com','Tài','Đoàn','giao hàng cẩn thận','COD','UNKNOW','PAYMENT_UNPAID','0937797443','CONFIRM\r',940000,NULL,2),(3,'Quang Binh - Le Thuy','2024-12-22 23:30:58.190000','nanh02465@gmail.com','Tài','Nguyễn','cẩn thận','Vn_pay','a1292875,8e94,4ced,9222,be56e9e47f56','PAYMENT_FAILED','0937797443','CANCELLED',3000000,NULL,3),(4,'Quang Binh - Le Thuy','2024-12-23 09:28:36.539000','nanh02465@gmail.com','Tài','Đoàn','ádadssa','COD','UNKNOW','PAYMENT_UNPAID','0937797443','PENDING',6000000,NULL,3),(5,'Quang Binh','2024-12-24 18:35:30.096000','nanh02465@gmail.com','Tài','Đoàn','Cẩn thận','COD','UNKNOW','PAYMENT_UNPAID','0937797443','CONFIRM\r',7000000,NULL,2),(11,'Quang Binh','2024-12-24 21:17:08.537000','nanh02465@gmail.com','sadas','saddasd','ádasdsa','COD','UNKNOW','PAYMENT_UNPAID','0937797443','PENDING',1340000,NULL,2),(12,'Quang Binh','2024-12-24 21:20:12.730000','nanh02465@gmail.com','Tài','Đoàn','ádasda','COD','UNKNOW','PAYMENT_UNPAID','0937797443','PENDING',1350000,NULL,2),(13,'Quang Binh - Le Thuy','2024-12-24 21:43:41.831000','nanh02465@gmail.com','Tài','Đoàn','ádsdd','Vn_pay','c510b565,4802,46b2,b952,79514a7a3ce3','PAYMENT_SUCCEED','0937797443','CONFIRM',2440000,NULL,2),(14,'Quang Binh','2024-12-24 23:26:12.105000','nanh02465@gmail.com','Tài','Đoàn','lol','Vn_pay','a4a93aeb,fd54,4b9f,89e5,4e77526e7b20','PAYMENT_FAILED','0937797443','CANCELLED',4500000,NULL,2),(15,'Quang Binh - Le Thuy','2024-12-24 23:27:52.472000','nanh02465@gmail.com','Tài','Đoàn','tyu','Vn_pay','b211e3d9,2f14,465b,9911,820e944ef863','PAYMENT_SUCCEED','0937797443','CONFIRM',4500000,NULL,2),(16,'Quang Binh','2024-12-25 08:15:09.507000','nanh02465@gmail.com','Tài','Đoàn','cẩn thận','Vn_pay','db1c86a2,3704,4645,939a,a544b37136c1','PAYMENT_SUCCEED','0937797443','CONFIRM',3000000,NULL,2),(17,'Quang Binh - Le Thuy','2024-12-25 09:11:05.550000','nanh02465@gmail.com','Tài','Đoàn','cẩn thận','Vn_pay','1126160b,ee1a,4c07,b690,970e1a9bb0a2','PAYMENT_SUCCEED','0937797443','CONFIRM',1390000,NULL,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attribute`
--

DROP TABLE IF EXISTS `product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_attribute` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `attributes_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo8pp2q0mtga3ns8fx97x6no4s` (`attributes_id`),
  KEY `FK1c16jlxm56o8ur89rh86eg25n` (`product_id`),
  CONSTRAINT `FK1c16jlxm56o8ur89rh86eg25n` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKo8pp2q0mtga3ns8fx97x6no4s` FOREIGN KEY (`attributes_id`) REFERENCES `attributes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attribute`
--

LOCK TABLES `product_attribute` WRITE;
/*!40000 ALTER TABLE `product_attribute` DISABLE KEYS */;
INSERT INTO `product_attribute` VALUES (1,'Tiêu chuẩn Châu Âu',1,1),(2,'M(54cm – 57cm) – L(57cm – 60cm)',2,1),(3,'Khoá từ',3,1),(4,'600G (±50G)',4,1),(5,'11 lỗ thông gió',5,1),(6,'Vỏ ABS + Xốp EPS + Lớp chống sốc',6,1),(7,'Quy chuẩn kỹ thuật quốc gia về mũ bảo hiểm cho người đi mô tô, xe máy',1,2),(8,'M(54cm – 57cm) – L(57cm – 60cm)',2,2),(9,'Khoá từ',3,2),(10,'500G (±50G)',4,2),(11,'16 lỗ thông gió',5,2),(12,'Vỏ ABS + Xốp EPS + Lớp chống sốc',6,2),(13,'Quy chuẩn kỹ thuật quốc gia về mũ bảo hiểm cho người đi mô tô, xe máy',1,3),(14,'S(51cm – 54cm) – M(54cm – 57cm) – L(57cm – 60cm)',2,3),(15,'Khoá từ',3,3),(16,'550G (±50G)',4,3),(17,'6 lỗ thông gió',5,3),(18,'Vỏ ABS + Xốp EPS + Lớp chống sốc',6,3),(19,'Tiêu chuẩn Quốc tế',1,4),(20,'M(57cm – 58cm) – L(59cm – 60cm) – XL(61cm – 62cm) – XXL(63cm – 64cm)',2,4),(21,'Khóa lẫy tiêu chuẩn',3,4),(22,'1250G (±50G)',4,4),(23,'Hệ thống lấy gió trước sau',5,4),(24,'Vỏ ABS nguyên sinh + Xốp EPS + Hệ thống chống sốc\r\n\r\nMÀU SẮC',6,4),(25,'Tiêu chuẩn Quốc tế',1,5),(26,'M(57cm – 58cm) – L(59cm – 60cm) – XL(61cm – 62cm) – XXL(63cm – 64cm)',2,5),(27,'Khóa lẫy tiêu chuẩn',3,5),(28,'1250G (±50G)',4,5),(29,'Hệ thống lấy gió trước sau',5,5),(30,'Vỏ ABS nguyên sinh + Xốp EPS + Hệ thống chống sốc',6,5),(31,'Tiêu chuẩn quốc tế',1,6),(32,'M(54cm – 58cm) – L(58cm – 62cm)',2,6),(33,'Lẫy mở nhanh',3,6),(34,'1250 GR',4,6),(35,'Hệ thống lấy gió trước sau',5,6),(36,'Vỏ ABS nguyên sinh + Xốp EPS + Hệ thống chống sốc',6,6),(37,'Tiêu chuẩn Quốc tế',1,7),(38,'M(57cm – 58cm) – L(59cm – 60cm) – XL(61cm – 62cm) – XXL(63cm – 64cm)',2,7),(39,'Double D',3,7),(40,'1500G (±50G)',4,7),(41,'Hệ thống lấy gió trước sau',5,7),(42,'Vỏ ABS nguyên sinh + Xốp EPS + Hệ thống chống sốc',6,7),(43,'Tiêu chuẩn Châu Âu',1,8),(44,'S(51cm – 54cm)',2,8),(45,'Khoá thường',3,8),(46,'400G (±20G)',4,8),(47,'12 lỗ thông gió',5,8),(48,'Vỏ ABS + Xốp EPS + Lớp chống sốc',6,8),(49,'Tiêu chuẩn Châu Âu',1,9),(50,'S(46cm – 53cm) – M(54cm – 57cm) – L(57cm – 60cm)',2,9),(51,'Khoá từ',3,9),(52,'S: 200G (±20G)\r\n\r\nM: 290G (±20G)\r\n\r\nL: 300G (±20G)',4,9),(53,'9 lỗ thông gió',5,9),(54,'Vỏ PC + Xốp EPS + Lớp chống sốc',6,9);
/*!40000 ALTER TABLE `product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_size` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` float NOT NULL,
  `quantity` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `size_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9qjgp0xvl5jfetdt683i7wqwr` (`product_id`),
  KEY `FKnlkh5xcjuopsnoimdvmumioia` (`size_id`),
  CONSTRAINT `FK9qjgp0xvl5jfetdt683i7wqwr` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKnlkh5xcjuopsnoimdvmumioia` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES (1,750000,8,1,1),(2,750000,20,1,2),(3,450000,14,2,1),(4,470000,1,2,3),(5,200000,10,3,3),(6,1000000,10,4,1),(7,1500000,8,4,2),(8,1500000,3,5,1),(9,1500000,10,6,1),(10,1500000,20,6,2),(11,1200000,10,7,1),(12,1700000,10,7,4),(13,650000,20,8,1),(14,650000,10,9,1),(15,650000,10,9,2),(16,260000,10,10,1),(17,150000,10,11,1),(18,190000,20,12,1),(19,150000,10,13,1),(20,150000,10,14,1),(21,2000000,10,1,3);
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` mediumtext,
  `short_description` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'1734880841259-mu-bao-hiem-poc-p11-goc-45-truoc.png','POC P11','2024-12-22 22:20:41.316000','Mũ bảo hiểm POC P11 sở hữu tính năng nổi bật nhờ thiết kế hệ thống thông gió thông minh thoáng mát ở phía trên và phía sau của mũ kết hợp cùng ốp tai dày dặn giúp giữ ấm, cản gió, bụi, giảm ồn cho tai. Phần ốp tai và lớp lót dày dặn, êm ái và thấm hút tốt, đảm bảo sự thoải mái khi sử dụng.','Mũ bảo hiểm POC P11 sở hữu tính năng nổi bật nhờ thiết kế hệ thống thông gió thông minh thoáng mát ở phía trên và phía sau của mũ kết hợp cùng ốp tai dày dặn giúp giữ ấm, cản gió, bụi, giảm ồn cho tai.','Nổi bật',NULL,1),(2,'1734881103924-mu-bao-hiem-poc-p10-goc-truoc-45.png','POC P10','2024-12-22 22:25:03.962000','Thiết kế hệ thống thông gió thông minh có thể điều chỉnh bằng thanh gạt phía trên mũ bảo hiểm POC P10. Gạt trên/dưới để đóng/mở các lỗ thông gió tùy thuộc mục đích, nhu cầu và sở thích. Kết hợp ốp tai dày dặn giúp giữ ấm, cản gió, bụi, giảm ồn cho tai. Phần ốp tai và lớp lót dày dặn, êm ái và thấm hút tốt, đảm bảo sự thoải mái khi sử dụng.','Thiết kế hệ thống thông gió thông minh có thể điều chỉnh bằng thanh gạt phía trên mũ bảo hiểm POC P10. Gạt trên/dưới để đóng/mở các lỗ thông gió tùy thuộc mục đích, nhu cầu và sở thích. Kết hợp ốp tai dày dặn giúp giữ ấm, cản gió, bụi, giảm ồn cho tai. ','Nổi bật',NULL,1),(3,'1734881257694-non-poc-p01-1-2.png','Creation 1','2024-12-22 22:27:37.725000','Là trang bị gắn liền với các hoạt động di chuyển hàng ngày bằng phương tiện xe gắn máy, nón bảo hiểm POC Creation 1 được chế tạo từ những nguyên vật liệu có khả năng bảo vệ cao. Kết cấu 3 lớp đầy đủ: Vỏ ABS cứng cáp, kháng va đập; Xốp EPS phân tán và hấp thụ lực; Khóa nam châm Fidlock tiện dụng và an toàn. POC Creation 1 - Nón bảo hiểm xe máy đã qua kiểm định chất lượng Quatest 2, sẵn sàng bảo vệ chủ nhân, mang đến sự an toàn và thoải mái.','Là trang bị gắn liền với các hoạt động di chuyển hàng ngày bằng phương tiện xe gắn máy, nón bảo hiểm POC Creation 1 được chế tạo từ những nguyên vật liệu có khả năng bảo vệ cao','Sắp về',NULL,1),(4,'1734881408050-non-poc-revo.png','REVO','2024-12-22 22:30:08.099000','Nón bảo hiểm fullface POC REVO bảo vệ toàn diện vùng đầu khi tham gia giao thông. Chất liệu nhựa ABS nguyên sinh, xốp EPS cao cấp, bền bỉ và có sức chịu lực tốt, hỗ trợ bảo vệ tối đa. Bao phủ toàn diện nhưng vẫn đảm bảo sự thông thoáng với 2 khe thông gió lớn ở phía trước và đuôi nón.','Nón bảo hiểm fullface POC REVO bảo vệ toàn diện vùng đầu khi tham gia giao thông. Chất liệu nhựa ABS nguyên sinh, xốp EPS cao cấp, bền bỉ và có sức chịu lực tốt, hỗ trợ bảo vệ tối đa','Nổi bật',NULL,1),(5,'1734881548625-non-poc-t18.png','POC T18','2024-12-22 22:32:28.658000','Nón bảo hiểm fullface POC T18 bảo vệ toàn diện vùng đầu khi tham gia giao thông. Chất liệu nhựa ABS, xốp EPS cao cấp, bền bỉ và có sức chịu lực tốt, hỗ trợ bảo vệ tối đa. Bao phủ toàn diện nhưng vẫn đảm bảo sự thông thoáng với 2 khe thông gió lớn ở phía trước và đuôi nón.','Nón bảo hiểm fullface POC T18 bảo vệ toàn diện vùng đầu khi tham gia giao thông. Chất liệu nhựa ABS, xốp EPS cao cấp, bền bỉ và có sức chịu lực tốt, hỗ trợ bảo vệ tối đa','Sắp về',NULL,1),(6,'1734881746926-2 (1).png','CITY','2024-12-22 22:35:46.993000','Nón bảo hiểm 3/4 POC CITY là một lựa chọn hoàn hảo cho nhu cầu đi lại hằng ngày mà vẫn an toàn, hiệu quả. Chất liệu nhựa ABS nguyên sinh, xốp EPS cao cấp, bền bỉ và có sức chịu lực tốt, hỗ trợ bảo vệ tối đa','Nón bảo hiểm 3/4 POC CITY là một lựa chọn hoàn hảo cho nhu cầu đi lại hằng ngày mà vẫn an toàn, hiệu quả. Chất liệu nhựa ABS nguyên sinh, xốp EPS cao cấp, bền bỉ và có sức chịu lực tốt, hỗ trợ bảo vệ tối đa','Nổi bật',NULL,2),(7,'1734881898197-poc-power-goc-nghieng-co-mui.png','POC POWER','2024-12-22 22:38:18.242000','Nón bảo hiểm fullface POC POWER bảo vệ toàn diện vùng đầu khi tham gia giao thông. Chất liệu nhựa ABS, xốp EPS cao cấp, bền bỉ và có sức chịu lực tốt, hỗ trợ bảo vệ tối đa. Bao phủ toàn diện nhưng vẫn đảm bảo sự thông thoáng với 2 khe thông gió lớn ở phía trước và','Nón bảo hiểm fullface POC POWER bảo vệ toàn diện vùng đầu khi tham gia giao thông. Chất liệu nhựa ABS, xốp EPS cao cấp, bền bỉ và có sức chịu lực tốt, hỗ trợ bảo vệ tối đa.','Sắp về',NULL,2),(8,'1734882129144-non-poc-p01-1-1.png','POC PK01','2024-12-22 22:42:09.200000','Rèn luyện sức khỏe cũng như tinh thần thể thao khỏe khoắn. Kích thước được thiết kế để phù hợp hơn với những vòng đầu nhỏ, từ 51 - 54cm. Nón bảo hiểm trẻ em POC PK01 Bảo vệ an toàn vùng đầu khỏi những chấn thương không cần thiết trong quá trình tập luyện, biểu diễn hay vui chơi, giải trí,...','Rèn luyện sức khỏe cũng như tinh thần thể thao khỏe khoắn. Kích thước được thiết kế để phù hợp hơn với những vòng đầu nhỏ, từ 51 - 54cm.','Nổi bật',NULL,3),(9,'1734882301922-non-poc-pk02.png','POC PK02','2024-12-22 22:45:01.963000','Nón bảo hiểm trẻ em POC PK02 siêu đáng yêu dành cho các bé và cả gia đình với phiên bản nâng cấp đủ size. Trọng lượng nón cho bé chỉ khoảng 200g, xóa tan nỗi lo về sức nặng lên cột sống của bé, giúp bé thoải mái vui chơi mà không lo bị cản trở, vướng víu. Chất liệu cao cấp, nguồn gốc xuất xứ rõ ràng, an toàn cho bé, an tâm cho ba mẹ.','Nón bảo hiểm trẻ em POC PK02 siêu đáng yêu dành cho các bé và cả gia đình với phiên bản nâng cấp đủ size. Trọng lượng nón cho bé chỉ khoảng 200g, xóa tan nỗi lo về sức nặng lên cột sống của bé, giúp bé thoải mái vui chơi mà không lo bị cản trở, vướng víu','Sắp về',NULL,3),(10,'1734882471508-kinh-phi-cong-titan.webp','Kính PG01','2024-12-22 22:47:51.513000','Thể hiện phong cách cá tính, thời thượng với Kính Phi Công Gắn Mũ Bảo Hiểm PG01. Kính chống tia UV, bụi bẩn, côn trùng, chắn gió, đảm bảo tầm nhìn rõ ràng, an toàn khi lái xe. Chất liệu cao cấp: gọng nhựa TPU dẻo dai, mắt kính polycarbonate chống vỡ, cho độ rõ quang học cao. Đệm lót êm ái, thoải mái khi sử dụng. Dễ dàng lắp đặt, phù hợp nhiều loại mũ bảo hiểm và hoạt động như đi xe máy, chơi thể thao,...','Thể hiện phong cách cá tính, thời thượng với Kính Phi Công Gắn Mũ Bảo Hiểm PG01. Kính chống tia UV, bụi bẩn, côn trùng, chắn gió, đảm bảo tầm nhìn rõ ràng, an toàn khi lái xe.','Sắp về',NULL,4),(11,'1734882581767-kinh-trang-guong-poc-p01.png','Kính gương','2024-12-22 22:49:41.774000','Kính nam châm giúp tiết kiệm thời gian và năng lượng khi dễ dàng tháo/lắp chỉ trong vài giây bằng một thao tác tay đơn giản. Kính nam châm phiên bản tráng gương được phủ lớp quang học phản chiếu hay còn gọi là lớp mirror. Lớp phủ này có tác dụng phản chiếu ánh sáng, giúp giảm 10-60% lượng ánh sáng mặt trời chiếu thẳng vào mắt so với các loại kính râm thông thường. Khách hàng mê mẩn loại kính này cũng bởi vì khả năng phản xạ cảnh vật môi trường mỗi khi di chuyển, chống nắng, chống chói, chống bụi và bảo vệ đôi mắt cũng như làn da. Ngoài ra, kính còn có độ rõ quang học cao giúp sử dụng trong thời gian dài không gây hại và gây mỏi mắt.','Kính nam châm giúp tiết kiệm thời gian và năng lượng khi dễ dàng tháo/lắp chỉ trong vài giây bằng một thao tác tay đơn giản. Kính nam châm phiên bản tráng gương được phủ lớp quang học phản chiếu hay còn gọi là lớp mirror.','Sắp về',NULL,4),(12,'1734882653451-kinh-revo-non-poc-p01.png','Kính Revo','2024-12-22 22:50:53.456000','Kính nam châm giúp tiết kiệm thời gian và năng lượng khi dễ dàng tháo/lắp chỉ trong vài giây bằng một thao tác tay đơn giản. Kính nam châm phiên bản màu revo thời trang cực chất giúp chống nắng, chống chói, chống bụi và bảo vệ đôi mắt cũng như làn da. Ngoài ra, kính còn có độ rõ quang học cao giúp sử dụng trong thời gian dài không gây hại và gây mỏi mắt.','Kính nam châm giúp tiết kiệm thời gian và năng lượng khi dễ dàng tháo/lắp chỉ trong vài giây bằng một thao tác tay đơn giản.','Sắp về',NULL,4),(13,'1734882715131-kinh-titan-non-poc-p01-1.png','Kính Titan','2024-12-22 22:51:55.141000','Kính nam châm giúp tiết kiệm thời gian và năng lượng khi dễ dàng tháo/lắp chỉ trong vài giây bằng một thao tác tay đơn giản. Kính titan tuyệt đẹp với sắc màu hội tụ huyền ảo tạo nên sự cá tính và thời thượng. Ngoài ra, kính còn có khả năng chống tia UV từ ánh nắng mặt trời, chống chói, chống bụi và bảo vệ đôi mắt cũng như làn da.','Kính nam châm giúp tiết kiệm thời gian và năng lượng khi dễ dàng tháo/lắp chỉ trong vài giây bằng một thao tác tay đơn giản. Kính titan tuyệt đẹp với sắc màu hội tụ huyền ảo tạo nên sự cá tính và thời thượng.','Nổi bật',NULL,4),(14,'1734882813746-kinh-den-khoi-poc-falcon.png','Kính khói','2024-12-22 22:53:33.754000','Kính nam châm giúp tiết kiệm thời gian và năng lượng khi dễ dàng tháo/lắp chỉ trong vài giây bằng một thao tác tay đơn giản. Kính nam châm dạng đen khói thời trang cực chất giúp chống nắng, chống chói, chống bụi và bảo vệ đôi mắt cũng như làn da. Ngoài ra, kính còn có độ rõ quang học cao giúp sử dụng trong thời gian dài không gây hại và gây mỏi mắt.','Kính nam châm giúp tiết kiệm thời gian và năng lượng khi dễ dàng tháo/lắp chỉ trong vài giây bằng một thao tác tay đơn giản. Kính nam châm dạng đen khói thời trang cực chất giúp chống nắng, chống chói, chống bụi và bảo vệ đôi mắt cũng như làn da.','Sắp về',NULL,4),(15,'1734882911180-kinh-phi-cong-den-khoi-3.webp','Kính đổi','2024-12-22 22:55:11.187000','Kính nam châm giúp tiết kiệm thời gian và năng lượng khi dễ dàng tháo/lắp chỉ trong vài giây bằng một thao tác tay đơn giản. Kính đổi màu với công nghệ tiên tiến có thể chuyển màu từ trong suốt sang màu đen khi tiếp xúc với tia UV từ ánh nắng mặt trời và ngược lại.Điều này không chỉ giúp bảo vệ đôi mắt khỏi ánh nắng mặt trời, bụi bẩn mà còn vô cùng tiện dụng khi đảm bảo tầm nhìn di chuyển vào lúc trời tối.','Kính nam châm giúp tiết kiệm thời gian và năng lượng khi dễ dàng tháo/lắp chỉ trong vài giây bằng một thao tác tay đơn giản. ','Sắp về',NULL,4);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN','ADMIN'),(2,'USER','USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name_size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,'M'),(2,'L'),(3,'XL'),(4,'XXL');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spring_session`
--

DROP TABLE IF EXISTS `spring_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint NOT NULL,
  `LAST_ACCESS_TIME` bigint NOT NULL,
  `MAX_INACTIVE_INTERVAL` int NOT NULL,
  `EXPIRY_TIME` bigint NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring_session`
--

LOCK TABLES `spring_session` WRITE;
/*!40000 ALTER TABLE `spring_session` DISABLE KEYS */;
INSERT INTO `spring_session` VALUES ('b79f3a19-ff78-4e8a-8265-21a3e757dd3b','d9645b7d-0850-4ebc-aa61-03094ecd8dc3',1735092504817,1735092846593,2592000,1737684846593,'22521271@gm.uit.edu.vn');
/*!40000 ALTER TABLE `spring_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spring_session_attributes`
--

DROP TABLE IF EXISTS `spring_session_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring_session_attributes`
--

LOCK TABLES `spring_session_attributes` WRITE;
/*!40000 ALTER TABLE `spring_session_attributes` DISABLE KEYS */;
INSERT INTO `spring_session_attributes` VALUES ('b79f3a19-ff78-4e8a-8265-21a3e757dd3b','avatar',_binary '�\�\0t\0 1734920144771-default-google.png'),('b79f3a19-ff78-4e8a-8265-21a3e757dd3b','email',_binary '�\�\0t\022521271@gm.uit.edu.vn'),('b79f3a19-ff78-4e8a-8265-21a3e757dd3b','firstName',_binary '�\�\0t\0Đoàn'),('b79f3a19-ff78-4e8a-8265-21a3e757dd3b','id',_binary '�\�\0sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0'),('b79f3a19-ff78-4e8a-8265-21a3e757dd3b','jakarta.servlet.jsp.jstl.fmt.request.charset',_binary '�\�\0t\0UTF-8'),('b79f3a19-ff78-4e8a-8265-21a3e757dd3b','lastName',_binary '�\�\0t\0Tài'),('b79f3a19-ff78-4e8a-8265-21a3e757dd3b','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '�\�\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\�\�/��\�\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$d61e908a-f6a1-4a8e-86ff-b25152386758'),('b79f3a19-ff78-4e8a-8265-21a3e757dd3b','SPRING_SECURITY_CONTEXT',_binary '�\�\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0l\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0l\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList�%1�\�\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0�\�^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0l\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_ADMINxq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0l\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0$0b73823d-7cfb-4a1d-80f4-8afa5ae36194psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0l\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0\nsr\0java.util.TreeSetݘP��\�[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0l\0\0xpw\0\0\0q\0~\0xpt\022521271@gm.uit.edu.vn'),('b79f3a19-ff78-4e8a-8265-21a3e757dd3b','SPRING_SECURITY_SAVED_REQUEST',_binary '�\�\0sr\0Aorg.springframework.security.web.savedrequest.DefaultSavedRequest\0\0\0\0\0\0l\0I\0\nserverPortL\0contextPatht\0Ljava/lang/String;L\0cookiest\0Ljava/util/ArrayList;L\0headerst\0Ljava/util/Map;L\0localesq\0~\0L\0matchingRequestParameterNameq\0~\0L\0methodq\0~\0L\0\nparametersq\0~\0L\0pathInfoq\0~\0L\0queryStringq\0~\0L\0\nrequestURIq\0~\0L\0\nrequestURLq\0~\0L\0schemeq\0~\0L\0\nserverNameq\0~\0L\0servletPathq\0~\0xp\0\0�t\0\0sr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\09org.springframework.security.web.savedrequest.SavedCookie\0\0\0\0\0\0l\0I\0maxAgeZ\0secureI\0versionL\0commentq\0~\0L\0domainq\0~\0L\0nameq\0~\0L\0pathq\0~\0L\0valueq\0~\0xp����\0\0\0\0\0ppt\0SESSIONpt\00MGI3MzgyM2QtN2NmYi00YTFkLTgwZjQtOGFmYTVhZTM2MTk0xsr\0java.util.TreeMap��>-%j\�\0L\0\ncomparatort\0Ljava/util/Comparator;xpsr\0*java.lang.String$CaseInsensitiveComparatorw\\}\\P\�\�\0\0xpw\0\0\0t\0acceptsq\0~\0\0\0\0w\0\0\0t\0@image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8xt\0accept-encodingsq\0~\0\0\0\0w\0\0\0t\0gzip, deflate, br, zstdxt\0accept-languagesq\0~\0\0\0\0w\0\0\0t\0vi,en;q=0.9,en-US;q=0.8xt\0\nconnectionsq\0~\0\0\0\0w\0\0\0t\0\nkeep-alivext\0cookiesq\0~\0\0\0\0w\0\0\0t\08SESSION=MGI3MzgyM2QtN2NmYi00YTFkLTgwZjQtOGFmYTVhZTM2MTk0xt\0hostsq\0~\0\0\0\0w\0\0\0t\0localhost:8080xt\0referersq\0~\0\0\0\0w\0\0\0t\0\"http://localhost:8080/login?logoutxt\0	sec-ch-uasq\0~\0\0\0\0w\0\0\0t\0A\"Google Chrome\";v=\"131\", \"Chromium\";v=\"131\", \"Not_A Brand\";v=\"24\"xt\0sec-ch-ua-mobilesq\0~\0\0\0\0w\0\0\0t\0?0xt\0sec-ch-ua-platformsq\0~\0\0\0\0w\0\0\0t\0	\"Windows\"xt\0sec-fetch-destsq\0~\0\0\0\0w\0\0\0t\0imagext\0sec-fetch-modesq\0~\0\0\0\0w\0\0\0t\0no-corsxt\0sec-fetch-sitesq\0~\0\0\0\0w\0\0\0t\0same-originxt\0\nuser-agentsq\0~\0\0\0\0w\0\0\0t\0oMozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36xxsq\0~\0\0\0\0w\0\0\0sr\0java.util.Locale~�`�0�\�\0I\0hashcodeL\0countryq\0~\0L\0\nextensionsq\0~\0L\0languageq\0~\0L\0scriptq\0~\0L\0variantq\0~\0xp����q\0~\0q\0~\0t\0viq\0~\0q\0~\0xsq\0~\0<����q\0~\0q\0~\0t\0enq\0~\0q\0~\0xsq\0~\0<����t\0USq\0~\0q\0~\0@q\0~\0q\0~\0xxt\0continuet\0GETsq\0~\0pw\0\0\0\0xppt\0/errort\0http://localhost:8080/errort\0httpt\0	localhostt\0/error'),('b79f3a19-ff78-4e8a-8265-21a3e757dd3b','sum',_binary '�\�\0sr\0java.lang.Integer⠤���8\0I\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0'),('b79f3a19-ff78-4e8a-8265-21a3e757dd3b','user',_binary '�\�\0sr\0$vn.helmetshop.helmetshop.domain.UserhL���2\0J\0idL\0addresst\0Ljava/lang/String;L\0avatarq\0~\0L\0cartt\0&Lvn/helmetshop/helmetshop/domain/Cart;L\0\ncreated_att\0Ljava/sql/Timestamp;L\0emailq\0~\0L\0	feedbackst\0Ljava/util/List;L\0	firstNameq\0~\0L\0lastNameq\0~\0L\0ordersq\0~\0L\0passwordq\0~\0L\0phoneq\0~\0L\0providerq\0~\0L\0rolet\0&Lvn/helmetshop/helmetshop/domain/Role;L\0\nupdated_atq\0~\0xp\0\0\0\0\0\0\0t\0Quang Binh - Le Thuyt\0 1734920144771-default-google.pngppt\022521271@gm.uit.edu.vnsr\0*org.hibernate.collection.spi.PersistentBag�<a#:rA�\0L\0bagq\0~\0L\0providedCollectiont\0Ljava/util/Collection;xr\09org.hibernate.collection.spi.AbstractPersistentCollection3��J<�F\0Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0elementRemovedZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/lang/Object;L\0ownerq\0~\0\rL\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshott\0Ljava/io/Serializable;xp\0����\0\0\0\0sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0q\0~\0t\0.vn.helmetshop.helmetshop.domain.User.feedbacksppppt\0Đoànt\0Tàisq\0~\0\n\0����\0\0\0\0q\0~\0q\0~\0t\0+vn.helmetshop.helmetshop.domain.User.ordersppppt\0<$2a$10$R5CWdiixinbkJL/2V7dvQejbLezZmG9kNr1pvOXmAVLHv1scHcuICt\0\n0937797443t\0LOCALsr\0$vn.helmetshop.helmetshop.domain.Role\�b�=O���\0J\0idL\0descriptionq\0~\0L\0nameq\0~\0L\0usersq\0~\0xp\0\0\0\0\0\0\0t\0ADMINt\0ADMINsq\0~\0\n\0����\0\0\0\0sq\0~\0\0\0\0\0\0\0\0q\0~\0t\0*vn.helmetshop.helmetshop.domain.Role.usersppppsr\0java.sql.Timestamp&\�\�S�e\0I\0nanosxr\0java.util.Datehj�KYt\0\0xpw\0\0��L��x-\��\0');
/*!40000 ALTER TABLE `spring_session_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4qu1gr772nnf6ve5af002rwya` (`role_id`),
  CONSTRAINT `FK4qu1gr772nnf6ve5af002rwya` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Lệ Thủy,Quảng Binhg','1734884120982-Screenshot 2024-04-09 212519.png',NULL,'user@gmai.com','Tài','Đoàn','12345678','0937797443','LOCAL','2024-12-22 23:15:20.981000',1),(2,'Quang Binh - Le Thuy','1734920144771-default-google.png',NULL,'22521271@gm.uit.edu.vn','Đoàn','Tài','$2a$10$R5CWdiixinbkJL/2V7dvQejbLezZmG9kNr1pvOXmAVLHv1scHcuIC','0937797443','LOCAL','2024-12-23 09:15:44.768000',1),(3,NULL,'default-google.png',NULL,'nanh02465@gmail.com','Tài','Đoàn Công','SHOPHELMET',NULL,'GOOGLE',NULL,2),(4,'Bình Định','1734885147268-pngtree-circular-avatar-vector-illustration-male-people-person-male-vector-png-image_36446834.png',NULL,'user1@gmail.com','Thịnh','Lê Cường','$2a$10$zZZFV/bD5Or3uirVqOuQpOwdi068ZIQRgNllIxuGOhl5VWW3LPzwG','0937797443','LOCAL','2024-12-22 23:32:27.266000',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-04 20:29:55
