-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 05, 2022 lúc 12:44 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_phim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `status`, `slug`, `position`) VALUES
(2, 'Phim Lẻ', 'Phim lẻ cập nhật hằng ngày', 1, 'phim-le', 1),
(4, 'Phim Bộ', 'Phim bộ cập nhật hằng ngày', 1, 'phim-bo', 5),
(5, 'Phim Hoạt Hình', 'Phim hoạt hình cập nhật nhanh nhất', 1, 'phim-hoat-hinh', 4),
(6, 'Phim Mới', 'Phim mới cập nhật nhanh nhất', 1, 'phim-moi', 2),
(9, 'Phim Chiếu Rạp', 'Phim chiếu rạp cập nhật nhanh nhất', 1, 'phim-chieu-rap', 0),
(11, 'Phim Thuyết Minh', 'Phim thuyết minh mới nhất', 1, 'phim-thuyet-minh', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `countries`
--

INSERT INTO `countries` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Việt Nam', 'Phim Việt Nam cập nhật nhanh nhất', 1, 'viet-nam'),
(2, 'Mỹ', 'Phim Mỹ cập nhật hằng ngày', 1, 'my'),
(3, 'Anh', 'Phim Anh cập nhật nhanh nhất', 1, 'anh'),
(4, 'Nhật Bản', 'Phim Nhật Bản cập nhật nhanh nhất', 1, 'nhat-ban'),
(5, 'Hàn Quốc', 'Phim Hàn Quốc cập nhật nhanh nhất', 1, 'han-quoc'),
(6, 'Trung quốc', 'Phim Trung Quốc cập nhật nhanh nhất', 1, 'trung-quoc'),
(7, 'Thái Lan', 'Phim Thái Lan cập nhật nhanh nhất', 1, 'Thái Lan'),
(8, 'Đài Loan', 'Phim Đài Loan cập nhật nhanh nhất', 1, 'Đài Loan'),
(9, 'Singapo', 'phim singapo', 1, 'Singapo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `linkphim` varchar(255) NOT NULL,
  `episode` varchar(11) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `episodes`
--

INSERT INTO `episodes` (`id`, `movie_id`, `linkphim`, `episode`, `updated_at`, `created_at`) VALUES
(4, 27, '<iframe width=\"100%\" height=\"500\" src=\"https://www.youtube.com/embed/AcTVAW-Hh6E\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '1', '2022-04-17 13:33:35', '2022-04-17 13:33:35'),
(5, 27, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AcTVAW-Hh6E\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2', '2022-04-17 13:33:44', '2022-04-17 13:33:44'),
(6, 27, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/AcTVAW-Hh6E\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '3', '2022-04-17 13:33:53', '2022-04-17 13:33:53'),
(8, 25, '<iframe width=\"885\" height=\"498\" src=\"https://www.youtube.com/embed/V4tAtp-TyzQ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'FullHD', '2022-04-22 20:52:54', '2022-04-22 20:52:54'),
(9, 16, '<iframe width=\"885\" height=\"498\" src=\"https://www.youtube.com/embed/PiT-3insZaM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '1', '2022-04-22 21:09:50', '2022-04-22 21:09:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Hành Động', 'Phim hành động cập nhật nhanh nhất', 1, 'hanh-dong'),
(3, 'Hài Hước', 'Phim hài hước cập nhật hằng ngày', 1, 'hai-huoc'),
(4, 'Lãng Mạn', 'Phim lãng mạn cập nhật nhanh nhất', 1, 'lang-man'),
(5, 'Viễn Tưởng', 'Phim viễn tưởng cập nhật nhanh nhất', 1, 'vien-tuong'),
(6, 'Võ Thuật', 'Phim võ thuật cập nhật nhanh nhất', 1, 'vo-thuat'),
(7, 'Kinh Dị', 'Phim kinh dị cập nhật nhanh nhất', 1, 'kinh-di'),
(8, 'Tâm Lý', 'Phim tâm lý cập nhật nhanh nhất', 0, 'tam-ly');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thoiluong` varchar(50) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `thuocphim` varchar(10) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `phim_hot` int(11) NOT NULL,
  `resolution` int(11) NOT NULL DEFAULT 0,
  `name_eng` varchar(255) NOT NULL,
  `phude` int(11) NOT NULL DEFAULT 0,
  `season` int(11) NOT NULL DEFAULT 0,
  `ngaytao` varchar(50) DEFAULT NULL,
  `ngaycapnhat` varchar(50) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `topview` int(11) DEFAULT NULL,
  `trailer` varchar(100) DEFAULT NULL,
  `sotap` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`id`, `title`, `thoiluong`, `description`, `status`, `image`, `slug`, `category_id`, `thuocphim`, `genre_id`, `country_id`, `phim_hot`, `resolution`, `name_eng`, `phude`, `season`, `ngaytao`, `ngaycapnhat`, `year`, `tags`, `topview`, `trailer`, `sotap`) VALUES
(3, 'Người Nhện: Không còn nhà', '', 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha', 2, 'phimle', 1, 1, 1, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 'THỜI ĐẠI MA PHÁP', '', 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap', 5, 'phimle', 5, 4, 0, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', '', 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 5, 'phimbo', 1, 2, 0, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 'HUYỀN THOẠI GAME THỦ', '', 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 5, 'phimle', 3, 4, 0, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 'Người Nhện: Không còn nhà', '', 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha', 2, 'phimle', 1, 1, 0, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'THỜI ĐẠI MA PHÁP', '', 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap', 5, 'phimbo', 5, 4, 0, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', '', 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 5, 'phimle', 1, 2, 0, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'HUYỀN THOẠI GAME THỦ', '', 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 5, 'phimbo', 3, 4, 0, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 'Người Nhện: Không còn nhà', '', 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha', 2, 'phimle', 1, 1, 0, 1, 'No way home(2022)', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 'THỜI ĐẠI MA PHÁP', '', 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap', 5, 'phimle', 5, 4, 1, 0, 'thoi-dai-ma-phap', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', '', 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 5, 'phimle', 1, 2, 0, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 'HUYỀN THOẠI GAME THỦ', '', 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 2, 'phimbo', 1, 1, 1, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 'Người Nhện: Không còn nhà', '', 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha', 2, 'phimle', 1, 1, 1, 0, 'Spider-Man: No Way Home (2021)', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 'THỜI ĐẠI MA PHÁP', NULL, 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap', 5, 'phimbo', 5, 4, 0, 0, 'power', 0, 0, NULL, '2022-04-22 21:09:27', NULL, NULL, NULL, NULL, 1),
(17, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', '', 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 2, 'phimle', 1, 1, 1, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 'HUYỀN THOẠI GAME THỦ', '', 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 2, 'phimbo', 1, 1, 1, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 'HUYỀN THOẠI GAME THỦ', '', 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 4, 'phimle', 4, 7, 1, 0, 'No Game, No Life', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(20, 'One Punch Man', '', 'one punch man c Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub Superman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đ', 1, 'thoi-dai-ma-phap6341.jpg', 'one-punch-man', 4, 'phimbo', 6, 5, 1, 0, 'one-punch-man', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(22, 'D4DJ: FIRST MIX', '50 phút/1 tập', 'D4DJ: First Mix, D4DJ First Mix, Dig Delight Direct Drive DJ 2020 Tập 11 Anime HD Vietsub\r\nD4DJ: First Mix, D4DJ First Mix, Dig Delight Direct Drive DJ 2020 Anime', 1, 'd4dj-first-mix-61500-thumbnail6547.jpg', 'd4dj-first-mix', 5, 'phimbo', 3, 4, 1, 5, 'D4DJ First Mix, Dig Delight Direct Drive DJ (2020)', 1, 0, NULL, '2022-04-06 20:55:34', '2019', NULL, 0, '2v4fIUF7jMo', 1),
(23, 'No Game, No Life (2015)', '50 phút/1 tập', 'gdhh ghđheh hhhhh fgdhdfhdh fhdhdhd fgdfd dfdfdhs dgdgd dggrgr grdggd rted', 1, 'nogame9061.jpg', 'no-game-no-life-2015', 11, 'phimle', 3, 3, 1, 5, 'No Game, No Life (2015)', 0, 0, NULL, '2022-04-03 15:56:54', '2022', NULL, 0, 'quj8sK3Phh8', 1),
(24, 'MA TRẬN: HỒI SINH', NULL, 'Ma Trận: Hồi Sinh, The Matrix Resurrections 2021 HD Vietsub + TM\r\nMa Trận: Hồi Sinh - The Matrix Resurrections 2021 Quay Trở Lại Một Thế Giới Của Hai Thực Tại: Một, Cuộc Sống Hàng Ngày; Khác, Những Gì Nằm Sau Nó. Để Tìm Hiểu Xem Thực Tế Của Anh Ta Có Phải Là Một Công Trình Hay Không, để Thực Sự Hiểu Rõ Bản Thân Mình, Anh Anderson Sẽ Phải Chọn Theo Dõi Con Thỏ Trắng Một Lần Nữa. Ma Trận: Hồi Sinh là phần phim tiếp theo rất được trông đợi của loạt phim “Ma Trận” đình đám, đã góp phần tái định nghĩa thể loại phim khoa học viễn tưởng. Phần phim mới nhất này đón chào sự trở lại của cặp đôi Keanu Reeves và Carrie-Anne Moss với vai diễn biểu tượng đã làm nên tên tuổi của họ, Neo và Trinity. Ngoài ra, phim còn có sự góp mặt của dàn diễn viên đầy tài năng gồm Yahya Abdul-', 1, '61bfe08e7b5336675.jpg', 'ma-tran-hoi-sinh', 9, 'phimle', 4, 9, 1, 2, 'The Matrix Resurrections (2021)', 1, 0, NULL, '2022-04-03 15:16:16', '2022', NULL, 1, NULL, 1),
(25, 'Chú Chó Lulu – Dog', '133 phút', 'Chú Chó Lulu - Dog, Dog 2022 Full\r\nHai cựu binh sĩ Biệt động quân được ghép đôi trái ý muốn của họ trong chuyến đi đường đời. Briggs (Channing Tatum) và Lulu (một chú chó Malinois của Bỉ) chạy đua xuống Bờ biển Thái Bình Dương để đến dự đám tang của một người lính đúng giờ.', 1, '62371f2a1d5772456.jpg', 'chu-cho-lulu-–-dog', 9, 'phimle', 4, 2, 1, 0, 'Dog', 0, 0, NULL, '2022-04-18 14:36:24', '2022', 'dongphim,dongphym,vtv16, vuviphim, vietsubtv, vtvgiaitri', 1, 'V4tAtp-TyzQ', 1),
(26, 'Phi Vụ Đen - Ánh Sáng Đen', '108 phút', 'Phi Vụ Đen - Ánh Sáng Đen Blacklight Travis Block, một đặc vụ chính phủ bóng tối, người chuyên loại bỏ các đặc vụ có vỏ bọc đã bị vạch trần, phát hiện ra một âm mưu chết người trong hàng ngũ của chính mình, những người đạt đến các cấp cao nhất của quyền lực.', 1, 'poster_pvd_3_1_4315.jpg', 'phi-vu-den-anh-sang-den', 9, 'phimle', 5, 2, 1, 5, 'Blacklight (2022)', 0, 0, '2022-03-24 08:54:29', '2022-04-03 15:13:12', NULL, 'Phi Vụ Đen - Ánh Sáng Đen phimmoi.net, Phi Vụ Đen - Ánh Sáng Đen full hd vietsub, xem phim Phi Vụ Đen - Ánh Sáng Đen,phim Blacklight vietsub,Phi Vụ Đen - Ánh Sáng Đen bilutv,bilutvzz,Phi Vụ Đen - Ánh Sáng Đen phimmoi,phimmoizz,zphimmoi,phimmoii,phimmoiizz,ephimmoi,Phi Vụ Đen - Ánh Sáng Đen motphim,Phi Vụ Đen - Ánh Sáng Đen phimbathu,Phi Vụ Đen - Ánh Sáng Đen khoaitv, bongngo,Blacklight xemphimplus,zingtv, hdonline, phim3s, xemphimgi, banhtv, Phi Vụ Đen - Ánh Sáng Đen dongphim,dongphym,vtv16, vuviphim, vietsubtv, vtvgiaitri,Phi Vụ Đen - Ánh Sáng Đen youtube,phimnhanh,tvhay,khophimle,viethd,vphim,Phi Vụ Đen - Ánh Sáng Đen netflix,trangphim,Phi Vụ Đen - Ánh Sáng Đen fullphim,ssphim,phimgi,phephimz,phim99,vuviphimtv,Phi Vụ Đen - Ánh Sáng Đen motchill,bichill,,phim1080,luotphim,Phi Vụ Đen - Ánh Sáng Đen phimmoiplus,Phi Vụ Đen - Ánh Sáng Đen cam,Phi Vụ Đen - Ánh Sáng Đen thuyết minh,Phi Vụ Đen - Ánh Sáng Đen phụ đề,Phi Vụ Đen - Ánh Sáng Đen lồng tiếng,tải phim Phi Vụ Đen - Ánh Sáng Đen', 2, 'm7uGGw6rZxs', 1),
(27, 'Moon Knight (Phần 1) – Moon Knight (Season 1)', '50 phút/1 tập', 'Moon Knight (Phần 1) - Moon Knight (Season 1), Moon Knight (Season 1) 2022 Season 1\r\nMột cựu thủy quân lục chiến Hoa Kỳ, đang vật lộn với chứng rối loạn nhận dạng phân ly, được ban cho sức mạnh của một vị thần mặt trăng của Ai Cập. Nhưng anh ấy sớm phát hiện ra rằng những sức mạnh mới được tìm thấy này có thể vừa là một may mắn vừa là một lời nguyền cho cuộc đời đầy rắc rối của anh ấy.', 1, '62442caaf2a766055.jpg', 'moon-knight-phan-1-–-moon-knight-season-1', 4, 'phimbo', 8, 1, 1, 0, 'Moon Knight', 0, 0, '2022-03-31 17:36:02', '2022-04-18 14:29:38', '2022', 'Moon Knight (Phần 1) - Moon Knight (Season 1), Moon Knight (Season 1) 2022 Season 1', NULL, 'https://youtu.be/x7Krla_UxRg', 6),
(28, 'Chuyến Thăm Bất Ngờ – The Surprise Visit', '120 phút', 'Chuyến Thăm Bất Ngờ - The Surprise Visit, The Surprise Visit 2022 Full\r\nMột vụ cướp xảy ra sai lầm, khiến hai thanh niên nghiện ma túy phải đứng trước một quyết định khó khăn: từ bỏ, hoặc làm điều không tưởng.', 1, '6222cc2d644f05910.jpg', 'chuyen-tham-bat-ngo-–-the-surprise-visit', 2, 'phimle', 7, 1, 1, 0, 'The Surprise Visit', 0, 0, '2022-04-01 22:38:18', '2022-04-03 15:04:49', NULL, 'Chuyến Thăm Bất Ngờ - The Surprise Visit, The Surprise Visit 2022 Full\r\nMột vụ cướp xảy ra sai lầm, khiến hai thanh niên nghiện ma túy phải đứng trước một quyết định khó khăn: từ bỏ, hoặc làm điều không tưởng.', NULL, 'https://youtu.be/2v4fIUF7jMo', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(11, 28, 3),
(15, 28, 5),
(16, 28, 7),
(22, 26, 1),
(23, 26, 3),
(24, 26, 4),
(25, 26, 5),
(26, 25, 1),
(27, 25, 3),
(28, 25, 4),
(29, 24, 1),
(30, 24, 3),
(31, 24, 4),
(32, 23, 1),
(33, 23, 3),
(41, 22, 1),
(42, 22, 3),
(54, 27, 1),
(55, 27, 3),
(56, 27, 4),
(57, 27, 5),
(58, 27, 8),
(59, 16, 4),
(60, 16, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'user01', 'user01@gmail.com', NULL, '$2y$10$UYX7Phik6ozCMxYBsPZAcOJOAgiRX2kABKPSRMi4Mn.b03/5eQmzy', NULL, '2022-01-03 07:00:17', '2022-01-03 07:00:17'),
(3, 'phimhay', 'phimhay@gmail.com', NULL, '$2y$10$NRGyWdtng8T9.0MHo/9fk.dJtAvVri19aqASSrLBqrWInl0r6MRtW', NULL, '2022-03-22 01:46:13', '2022-03-22 01:46:13');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

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
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
