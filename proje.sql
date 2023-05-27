-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 27 May 2023, 16:45:06
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `proje`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_url` varchar(255) NOT NULL,
  `category_template` varchar(255) DEFAULT NULL,
  `category_seo` varchar(1500) NOT NULL,
  `category_order` int(11) NOT NULL DEFAULT '0',
  `category_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_url`, `category_template`, `category_seo`, `category_order`, `category_date`, `is_deleted`) VALUES
(1, 'Web Programlama', 'web', NULL, '{\"title\":\"Web Programlama\",\"description\":\"\"}', 0, '2022-08-10 10:27:36', 0),
(2, 'Veritabanı Yönetim Sistemi', 'database', NULL, '{\"title\":\"Veritaban\\u0131 Y\\u00f6netim Sistemi\",\"description\":\"\"}', 0, '2022-08-10 10:28:37', 0),
(14, 'deneme', 'fdf', NULL, '{\"title\":\"dfg\",\"description\":\"fdg\"}', 0, '2022-08-23 06:12:17', 1),
(15, 'deneme', 'deneme', NULL, '{\"title\":\"\",\"description\":\"\"}', 0, '2022-08-23 07:38:04', 1),
(6, 'Network', 'network', NULL, '{\"title\":\"Network\",\"description\":\"\"}', 0, '2022-08-16 12:32:18', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_user_id` int(11) NOT NULL,
  `comment_post_id` int(11) NOT NULL,
  `comment_name` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` int(11) NOT NULL DEFAULT '1',
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_user_id`, `comment_post_id`, `comment_name`, `comment_email`, `comment_content`, `comment_status`, `comment_date`, `is_deleted`) VALUES
(17, 1, 6, 'fatma', 'fatma@gmail.com', 'Veritabanı hakkında oldukça faydalı bir blog!', 1, '2022-08-16 12:26:03', 0),
(8, 1, 7, 'fatma', 'fatma@gmail.com', 'Harika bir blog!', 1, '2022-08-12 10:40:49', 0),
(20, 1, 7, 'aslann', 'fare@gmail.com', 'deneme', 1, '2022-08-19 10:27:04', 1),
(25, 1, 7, 'fatma', 'fatmabrl11@gmail.com', 'denemee', 1, '2022-08-23 07:46:45', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_subject` varchar(255) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_read` int(11) NOT NULL DEFAULT '0',
  `contact_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `contact`
--

INSERT INTO `contact` (`id`, `contact_name`, `contact_email`, `contact_phone`, `contact_subject`, `contact_message`, `contact_read`, `contact_date`) VALUES
(1, 'dsg', 'deneme@gmail.com', '', 'deneme', 'denemee', 1, '2022-08-10 07:32:11'),
(39, 'Fatma Birel', 'fare@gmail.com', '0545 549 54 80', 'sada', 'ds', 0, '2022-08-19 10:01:29'),
(8, 'deneme', 'deneme@gmail.com', '', 'deneme', 'deneme', 1, '2022-08-10 07:35:31'),
(37, 'Fatma Birel', 'fare@gmail.com', '0545 549 54 80', 'XSS Açığı', '&lt;script&gt; alert(\'Yakalandın\') &lt;/script&gt;', 1, '2022-08-18 12:15:50'),
(12, 'dzsf', 'deneme@gmail.com', 'dsgd', 'dsgsd', 'dsgsd', 0, '2022-08-10 07:36:49'),
(13, 'dzsf', 'deneme@gmail.com', 'dsgd', 'dsgsd', 'dsgsd', 0, '2022-08-10 07:36:50'),
(14, 'dzsf', 'deneme@gmail.com', 'dsgd', 'dsgsd', 'dsgsd', 0, '2022-08-10 07:36:51'),
(45, 'Fatma Birel', 'fatmabrl11@gmail.com', 'dsfds', 'fzgz', 'fzdg', 0, '2022-08-23 11:33:26'),
(44, 'Fatma Birel', 'fatmabrl11@gmail.com', 'dsfds', 'fzgz', 'fzdg', 0, '2022-08-23 11:33:03'),
(43, 'Fatma Birel', 'aslan@gmail.com', 'dsfds', 'sdfds', 'dsfsd', 0, '2022-08-23 08:01:50'),
(42, 'Fatma Birel', 'aslan@gmail.com', 'dsfds', 'sdfds', 'dsfsd', 0, '2022-08-23 08:01:16'),
(41, 'dsdf', 'fatmabrl11@gmail.com', 'dz', 'zgd', 'zgfd', 0, '2022-08-23 08:00:24'),
(46, 'Fatma Birel', 'fatmabrl11@gmail.com', 'dsfds', 'fzgz', 'fzdg', 0, '2022-08-23 11:33:30'),
(47, 'Fatma Birel', 'fatmabrl11@gmail.com', 'dsfds', 'fzgz', 'fzdg', 0, '2022-08-23 11:33:31'),
(48, 'Fatma Birel', 'fatmabrl11@gmail.com', 'dsfds', 'fzgz', 'fzdg', 0, '2022-08-23 11:33:31'),
(49, 'Fatma Birel', 'fatmabrl11@gmail.com', 'dsfds', 'fzgz', 'fzdg', 0, '2022-08-23 11:33:31'),
(50, 'Fatma Birel', 'fatmabrl11@gmail.com', 'dsfds', 'fzgz', 'fzdg', 0, '2022-08-23 11:33:32'),
(51, 'Fatma Birel', 'fatmabrl11@gmail.com', 'dsfds', 'fzgz', 'fzdg', 0, '2022-08-23 11:33:32'),
(52, 'Fatma Birel', 'fatmabrl11@gmail.com', 'dsfds', 'fzgz', 'fzdg', 1, '2022-08-23 11:33:32'),
(53, 'Fatma Birel', 'fatmabrl11@gmail.com', 'dsfds', 'fzgz', 'fzdg', 0, '2022-08-23 11:33:32'),
(54, 'Fatma Birel', 'fatmabrl11@gmail.com', 'dsfds', 'fzgz', 'fzdg', 0, '2022-08-23 11:33:32'),
(55, 'sdfdsf', 'fatmabrl11@gmail.com', 'ndafn', 'jdsfkdsf', 'dsjfsd', 1, '2022-08-23 11:35:27');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(255) NOT NULL,
  `menu_content` text NOT NULL,
  `menu_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`id`, `menu_title`, `menu_content`, `menu_date`) VALUES
(1, 'rret', '[{\"title\":\"gr\",\"url\":\"tuuru\"}]', '2022-08-09 08:01:58'),
(2, 'rret', '[{\"title\":\"dg\",\"url\":\"dgz\"}]', '2022-08-09 08:02:53'),
(3, 'fzg', '[{\"title\":\"fdzg\",\"url\":\"zfg\"}]', '2022-08-09 08:03:58'),
(4, 'deneme', '[{\"title\":\"deneme\",\"url\":\"esfsd\"}]', '2022-08-09 08:05:19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  `page_seo` varchar(1000) NOT NULL,
  `page_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `page_title`, `page_url`, `page_content`, `page_seo`, `page_date`) VALUES
(1, 'JS Dersleri', 'javascript-dersleri', 'testscs', '{\"title\":\"ssss\",\"description\":\"\"}', '2022-08-10 11:46:26'),
(2, 'Yeni Dünya', 'seo-deneme', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '{\"title\":\"\",\"description\":\"\"}', '2022-08-10 12:42:13');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) NOT NULL,
  `post_url` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_categories` varchar(255) NOT NULL,
  `post_short_content` text NOT NULL,
  `post_status` int(11) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_seo` varchar(1000) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `post_url`, `post_content`, `post_categories`, `post_short_content`, `post_status`, `post_date`, `post_seo`, `is_deleted`) VALUES
(5, 'Robotik\'te Yapay Zeka\'nın Önemi', 'yapayzeka', 'Universal Robots, UR+ platformuyla insan-teknoloji etkileşimini daha kolay hale getirerek herkes için ulaşılabilir kılıyor. Bir parçayı almak ve başka bir yere bırakmak için programlanan kolaboratif robota yapay zekâ katarak çok daha karmaşık işler ve uygulamalar yapılabilir. Örneğin; bir kutu içindeki farklı boyutlardaki rastgele konumlanan parçalar arasından önceden belirlenen parçalar kolaboratif robotlara entegre kamera sistemleri ile seçilebilir, farklı boyut ve şekildeki parçalar Kuvvet/Tork sensörleriyle algılanabilir ve hatta bu iki vb. daha özelliği aynı anda kullanarak farklı üretim amaçları gerçekleştirilebilir.Universal Robots’un kolaboratif robotlarıyla entegre yapay zekâ ile özellikle insan sezgisine yoğun olarak ihtiyaç duyulan, hassas ve karmaşık üretim gerektiren alanlarda azalan çevrim süresi ve artan verimlilik sağlanıyor. Böylece, insan daha yaratıcı süreçlerin merkezine konumlanıyor. Robot Tutucu (gripper) vb. yardımcı ekipmanlar, aksesuarlardan kamera sistemleri ve yazılıma kadar ihtiyaç duyulan birçok çevre ekipmanı bulunduran, yapay zekânın farklı unsurlarını içeren UR+ platformunda ‘Tak-Çalıştır ve Üretime Başla’ konsepti kullanıcılara sunuluyor. Bu sayede, kullanıcıların UR+ platformundan yararlanarak entegrasyon ve kurulumu hızlandırabilmesine olanak sağlanıyor.', '3', 'Artırılmış gerçeklik ve sesli komut uygulamaları hayatın çeşitli alanlarında kullanılabiliyor hale geldi. İnsan zekâsını ve duyusunu temsil eden yapay zekâ alanındaki heyecan verici gelişmeler, endüstriyel süreçleri de büyük bir dönüşüme hazırlıyor. Yapay zekâ robot teknolojisinde çok çeşitli uygulamalara imkân tanıyor. İnsanla iş birliğine dayalı kolaboratif robotları ve yenilikçi UR+ çözümleriyle tüm sektörlere çözüm sağlayan Universal Robots, ileri teknoloji yapay zekâ ile üretimde verimliliği artırıyor. Yapay zekâ teknolojileri, robotların gerçek dünyayı algılamasını ve ihtiyaca cevap verebilmesini ifade ediyor. Şirketlerin robot görevlerini optimize etmesine ve performansını iyileştirmesine yardımcı oluyor.', 1, '2022-08-11 09:32:11', '{\"title\":\"Robotik\'te Yapay Zeka\'n\\u0131n \\u00d6nemi\",\"description\":\"yapayzeka\"}', 0),
(6, 'MySQL Nedir? Niçin Kullanılır?', 'veritabani', 'MySQL bir ilişkisel veri tabanı olarak, 1995 yılında kullanıma sürülen en popüler açık kaynaklı ilişkisel veri tabanı yönetim sisteminden biridir. SQL, MySQL\'in çekirdeğini oluşturur. İsmini \'SQL\' ile Michael Widenius\'un kızının adının (My) birleşiminden alır.\r\n\r\nMySQL serbestçe kullanılabilen bir veri tabanı sistemidir. Ancak, gelişmiş işlevleri kullanabileceğiniz birkaç ücretli sürüm de bulunmaktadır. MySQL, Microsoft SQL Server ve Oracle veri tabanı vb. diğer veri tabanı yazılımlarına kıyasla kullanımı kolaydır. Herhangi bir programlama diliyle kullanılabilir.\r\nMySQL, meta verilerinizi tanımlamak ve yönetmek için Linux, Windows, Unix ve bir bilgi şeması gibi birden fazla platformda çalışabilir. Yerel sisteminize hatta sunucuya bile yükleyebilirsiniz. Gerçekten esnek, ölçeklenebilir, hızlı ve güvenilir bir çözümdür.Güçlü bir veri tabanı yönetim sistemi olan MySQL veri tabanı gerektiren hemen hemen her ortamda rahatlıkla kullanılabilir. Ama özellikle web sunucularında en çok kullanılan veritabanıdır, asp, php gibi birçok web programlama dili ile kullanılabilir.\r\n\r\nMySQL ve SQL aynı değildir. MySQL\'deki SQL, Structured Query Language anlamına gelir. Veri tabanı ile etkileşime geçmek için kullanılan standart dildir. Ayrıca MySQL, bilgisayardaki farklı tablolarda depolanan veritabanını yönetmeye yardımcı olan ilişkisel bir veri tabanı yönetim sistemidir. İlişkisel veri tabanı sistemleri (RDBMS), verileri masaüstü veri tabanı programları üzerinden manipüle etmek için çok daha iyi performans sağlar. SQL ifadeleri sunucuya belirli işlemleri yapmayı öğretir:\r\nVeri sorgusu: Mevcut veritabanından belirli bilgileri ister.\r\nVeri manipülasyonu: Veriyi, değerleri veya görselleri değiştirmek için ekleme yapar, siler, değiştirir, sıralar ve benzeri işlemler yapar.\r\nVeri kimliği: Veri tiplerini tanımlar, örneğin sayısal veriyi tamsayılara değiştirmek gibidir. Bu ayrıca bir şemayı veya veritabanında ki her tablonun ilişkisini tanımlamayı da içerir.\r\nVeri erişim kontrolü: Veriyi korumak için güvenlik teknikleri sağlar, bu kimin görebileceğine karar verme veya veritabanında depolanan herhangi bir bilgiyi kullanmayı da içerir.', '2', 'MySQL Nedir? MySQL bir ilişkisel veri tabanı olarak, 1995 yılında kullanıma sürülen en popüler açık kaynaklı ilişkisel veri tabanı yönetim sisteminden biridir. SQL, MySQL\'in çekirdeğini oluşturur. İsmini \'SQL\' ile Michael Widenius\'un kızının adının (My) birleşiminden alır.', 1, '2022-08-12 06:01:24', '{\"title\":\"MySQL Nedir? Ni\\u00e7in Kullan\\u0131l\\u0131r?\",\"description\":\"veritaban\\u0131\"}', 0),
(7, 'PHP Nedir? Neden kullanılır?', 'php-nedir', 'PHP kodları PHP işleme modülü bulunan bir web sunucusu tarafından yorumlanır ve çıktı olarak web sayfası üretilir. Bu kodlar veriyi işlemek üzere harici bir dosyaya kaydedilerek çağırılabildiği gibi doğrudan HTML kodunun içine de gömülebilir. PHP zaman içinde bir komut satırı arayüzü sunacak şekilde evrilmiştir, PHP-GTK yardımıyla grafiksel masaüstü uygulaması geliştirmek de mümkündür.\r\n\r\nPHP özgür bir yazılım olup PHP Lisansı ile dağıtılmaktadır. Bu lisans kullanım şartları kısmında GNU Genel Kamu Lisansı ile örtüşmese de, PHP tüm web sunuculara ve hemen hemen tüm işletim sistemi ve platforma ücretsiz olarak yüklenebilir.\r\n\r\nPHP, özellikle mysql veritabanıyla birlikte ve Linux işletim sistemi altında iyi bir performans sergilemektedir. C/C++ diline olan benzerliği nedeniyle bu dili önceden bilenlerin PHP öğrenmesi oldukça kolaydır. Kolay öğrenilmesi ve hızlı performansı nedeniyle Facebook, YouTube, Yahoo, Wikipedia ve OGame gibi dünyaca ünlü sitelerin yazımında kullanılmasına rağmen, kodların kolay anlaşılabilmesi açısından ve birden fazla programcı tarafından sürekli geliştirilmesi gerekli büyük projelerde Java nın kullanılması daha uygun görülmektedir. Ancak sadece web tabanlı yazılımın geliştirilmesi söz konusu olduğunda Java ya göre öğrenilmesinin daha kolay olması nedeniyle genellikle PHP tercih edilmektedir. PHP, web tasarımında önemli kolaylıklar sağlasa da 2005 te Google in AJAX kullanmaya başlamasından sonra tek başına öğrenilmesi yeterli olmamakta ve AJAX’ı öğrenmek için gerekli JavaScript, XML, HTML, (ve CSS) ile birlikte bir bütün oluşturabilmektedir.', '1', 'PHP (Hypertext Preprocessor), yaygın olarak kullanılan web tabanlı ve açık kaynak kodlu bir programlama dilidir. Sunucu tarafında çalışan ve HTML\'e gömülebilen PHP, özellikle web uygulamaları geliştirme ve dinamik web sayfaları hazırlamak için kullanılır.', 1, '2022-08-12 06:02:38', '{\"title\":\"PHP Nedir? Neden kullan\\u0131l\\u0131r?\",\"description\":\"php nedir neden kullan\\u0131l\\u0131r\"}', 0),
(11, 'HTMLf', 'hg', 'hfg', '2', 'hhg', 1, '2022-08-23 07:30:03', '{\"title\":\"\",\"description\":\"\"}', 1),
(12, 'bc', 'bc', 'fxg', '2', 'cvb', 1, '2022-08-23 07:31:24', '{\"title\":\"\",\"description\":\"\"}', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE IF NOT EXISTS `post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 4, 3),
(4, 1, 3),
(5, 4, 3),
(6, 4, 3),
(7, 4, 3),
(8, 4, 3),
(9, 4, 3),
(10, 2, 4),
(11, 2, 5),
(12, 2, 6),
(13, 2, 7),
(14, 2, 8),
(15, 2, 9),
(16, 4, 10),
(17, 4, 7),
(18, 4, 11),
(19, 4, 8),
(20, 5, 12),
(21, 6, 7),
(22, 7, 13),
(23, 7, 8),
(24, 7, 0),
(25, 6, 0),
(26, 5, 0),
(27, 8, 0),
(28, 9, 0),
(29, 10, 0),
(30, 11, 0),
(31, 12, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reference`
--

DROP TABLE IF EXISTS `reference`;
CREATE TABLE IF NOT EXISTS `reference` (
  `reference_id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_title` varchar(255) NOT NULL,
  `reference_url` varchar(255) NOT NULL,
  `reference_content` text NOT NULL,
  `reference_tags` varchar(1500) NOT NULL,
  `reference_demo` varchar(255) NOT NULL,
  `reference_image` varchar(255) NOT NULL,
  `reference_categories` varchar(255) NOT NULL,
  `reference_seo` varchar(500) NOT NULL,
  `reference_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `reference`
--

INSERT INTO `reference` (`reference_id`, `reference_title`, `reference_url`, `reference_content`, `reference_tags`, `reference_demo`, `reference_image`, `reference_categories`, `reference_seo`, `reference_date`, `is_deleted`) VALUES
(3, 'PHP', 'php', 'PHP ile ilgili yaptığım kodlamaları görebilirsiniz.', 'Php, MySQL', '', 'php_4101.png', '1', '{\"title\":\"PHP\",\"description\":\"\"}', '2022-08-16 07:08:43', 0),
(4, 'Yapay Zeka ve Siber Güvenlik', 'yapayzeka', 'Bu yazıda hem yapay zeka hem de siber güvenlik hakkında bilgi bulabilirsiniz', 'python, php', 'https://www.kaspersky.com.tr/resource-center/definitions/ai-cybersecurity', 'yapayzeka_1829.png', '5', '{\"title\":\"Yapay Zeka ve Siber G\\u00fcvenlik\",\"description\":\"yapayzeka\"}', '2022-08-16 12:54:34', 0),
(8, 'denemee', 'gdg', 'dgg', 'sgfs', 'fsgf', 'gdg_9138.png', '3', '{\"title\":\"g\",\"description\":\"g\"}', '2022-08-23 06:41:55', 1),
(9, 'dosya', 'cvb', 'b', 'vcb', 'fdxg', 'cvb_2182.png', '6', '{\"title\":\"cvb\",\"description\":\"cvb\"}', '2022-08-23 07:25:59', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reference_categories`
--

DROP TABLE IF EXISTS `reference_categories`;
CREATE TABLE IF NOT EXISTS `reference_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_url` varchar(255) NOT NULL,
  `category_template` varchar(255) DEFAULT NULL,
  `category_seo` varchar(1500) NOT NULL,
  `category_order` int(11) NOT NULL DEFAULT '0',
  `category_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `reference_categories`
--

INSERT INTO `reference_categories` (`category_id`, `category_name`, `category_url`, `category_template`, `category_seo`, `category_order`, `category_date`) VALUES
(1, 'Web Tasarım', 'web', NULL, '{\"title\":\"Web Tasar\\u0131m\",\"description\":\"\"}', 0, '2022-08-16 06:10:42'),
(2, 'Mobil Uygulama', 'mobil-uygulama', NULL, '{\"title\":\"Mobil Uygulama\",\"description\":\"\"}', 0, '2022-08-16 06:12:14'),
(3, 'Siber Güvenlik', 'siber-guvenlik', NULL, '{\"title\":\"Siber G\\u00fcvenlik\",\"description\":\"\"}', 0, '2022-08-16 06:12:21'),
(5, 'Yapay Zeka', 'yapayzeka', NULL, '{\"title\":\"Yapay Zeka\",\"description\":\"\"}', 0, '2022-08-18 05:49:14'),
(6, 'Network', 'network', NULL, '{\"title\":\"Network\",\"description\":\"\"}', 0, '2022-08-18 10:24:19');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reference_images`
--

DROP TABLE IF EXISTS `reference_images`;
CREATE TABLE IF NOT EXISTS `reference_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_reference_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `image_content` text,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `reference_images`
--

INSERT INTO `reference_images` (`image_id`, `image_reference_id`, `image_url`, `image_content`) VALUES
(1, 3, 'fxg_7088.jfif', NULL),
(2, 3, 'fxg_9554.png', NULL),
(8, 4, 'yapayzeka_8914.png', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `suggestions`
--

DROP TABLE IF EXISTS `suggestions`;
CREATE TABLE IF NOT EXISTS `suggestions` (
  `suggestion_id` int(11) NOT NULL AUTO_INCREMENT,
  `suggestion_title` varchar(255) NOT NULL,
  `suggestion_content` text NOT NULL,
  `suggestion_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `suggestion_user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`suggestion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `suggestions`
--

INSERT INTO `suggestions` (`suggestion_id`, `suggestion_title`, `suggestion_content`, `suggestion_date`, `suggestion_user`) VALUES
(1, 'eef', 'fzgd', '2022-08-23 10:16:54', 0),
(2, 'Deneme', 'Bakım onarısı', '2022-08-23 10:27:55', 0),
(3, 'Deneme', 'Deneme', '2022-08-23 10:31:47', 41),
(4, 'Aslan deneme', '123', '2022-08-23 10:32:50', 43),
(5, 'testttttttttt', 'tttttttttttttttttttttttttt', '2022-08-23 11:46:57', 41),
(6, 'testtt', 'okay &lt;script&gt;alert(1)&lt;/script&gt;', '2022-08-23 11:47:15', 41),
(7, 'fffh', 'gfhghfghf', '2022-08-23 11:48:19', 41),
(8, 'Öneri', 'Harika bir önerim var!', '2022-08-26 15:24:21', 43);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) NOT NULL,
  `tag_url` varchar(255) NOT NULL,
  `tag_seo` varchar(1000) NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_name`, `tag_url`, `tag_seo`, `is_deleted`) VALUES
(7, 'deneme\r', 'deneme', '', 0),
(8, 'php\r', 'php', '', 0),
(9, 'etiket', 'etiket', '', 0),
(10, 'lorem ipsum\r', 'lorem-ipsum', '', 0),
(11, 'deneme içerik\r', 'deneme-icerik', '', 1),
(12, 'css', 'css', '', 1),
(13, 'animal', 'animal', '{\"title\":\"deneme\"}', 1),
(16, 'tag name', 'tag-name', '{\"title\":\"\"}', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_url` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_rank` int(11) NOT NULL DEFAULT '3',
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_url`, `user_email`, `user_password`, `user_rank`, `user_date`, `is_deleted`) VALUES
(37, 'fare', 'fare', 'fare@gmail.com', '$2y$10$LaZQZUwaMQAidvDeW/hLperkERYq9VVyDtbWDwsPd9IxTCc0qbjNm', 1, '2022-08-18 12:06:36', 0),
(36, 'kedi', 'kedi', 'kedi@gmail.com', '$2y$10$uVPMtodhSJ62UxCDX470kuirVYbrCV0/eKOoiTavJQsFd9WngQPLC', 1, '2022-08-18 08:14:49', 0),
(41, 'fatma', 'fatma', 'fatmabrl11@gmail.com', '$2y$10$iFF47tbhTo8xkusyiUH1Qey.B71gTfawuFmZLVSKJa8a2/CzKQoRC', 1, '2022-08-18 16:44:28', 0),
(42, 'ari', 'ari', 'ari@gmail.com', '$2y$10$bfR.34kZaeMHfYGnkSBkG..rb6EELqezOnEVauBGe9qM0WHXj.K2y', 3, '2022-08-19 05:57:55', 1),
(43, 'aslan', 'aslan', 'fatmabrl11@gmail.com', '$2y$10$l80Y5d0aOYXg9bGX94ZpCeXo8Av4OMOBX4NgZ1h.9DmQs3tU0jkXe', 3, '2022-08-19 05:59:03', 0),
(44, 'aslann', 'aslann', 'fare@gmail.com', '$2y$10$Ckft03pjclIVUyIX8v9DYOdt3tTYyXu3.02Jw9LgEeNZhksc.lZme', 3, '2022-08-19 06:00:51', 0),
(53, 'deneme', 'deneme', 'deneme2@gmail.com', '$2y$10$xCkbZn6uuGP8Ldwv6SIyz.JgCim1yFKjbOFOVjknYMJyv3oROU30u', 3, '2022-08-23 10:04:44', 1),
(48, 'fareexx', 'fareexx', 'faree@gmail.com', '$2y$10$qJpTqhW9ExjGkXhAtcvfa.3EBEIsFLwnFAisfY72mcXvwN1QId33u', 3, '2022-08-23 08:10:49', 0),
(47, 'ddsg', 'ddsg', 'fare2@gmail.com', '$2y$10$g.1pPheGqZ0IOsITEda2l.Q0Ygs43si8mN4kZjWhCMe2Q/nXK6r9m', 3, '2022-08-19 07:42:49', 1),
(49, 'fatmaaa', 'fatmaaa', 'fareafa@gmail.com', '$2y$10$sgCJhbHJJJEifmkWV9yVPeXhgiMl66QVUQHrGXceMIhjJoojxq0Eq', 3, '2022-08-23 08:14:19', 0),
(50, 'denemedfdz', 'denemedfdz', 'fatmabvvzvrl11@gmail.com', '$2y$10$15kNWKVXM/F3dBm0ll1T/ug3RWVJJ9fWFacbM2OBASpMZk6ur1TXu', 3, '2022-08-23 08:18:24', 0),
(51, 'dfzdv', 'dfzdv', 'udemy.egitizfdvmvideolari@gmail.com', '$2y$10$lxnsv.W39TtPmXHNERNedegmhv/J.cOMMMHsSiTXNT2cJky8uv3/q', 3, '2022-08-23 08:19:06', 0),
(52, 'aslangf', 'aslangf', 'sinefdzk@gmail.com', '$2y$10$hxjLqJcE1FyxIiUj40WclOAFZ4bbz2OpCExZ5cDYroQR/ghezEQmG', 3, '2022-08-23 08:46:21', 0),
(54, 'admin', 'admin', 'admin@gmail.com', '$2y$10$PLxd/CzxmgnZbkmeyLKZvepSey2VkmgRTg6ou6V48Mvxg5BwlG7T.', 1, '2022-08-23 17:49:59', 0),
(55, 'fate', 'fate', 'fate@gmail.com', '$2y$10$Lv6VSEF1XaddHnnLil8iRexlzsq2SERzs0K9ztLN2AT9XQzfMn.qy', 3, '2023-05-27 16:16:53', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE IF NOT EXISTS `user_profile` (
  `user_profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_profile_content` text NOT NULL,
  PRIMARY KEY (`user_profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
