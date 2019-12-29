-- --------------------------------------------------------
-- 主機:                           127.0.0.1
-- 伺服器版本:                        5.7.28-log - MySQL Community Server (GPL)
-- 伺服器操作系統:                      Win64
-- HeidiSQL 版本:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 傾印 chinshi 的資料庫結構
CREATE DATABASE IF NOT EXISTS `chinshi` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `chinshi`;

-- 傾印  表格 chinshi.constellations 結構
DROP TABLE IF EXISTS `constellations`;
CREATE TABLE IF NOT EXISTS `constellations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星座名字',
  `date` date NOT NULL COMMENT '日期',
  `whole_luck` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星座名字',
  `whole_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星座名字',
  `love_luck` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星座名字',
  `love_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星座名字',
  `career_luck` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星座名字',
  `career_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星座名字',
  `wealth_luck` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星座名字',
  `wealth_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星座名字',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  chinshi.constellations 的資料：~12 rows (約數)
DELETE FROM `constellations`;
/*!40000 ALTER TABLE `constellations` DISABLE KEYS */;
INSERT INTO `constellations` (`id`, `name`, `date`, `whole_luck`, `whole_description`, `love_luck`, `love_description`, `career_luck`, `career_description`, `wealth_luck`, `wealth_description`, `created_at`, `updated_at`) VALUES
	(133, '牡羊座', '2019-12-29', '整體運勢★★★☆☆', '今天特別希望受到重視，待人小心翼翼，但太過小心反而讓你變得緊張，影響正常水平的發揮。財運較弱，不應有攀比心理，小心會花掉大筆的冤枉錢。感情方面，因願意與另一半分享心情，精神易獲得滿足。', '愛情運勢★★☆☆☆', '愛情有些不順，對方一不小心說了你不愛聽的話，可千萬別惱怒，以免發生「戰爭」。', '事業運勢★★★☆☆', '運勢不錯，工作和學業會出現新的可能，愈有想法的人將愈能擊中自己渴望的目標。', '財運運勢★★☆☆☆', '與人發生財務糾紛的可能性比較高，要小心。', '2019-12-29 14:06:23', '2019-12-29 14:06:23'),
	(134, '金牛座', '2019-12-29', '整體運勢★★★★★', '今天異性緣佳，你迷人的笑容會讓週遭的人都充滿歡笑，自己心儀的對象也會對你側目而看，注意趁熱打鐵，可一蹴而就。可去逛逛商場，有機會淘到物美價廉的東西，並使得心情也好好。', '愛情運勢★★★★★', '今日是女性的大吉戀愛日，容易遇到滿意的情人。戀愛中人可以享受被人呵護的滋味。', '事業運勢★★★★☆', '藝術細胞活躍，不妨抽時間閱讀這方面書籍，或看藝術展，能提升你的品味，與朋友或客戶聊天時也更有話題。', '財運運勢★★★★☆', '運用智慧、腦力、分析、創意生財的日子，對於創意工作者特別有財利。有小小的賭運。', '2019-12-29 14:06:23', '2019-12-29 14:06:23'),
	(135, '雙子座', '2019-12-29', '整體運勢★★★☆☆', '與對方的關係有種曖昧的味道，可又因他的遲疑而邁不出關鍵的一步，其實你的主動同樣能打破這種格局哦！今天還是不必往證券市場跑的好，只會徒勞無功；今天會有突發狀況發生，因欠缺魄力而導致事情有中斷的危險。', '愛情運勢★★★☆☆', '在服飾打扮上花些心思，給異性新的視覺衝擊，有機會與心儀的對象邂逅喔！', '事業運勢★★★☆☆', '感覺有些茫茫然，很多事情的改變讓你有點不知所措。別驚慌，做到處變不驚才好。', '財運運勢★★★☆☆', '想存錢宜多花點心思，勤勞點、節儉點就能存錢囉！', '2019-12-29 14:06:23', '2019-12-29 14:06:23'),
	(136, '巨蟹座', '2019-12-29', '整體運勢★★★★☆', '浪漫甜蜜的一天，溫柔含蓄的一個暗語，對方會和你熱情相擁。在投資項目的選擇上可學習「韓信點兵，多多益善」。求職運佳，求職者很容易成功，勇於表現是今日成功的關鍵，切不可畏首畏尾。', '愛情運勢★★★★☆', '有機會與心儀的異性單獨交談，要好好把握機會，獲得感情的機率高。', '事業運勢★★★★☆', '心情愉快，有機會與老朋友、老同學偶遇，還易從對方口中獲得對工作有利的消息。', '財運運勢★★★☆☆', '謹慎理財、步步為營可降低財務紛爭的發生率！', '2019-12-29 14:06:23', '2019-12-29 14:06:23'),
	(137, '獅子座', '2019-12-29', '整體運勢★★★★☆', '愛情運普通，情侶間可通過甜言蜜語來調劑，但要注意場合，避免尷尬發生；生意之人，交易方面稍作妥協更能促成買賣；做事時很容易進入狀態，因全身心投入，任務能較快的完成。', '愛情運勢★★★☆☆', '單身者容易在社交活動中結識異性朋友，可望戀愛；戀愛中的人愛情平穩發展。', '事業運勢★★★★☆', '精神飽滿的一天，有機會擔任重要角色，別急著發號施令，先從自己做起。', '財運運勢★★★☆☆', '避免腦袋發暈，投入超標。', '2019-12-29 14:06:24', '2019-12-29 14:06:24'),
	(138, '處女座', '2019-12-29', '整體運勢★★★☆☆', '今天能察言觀色，能從他人的言語中獲得有力的信息，挖掘到商機。投資者與人合作投資短期項目，會有不錯的收入。愛情運較弱，外界誘惑多，渴望愛情的人應理智一些，小心愛情陷阱。', '愛情運勢★★☆☆☆', '單身者找對象眼光別太高了，身邊就有很多關心你、真心對你好的異性，應珍惜。', '事業運勢★★★☆☆', '精神很好的一天，學習慾望強烈，正是學習充電的時候，多看點書對以後的工作有助益。', '財運運勢★★★★☆', '容易把錢花在自己身上，好好享受一番！', '2019-12-29 14:06:24', '2019-12-29 14:06:24'),
	(139, '天秤座', '2019-12-29', '整體運勢★★★☆☆', '事先安排晚上的行程不太妥當，臨時變更預定的事情會失去機遇。先前的計劃有被推後的狀況，以應對突變事情。與人合夥進行投資的事情還需慎重考慮後再做決定，不妨與家人商量一下，看他們有何高見。', '愛情運勢★★★☆☆', '夫妻間的感情不太穩定，應注意協調，以免影響工作；單身者有機會結識活潑開朗的異性。', '事業運勢★★★☆☆', '運勢向好的一面發展，凡事平順進行，可適當做些規劃方面的事情。', '財運運勢★★★☆☆', '與其和同行競爭，不如攜手合作，謀得共贏。', '2019-12-29 14:06:24', '2019-12-29 14:06:24'),
	(140, '天蠍座', '2019-12-29', '整體運勢★★★☆☆', '幽默風趣的話語吸引眾人的目光，在你的周圍總是洋溢著歡聲笑語。到裝潢不錯的書店轉轉，看看書，會有意想不到的艷遇。你的善心滿滿，捐些錢做公益，會有福報。', '愛情運勢★★★☆☆', '喜歡回憶過去的點滴。單身者勾畫著夢中情人的模樣。呵呵，有時做做白日夢也不錯。', '事業運勢★★★★☆', '在表達上會表現得很優異，有事情需要溝通時不妨好好表現一番！', '財運運勢★★★☆☆', '有買彩票方面發財的契機，但是比較難於抓住機會，導致失敗機率大於成功機率。', '2019-12-29 14:06:25', '2019-12-29 14:06:25'),
	(141, '射手座', '2019-12-29', '整體運勢★★★☆☆', '今天要處理的事情雜亂，試著平靜下來，冷靜的頭腦才是處理問題的關鍵；遇到對眼的異性，趕快採取行動吧；財運不太妙，手氣也欠佳，把時間放在其他有意義的事上，會更有收穫。', '愛情運勢★★★☆☆', '對另一半有一種難以言喻的無力感。心裡有不滿就與對方好好溝通，生悶氣只會傷身傷神。', '事業運勢★★★☆☆', '想離開現在的環境，但諸多的現實考慮，還是無法完全脫身。', '財運運勢★★☆☆☆', '提醒自己莫因物慾過重、貪戀花酒而舉債度日。', '2019-12-29 14:06:25', '2019-12-29 14:06:25'),
	(142, '摩羯座', '2019-12-29', '整體運勢★★★☆☆', '體驗著被愛包圍的甜蜜，另一半的善解人意讓你感動不已。凡事過猶不及，別太專注於投資之事，放點心思在錢財的管理上也是很好的生財之道。學生族對學習充滿信心，擁有不竭的動力讓你更加自信。', '愛情運勢★★★☆☆', '與伴侶在一起時最好別提金錢問題，容易因錢而引起矛盾，讓本是輕鬆的約會變得緊張。', '事業運勢★★★☆☆', '閒暇時間較多，可以安排一些時間與朋友相聚，別讓彼此的感情變淡了。', '財運運勢★★★☆☆', '採取保守理財為上策，把錢存於銀行賺取利息較為穩妥。', '2019-12-29 14:06:25', '2019-12-29 14:06:25'),
	(143, '水瓶座', '2019-12-29', '整體運勢★★★☆☆', '積極性大大加強，個人能力也在一定的基礎上得到提高，因而獲得長輩的照顧。具備賺錢的本領還得有守錢的本事，合理支配錢財就是理財的關鍵，家人在這方面給予的幫助不容小視。', '愛情運勢★★★☆☆', '已婚者有較多的時間與另一半在一起，可以共同回憶之前的美好時光，為戀情加溫！', '事業運勢★★★☆☆', '收穫頗多，有機會接手新的、更有挑戰性的任務，正是發揮才能的時候，加油！', '財運運勢★★★★☆', '有摸獎抽獎的機會，中獎的機率比較高。另外，還會有收受重禮的機會。', '2019-12-29 14:06:26', '2019-12-29 14:06:26'),
	(144, '雙魚座', '2019-12-29', '整體運勢★★★★☆', '工作的事情可以先放一邊，會休息才能更好地工作。今天沉靜下來後會想清楚很多事情，以往與朋友、親人間的誤會都可以在今天表明態度，打開心結會讓你有豁然開朗之感。愛情運優，單身者有機會遇到強烈的電波。', '愛情運勢★★★★★', '愛情運很棒，是魅力四射的一天，有機會遇到追求者耶！', '事業運勢★★★☆☆', '容易受到一些小小的打擊，但能讓你更有動力，下午運勢逐漸提升。', '財運運勢★★★★☆', '財神爺送錢來囉！今日有得財的機會，例如：收到禮物、中獎得財、撿到錢等等。', '2019-12-29 14:06:26', '2019-12-29 14:06:26');
/*!40000 ALTER TABLE `constellations` ENABLE KEYS */;

-- 傾印  表格 chinshi.migrations 結構
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  chinshi.migrations 的資料：~3 rows (約數)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(7, '2019_12_29_065401_create_constellations', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- 傾印  表格 chinshi.password_resets 結構
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  chinshi.password_resets 的資料：~0 rows (約數)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- 傾印  表格 chinshi.users 結構
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  chinshi.users 的資料：~4 rows (約數)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, '林筌靖', 'qwerqwr@example.com', '$2y$10$lQuF6MK2esFo/aRQkKMKQOBzt/f3hbwpzTE6ZbGxsLl1OJ/Aw8uTi', NULL, '2019-12-28 13:26:03', '2019-12-28 13:26:03'),
	(2, 'tset', 'serer@example.com', '$2y$10$QHCv3N.QkyzGRlpP2Ci40eUieDtspi69iYwb95.A2EcpFJrme8cUe', NULL, '2019-12-28 13:41:15', '2019-12-28 13:41:15'),
	(3, 'tset', 'g9o5n2e2w@yahoo.com.tw', '$2y$10$ZPbKZPvdoSbcrKqcvhnEROB/wXbX8CR8zRL0l/CL.wvXVvjsUPnHe', 'vgjwCWvRfKeLDxM7NloCQkR8g4PJHuugHGO3BzRvNDxS6ba3riYtZJowsHe3', '2019-12-29 03:42:12', '2019-12-29 03:42:12'),
	(4, '林筌靖', 'g9o5n2e2@yahoo.com.tw', '$2y$10$dKj/1WXDUkpTdQ.gofDb3ORMihYzZvLmFyb0KRRm1sYjHsj2FXxna', 'U5WbMjJI0yqNjPz7iXCMBsYe3NokzarWMdCrNwrwEqlswoDsZ3zBkUnPODU1', '2019-12-29 04:18:46', '2019-12-29 04:18:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
