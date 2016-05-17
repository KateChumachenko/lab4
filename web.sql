-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 17 2016 г., 12:23
-- Версия сервера: 5.5.49-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `web`
--
CREATE DATABASE IF NOT EXISTS `web` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `web`;

-- --------------------------------------------------------

--
-- Структура таблицы `acl_classes`
--

CREATE TABLE IF NOT EXISTS `acl_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_69DD750638A36066` (`class_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `acl_entries`
--

CREATE TABLE IF NOT EXISTS `acl_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int(10) unsigned NOT NULL,
  `object_identity_id` int(10) unsigned DEFAULT NULL,
  `security_identity_id` int(10) unsigned NOT NULL,
  `field_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ace_order` smallint(5) unsigned NOT NULL,
  `mask` int(11) NOT NULL,
  `granting` tinyint(1) NOT NULL,
  `granting_strategy` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `audit_success` tinyint(1) NOT NULL,
  `audit_failure` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_46C8B806EA000B103D9AB4A64DEF17BCE4289BF4` (`class_id`,`object_identity_id`,`field_name`,`ace_order`),
  KEY `IDX_46C8B806EA000B103D9AB4A6DF9183C9` (`class_id`,`object_identity_id`,`security_identity_id`),
  KEY `IDX_46C8B806EA000B10` (`class_id`),
  KEY `IDX_46C8B8063D9AB4A6` (`object_identity_id`),
  KEY `IDX_46C8B806DF9183C9` (`security_identity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `acl_object_identities`
--

CREATE TABLE IF NOT EXISTS `acl_object_identities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_object_identity_id` int(10) unsigned DEFAULT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `object_identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entries_inheriting` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9407E5494B12AD6EA000B10` (`object_identifier`,`class_id`),
  KEY `IDX_9407E54977FA751A` (`parent_object_identity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `acl_object_identity_ancestors`
--

CREATE TABLE IF NOT EXISTS `acl_object_identity_ancestors` (
  `object_identity_id` int(10) unsigned NOT NULL,
  `ancestor_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`object_identity_id`,`ancestor_id`),
  KEY `IDX_825DE2993D9AB4A6` (`object_identity_id`),
  KEY `IDX_825DE299C671CEA1` (`ancestor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `acl_security_identities`
--

CREATE TABLE IF NOT EXISTS `acl_security_identities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8835EE78772E836AF85E0677` (`identifier`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `fos_user_group`
--

CREATE TABLE IF NOT EXISTS `fos_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_583D1F3E5E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `fos_user_user`
--

CREATE TABLE IF NOT EXISTS `fos_user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `twitter_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `gplus_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_step_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C560D76192FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_C560D761A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `fos_user_user`
--

INSERT INTO `fos_user_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `created_at`, `updated_at`, `date_of_birth`, `firstname`, `lastname`, `website`, `biography`, `gender`, `locale`, `timezone`, `phone`, `facebook_uid`, `facebook_name`, `facebook_data`, `twitter_uid`, `twitter_name`, `twitter_data`, `gplus_uid`, `gplus_name`, `gplus_data`, `token`, `two_step_code`) VALUES
(1, 'admin', 'admin', 'admin@web.com', 'admin@web.com', 1, 'hd4qqayitd4o4occcw4ss0okk84gskk', 'Q4/CL9PVHkMmafJRyHBaJcGkhqemaHwwxnuCBqh3Foz4fYXck71hHT3Ix0yOJbEXPZElN5EcdiUGR9CaPi1wUA==', '2016-05-13 10:14:17', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL, '2016-05-13 09:50:13', '2016-05-13 10:14:17', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(2, 'user', 'user', 'user@web.com', 'user@web.com', 1, 'aprutr2vi1skkc4ck0wok0kskwso8cs', 'jFL3pxuwt00BQUk9EMV2yxbxjOvCjPU0GZ2awlN5oC9YFwTu78sxPJCp8E7BuFqFqL4ucV70evuA5NlwQ5nNbg==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2016-05-13 10:14:39', '2016-05-13 10:15:05', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `fos_user_user_group`
--

CREATE TABLE IF NOT EXISTS `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_B3C77447A76ED395` (`user_id`),
  KEY `IDX_B3C77447FE54D947` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `url`, `name`, `content`) VALUES
(1, '/', 'Главная', '<h2>Добро пожаловать!</h2>\r\n<h3>Нашей основной задачей всегда было обеспечение исключительно высокого качества предоставляемых услуг и максимально\r\n    позитивные эмоции наших клиентов. С нами вы можете совместить полезное с приятным: выбрать тур, поделиться\r\n    впечатлениями,\r\n    попить чай и подзарядиться приятной дружественной атмосферой, которой мы гордимся. Мы всегда рады вас видеть!</h3>\r\n<h2>Туры в Турцию</h2>\r\n\r\n<p>Турция — это не только отличные пляжи четырех морей, но и великолепный Стамбул с Голубой мечетью и дворцом Топкапы,\r\n    термальные источники Яловы и белоснежный Памуккале, монастыри Каппадокии, горные лыжи и классный шоппинг.</p>\r\n\r\n<p><img src="/img/turkey.jpg" alt="Турция"  width="900" height="380"></p>\r\n\r\n<h2>Туры в ОАЕ</h2>\r\n\r\n<p>В ОАЭ не бывает плохой погоды и низкого сезона — ведь здесь что в ноябре, что в июле роскошные отели для\r\n    качественного отдыха и\r\n    отличный шопинг по привлекательным ценам. Все об Эмиратах — Дубай и Шарджа, пляжный отдых, экскурсии и\r\n    достопримечательности на\r\n    карте.</p>\r\n<img src="/img/oae.jpg" alt="ОАЭ" width="900" height="380">\r\n\r\n<h2>Туры в Шри-Ланку</h2>\r\n\r\n<p>Шри-Ланка - чудесный остров вечного лета, романтики и экзотики, где под шелест коксовых пальм,\r\n    так чудесно расслабиться и отдохнуть от мирской суеты, надоевших будней и привычности западного уклада жизни.\r\n</p>\r\n<img src="/img/srilanka.jpg" alt="Шри-Ланка"  width="900" height="380">'),
(2, '/search', 'Поиск тура', '<h2>Поиск тура</h2>\n\n<table class="page-table">\n    <caption>Туры в Турцию</caption>\n    <tr>\n        <th>Название</th>\n        <th>Уровень отеля</th>\n        <th>Выезд</th>\n        <th>Размещение</th>\n        <th>Питание</th>\n        <th>Вылет</th>\n        <th>Цена</th>\n    </tr>\n    <tr>\n        <td>Fortuna AI (Side)</td>\n        <td>4*</td>\n        <td>23.09.15 ср. на 8дн./7ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Харьков 13:20</td>\n        <td>от 12 595 грн</td>\n    </tr>\n    <tr>\n        <td>Jasmin Side Hotel</td>\n        <td>5*</td>\n        <td>23.09.15 ср. на 8дн./7ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Харьков 13:20</td>\n        <td>от 15 992 грн</td>\n    </tr>\n    <tr>\n        <td>Himeros Life Hotel</td>\n        <td>5+*</td>\n        <td>23.09.15 ср. на 8дн./7ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Харьков 13:20</td>\n        <td>от 19 992 грн</td>\n    </tr>\n</table>\n\n\n<table class="page-table">\n    <caption>Туры в OAE</caption>\n    <tr>\n        <th>Название</th>\n        <th>Уровень отеля</th>\n        <th>Выезд</th>\n        <th>Размещение</th>\n        <th>Питание</th>\n        <th>Вылет</th>\n        <th>Цена</th>\n    </tr>\n    <tr>\n        <td>Ramada Beach</td>\n        <td>4*</td>\n        <td>25.09.15 пт. на 7дн./6ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Киев 13:50</td>\n        <td>от 27 664 грн</td>\n    </tr>\n    <tr>\n        <td>Bin Majid Beach Hotel</td>\n        <td>5*</td>\n        <td>27.09.15 пт. на 7дн./6ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Киев 12:50</td>\n        <td>от 29 344 грн</td>\n    </tr>\n    <tr>\n        <td>Himeros Life Hotel</td>\n        <td>5+*</td>\n        <td>30.09.15 пт. на 7дн./6ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Киев 12:50</td>\n        <td>от 37 734 грн</td>\n    </tr>\n</table>\n\n\n<table class="page-table">\n    <caption>Туры в Шри-Ланку</caption>\n    <tr>\n        <th>Название</th>\n        <th>Уровень отеля</th>\n        <th>Выезд</th>\n        <th>Размещение</th>\n        <th>Питание</th>\n        <th>Вылет</th>\n        <th>Цена</th>\n    </tr>\n    <tr>\n        <td>Club Palm Bay</td>\n        <td>4*</td>\n        <td>25.09.15 пт. на 7дн./6ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Киев 13:50</td>\n        <td>от 29 150 грн</td>\n    </tr>\n    <tr>\n        <td>The Palms</td>\n        <td>5*</td>\n        <td>27.09.15 пт. на 7дн./6ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Киев 12:50</td>\n        <td>от 36 354 грн</td>\n    </tr>\n    <tr>\n        <td>Club Bentota</td>\n        <td>5+*</td>\n        <td>30.09.15 пт. на 7дн./6ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Киев 12:50</td>\n        <td>от 44 734 грн</td>\n    </tr>\n</table>'),
(3, '/company', 'О компании', '<h2 >О компании</h2>\n\n<p>Спасибо за внимание к нашему агентству! Мы рады поделиться с вами его историей и всем, чем «Catherine Travel» живет\n    сейчас.</p>\n\n<p>Мы с вами с 2005 года, с того времени когда туристические документы еще отправляли исключительно по факсу, а сайт\n    компании был невероятной инновацией — времена изменились и теперь на страничках нашего обновленного сайта вы найдете\n    не только необходимую информацию, но и много интересной информации, которой нам хочется поделиться с вами.</p>\n\n<p>Нашей основной задачей всегда было обеспечение исключительно высокого качества предоставляемых услуг и максимально\n    позитивные эмоции наших клиентов. С нами вы можете совместить полезное с приятным: выбрать тур, поделиться\n    впечатлениями, попить чай и подзарядиться приятной дружественной атмосферой, которой мы гордимся. Мы всегда рады вас\n    видеть!</p>\n\n<p>Если вас интересует список направлений, которыми мы занимаемся, то мы ответим сразу — доступен любой уголок Земли!\n    Предела фантазии нет, возможности современного туризма практически не ограничены и мы будем рады претворить ваши\n    мечты и планы в жизнь, будь то классические массовые направления, лечение, обучение, экзотика, комбинированные\n    программы, детский отдых или экскурсионные туры. Также всегда к вашим услугам большой выбор горящих путевок и\n    специальных предложений.</p>\n\n<p>Просто cвяжитесь с нами любым удобным для вас способом, и мы предложим вам лучшие варианты любого типа отдыха! Мы\n    сохраняем связь с туристами 24 часа в сутки, поэтому вы никогда не останетесь без внимания с нашей стороны и нашей\n    максимально оперативной помощи в организации отдыха, который будет достоин стать воплощением ваших планов и желаний.</p>\n\n<p>Мы работаем только с проверенными и надёжными партнёрами, с которыми имеем длительные партнерские отношения,\n    подкрепленные взаимным уважением. Все наши сотрудники имеют опыт работы в туризме и работают как одна команда,\n    сплоченная и надежная. Мы регулярно участвуем в отраслевых выставках, work-shop, ознакомительных турах, в которых\n    лично исследуем все плюсы и минусы предлагаемых маршрутов и отелей.</p>\n\n<p>Гарантируем вам качество обслуживания, внимательность и искреннее желание сделать наше общение не только\n    продуктивным, но и взаимно приятным, а также конфиденциальность всей полученной от вас информации.</p>\n\n<p>Помимо всего мы просто любим свою работу, своих клиентов и делаем все, чтобы вы получили удовольствие от\n    путешествия!</p>\n\n<p>Спасибо всем, кто с нами, и Добро пожаловать!</p>\n\n<p> Ждем вас в офисе нашей компании по адресу г.Харьков, ул. Сумская, 80а (станция метро Университет)</p> '),
(4, '/services', 'Услуги', '<h2>Услуги</h2>\n\n<h3>Визы</h3>\n\n<p>Мы будем рады оказать вам все виды визовой поддержки - запись на подачу, оформление визовых анкет, консультационные\n    услуги или комплексное оформление визы в ряд стран.\n    Гарантируем вам конфиденциальность данных, надежность и предоставление только проверенной и актуальной\n    информации.</p>\n\n<h3>Страхование</h3>\n\n<p>Путешествия – это всегда что-то новое, желанное и долгожданное, а порой и неожиданное. Мы все так любим новизну\n    ощущений и впечатлений, открывающих новые горизонты, сюрпризы, которые там и тут поджидают нас на отдыхе.\n    Путешествия невозможны без легкой доли риска авантюризма, которые придают такой чарующий вкус каждой новой\n    поездке.</p>\n\n<p> В то же время, чтобы целиком и полностью получать удовольствие от покорения новых берегов, необходимо быть уверенным\n    в том, что даже в непредвиденной ситуации Вам доступен четкий и отлаженный механизм устранения возникающих проблем,\n    гарантия неприкосновенности Вашего здоровья. Именно поэтому всем своим клиентам мы советуем пользоваться услугами\n    проверенных и зарекомендовавших себя с лучшей стороны страховых компаний с мировым именем.</p>\n\n<p> Для потребностей туристов чаще всего выполняются такие виды страхования:</p>\n<ul>\n    <li>Медицинское страхование. В основном подразумевает оплату медицинских расходов: скорая медицинская помощь,\n        неотложная стационарное лечение, неотложная амбулаторная помощь. Также возможно рассмотрение и включение в\n        страховку\n        дополнительных страховых случаев и условий. Если у Вас есть данная туристическая страховка, Вы можете обратиться\n        в\n        круглосуточную страховую компанию, профессионалы сделают все, чтобы Вам помочь. Для детей до 14 (включительно)\n        лет\n        предусмотрена скидка 50% , Для детей и молодежи в возрасте от 15 до 24 (включительно) лет предусмотрена скидка\n        10%.\n    </li>\n    <li>Страхование путешествующих в страны Шенгенского соглашения. Особенность такого страхования состоит в том, что\n        его\n        условия должны соответствовать требованиям «Решение Совета ЕС 2004/17 относительно медицинского страхования\n        выезжающих за рубеж», ведь правильно оформленный полис предоставит Вам не только настоящую защиту на все время\n        пребывания за границей, но и дополнительную гарантию соответствия документов требованиям стран Шенгенского\n        соглашения\n    </li>\n    <li>Спортивное страхование. Если Вы занимаетесь спортом и собираетесь совершенствовать свои умения за границей, то\n        стоит ознакомиться с дополнительными условиями и страховыми случаями, возникающими в связи со спецификой вида\n        спорта.\n    </li>\n    <li>Автострахование. Если Вы будете выезжать на своем автомобиле за границу - автострахование «Зеленая карта» -\n        обязательный страховой сертификат.\n    </li>\n</ul>\n<p> В большинство туристических пакетов уже заложено страхование с минимальным страховым покрытием. Если вы\n    путешествуете с детьми или отправляете на отдых своих родителей можно забронировать дополнительную страховку на\n    более обширную программу. Также страховой полис необходим при заказе у нас только авиабилетов, ее могут попросить\n    предъявить в аэропорту.</p>\n\n<p> Наш надежный и проверенный партнер PZU.</p>\n\n<p> Для того, чтобы просчитать страховку на требуемые даты и другие условия, звоните по тел.: (057) 700-54-43 или пишите\n    запрос на почту info@goldentravel.com.ua.</p>\n\n<p> Мы всегда заботимся о безопасности своих туристов и Всегда рады видеть Вас в нашем офисе!</p>\n\n<h3>Travel SIM</h3>\n\n<p>Предлагаем Вам международную сим-карту, которая помогает Вам существенно экономить на сотовой связи!</p>\n\n<p> Международная сим-карта TravelSIM.</p>\n\n<p> В офисе «Голден Тревел» Вы можете купить TravelSIM карту, пополнить свой счёт на любую сумму. У нас всегда есть в\n    наличии стартовые пакеты!</p>\n\n<p> Бесплатные входящие в 141 стране мира, исходящие звонки от 0,25$, Тревел СМС от 0,10$. Работает в 198 странах мира.</p>\n\n<p> Стоимость стартового пакета 60 грн.</p>\n\n<p> Менеджер: Чумаченко Екатерина\n    тел. 700-54-43, 0506950445, email: cather1ne@gmail.com</p>\n'),
(5, '/news', 'Новости', '<h2>Новости</h2>\r\n\r\n<h3>Пилот самолета авиакомпании Air Canada, следовавшего из Тель-Авива в Торонто, прервал полет ради безопасности\r\n    собаки</h3>\r\n\r\n<p>17 сентября, 2015 - 12:20</p>\r\n<img src="/img/dog.jpg" alt="Собака">\r\n\r\n<p>На подлете к Атлантическому океану капитан самолета заметил проблемы с отоплением грузового отсека.\r\n    В нем находился французский бульдог, принадлежавший одному из пассажиров. Пилот решил развернуть самолет и совершил\r\n    посадку во Франкфурте-на-Майне.</p>\r\n\r\n<p> Эксперт по авиации Фил Дарби отметил, что, несмотря на дополнительные расходы в десять тысяч долларов и задержку в\r\n    75 минут, пилот сделал правильный выбор, посадив самолет, так как капитан несет ответственность за жизни всех\r\n    находящихся на борту, будь то человек или собака.</p>\r\n\r\n<h3>Горнолыжная Турция! Старт раннего бронирования!</h3>\r\n\r\n<p>14 сентября, 2015 - 16:30</p>\r\n<img src="/img/winter.jpg" alt="Зимняя Турция">\r\n\r\n<p>Турция прекрасна в любое время года!</p>\r\n\r\n<p> Есть уникальное предложение для Вас на Новый год и Рождество!</p>\r\n\r\n<p> Прямые рейсы из Киева с авиакомпанией «Роза Ветров», самые низкие цены и лучшая отельная база! Все прелести\r\n    горнолыжного отдыха, и насыщенные праздничные программы!</p>\r\n\r\n<p> Улудаг – самый популярный горнолыжный курорт, от Стамбула в 150 км. Широкие ухоженные трассы (1750—2457 м) здесь\r\n    окружены хвойным лесом, красота окружает вас везде. Сложных трасс здесь очень мало, снежный покров сохраняется со\r\n    второй половины декабря по конец марта. Данный курорт – прекрасное место для семейного отдыха.</p>\r\n\r\n<p> Выбирайте подходящую для Вас дату: 29.12, 05.01, 12.01.2016 г. и отправляйтесь в Турцию на 7 ночей по лучшей\r\n    цене!</p>\r\n\r\n<h3>Авиакомпания МАУ открывает прямой рейс из Киева в Ивано-Франковск</h3>\r\n\r\n<p>16 августа, 2015 - 11:01</p>\r\n<img src="/img/mau.png" alt="МАУ">\r\n\r\n<p> Старт зимней навигации 2015/2016 с 25 октября ознаменуется первым рейсом между Киевом и Ивано-Франковском.</p>\r\n\r\n<p> Новые рейсы будут выполняться на самолетах Boeing-737 и Embraer-190. Рейсы будут иметь два класса обслуживания,\r\n    частота выполнения рейсов точно не известна.</p>\r\n\r\n<p> Вылет из Киева будет вечерним - около 19:35, вылет в обратном направлении из Ивано-Франковска - 07:00. Продажа\r\n    билетов уже открыта.</p>\r\n\r\n<h3>Фестиваль песчаных скульптур открылся в Бургасе</h3>\r\n\r\n<p>11 июля, 2015 - 11:31</p>\r\n<img src="/img/burgas.jpg" alt="Бургас">\r\n\r\n<p>Популярный курорт Болгарии Бургас радует своих гостей не только теплым морем.</p>\r\n\r\n<p> С 1 июля по 30 сентября курорт проводит фестиваль песчаных скульптур. Тема фестиваля - сафари. Скульпторы из многих\r\n    стран мира. воссоздали необыкновенный мир дикой природы из песка.</p>\r\n\r\n<p> В темное время суток для освещения песчаного города применяется оригинальная подсветка, что придает песчаному городу\r\n    неповторимое очарование.</p>\r\n\r\n<h3>Остров Яс - детям все бесплатно</h3>\r\n\r\n<p>10 июля, 2015 - 17:50</p>\r\n<img src="/img/yas.jpg" alt="Остров Яс">\r\n\r\n<p>Этим летом дети до 12 лет, проживающие в отелях на острове Яс в ОАЭ Yas Viceroy, Crowne Plaza, Radisson Blu, Rotana и\r\n    Centro получают пакет - все бесплатно. Бесплатным будет проживание и питание в отелях, а также неограниченное посещение\r\n    Ferrari World и аквапарк острова бесплатно. Предложение действительно до 30.09.2015.</p>'),
(6, '/hobbe', 'О разработчике', '<h2>О разработчике</h2>\r\n<table>\r\n\r\n    <td>\r\n        <img src="/img/developer.jpg" alt="Разработчик" width="240" height="330">\r\n    </td>\r\n\r\n    <td>\r\n        <ul>\r\n            <li>Чумаченко Екатерина Александровна</li>\r\n            <li>21 год, женский</li>\r\n            <li>тел. 0506950445, email: cather1ne@gmail.com</li>\r\n\r\n            <li>Харьковский национальный экономический университет имени С. Кузнеца, факультет Экономической информатики,\r\n                направление "Компьютерные науки", студентка 3-го курса</li>\r\n            <li>Русский (родной), Украинский (высокий), Английский (выше среднего)</li>\r\n            <li>Языки программирования - C++, Java, C#</li>\r\n            <li>Хобби: занятия спортом (тренажерный зал), волейбол</li>\r\n            <li>Не замужем</li>\r\n        </ul>      \r\n    </td>\r\n</table>');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `acl_entries`
--
ALTER TABLE `acl_entries`
  ADD CONSTRAINT `FK_46C8B8063D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806DF9183C9` FOREIGN KEY (`security_identity_id`) REFERENCES `acl_security_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806EA000B10` FOREIGN KEY (`class_id`) REFERENCES `acl_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  ADD CONSTRAINT `FK_9407E54977FA751A` FOREIGN KEY (`parent_object_identity_id`) REFERENCES `acl_object_identities` (`id`);

--
-- Ограничения внешнего ключа таблицы `acl_object_identity_ancestors`
--
ALTER TABLE `acl_object_identity_ancestors`
  ADD CONSTRAINT `FK_825DE2993D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_825DE299C671CEA1` FOREIGN KEY (`ancestor_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_user_group` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
