-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 26 2021 г., 07:21
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tree`
--

-- --------------------------------------------------------

--
-- Структура таблицы `entities`
--

CREATE TABLE `entities` (
  `id` int(11) NOT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idParent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `entities`
--

INSERT INTO `entities` (`id`, `Name`, `idParent`) VALUES
(1, 'Root', 0),
(500, 'Магали', 1),
(501, 'Магдалина', 1),
(502, 'Мадина', 1),
(503, 'Майя', 500),
(504, 'Мальвина', 500),
(505, 'Маргарет', 500),
(506, 'Маргарита', 501),
(507, 'Марианна', 501),
(508, 'Марина', 501),
(509, 'Мариса', 502),
(510, 'Марисоль', 502),
(511, 'Мария', 502),
(512, 'Марлен', 503),
(513, 'Марфа', 503),
(514, 'Мастридия', 503),
(515, 'Матрёна', 504),
(516, 'Мафтуха', 504),
(517, 'Мелания', 504),
(518, 'Мелисса', 505),
(519, 'Меропа', 505),
(520, 'Мерседес', 505),
(521, 'Милица', 506),
(522, 'Миранда', 506),
(523, 'Мирей', 506),
(524, 'Миропия', 507),
(525, 'Мирослава', 507),
(526, 'Михримах', 507),
(527, 'Мэдисон', 508),
(528, 'Мэри', 508),
(529, 'Мю', 508),
(530, 'Надежда', 509),
(531, 'Наджия', 509),
(532, 'Надия', 509),
(533, 'Назгуль', 510),
(534, 'Наиля', 510),
(535, 'Наоми', 510),
(536, 'Наталья', 511),
(537, 'Невена', 511),
(538, 'Нелли', 511),
(539, 'Неонилла', 512),
(540, 'Ника', 512),
(541, 'Николетта', 512),
(542, 'Нилуфар', 513),
(543, 'Нинель', 513),
(544, 'Ноа', 513),
(545, 'Нонна', 514),
(546, 'Нора', 514),
(547, 'Нэнси', 514),
(548, 'Одетта', 515),
(549, 'Октябрина', 515),
(550, 'Олимпиада', 515),
(551, 'Ольга', 516),
(552, 'Павла', 516),
(553, 'Павлина', 516),
(554, 'Параскева', 517),
(555, 'Пинна', 517),
(556, 'Полина', 517),
(557, 'Прасковья', 518),
(558, 'Ава', 518),
(559, 'Августа', 518),
(560, 'Аврора', 519),
(561, 'Агата', 519),
(562, 'Агафья', 519),
(563, 'Агнес', 520),
(564, 'Агнесса', 520),
(565, 'Агния', 520),
(566, 'Аделаида', 521),
(567, 'Аделина', 521),
(568, 'Адриенна', 521),
(569, 'Азиза', 522),
(570, 'Аида', 522),
(571, 'Алдона', 522),
(572, 'Алевтина', 523),
(573, 'Александра', 523),
(574, 'Алима', 523),
(575, 'Алина', 524),
(576, 'Алиса', 524),
(577, 'Алия', 524),
(578, 'Алла', 525),
(579, 'Альбина', 525),
(580, 'Аманда', 525),
(581, 'Амина', 526),
(582, 'Амира', 526),
(583, 'Анаис', 526),
(584, 'Анастасия', 527),
(585, 'Ангелина', 527),
(586, 'Анжела', 527),
(587, 'Анжелика', 528),
(588, 'Анисия', 528),
(589, 'Анна', 528),
(590, 'Антонина', 529),
(591, 'Анук', 529),
(592, 'Анфиса', 529),
(593, 'Аполлинария', 530),
(594, 'Аполлония', 530),
(595, 'Ассоль', 530),
(596, 'Аурелия', 531),
(597, 'Бажена', 531),
(598, 'Беата', 531),
(599, 'Беатриса', 532),
(600, 'Белла', 532),
(601, 'Блерта', 532),
(602, 'Божена', 533),
(603, 'Валентина', 533),
(604, 'Валерия', 533),
(605, 'Ванда', 534),
(606, 'Варвара', 534),
(607, 'Василиса', 534),
(608, 'Венди', 535),
(609, 'Вера', 535),
(610, 'Вероника', 535),
(611, 'Виктория', 536),
(612, 'Виолетта', 536),
(613, 'Галатея', 536),
(614, 'Галина', 537),
(615, 'Глафира', 537),
(616, 'Гликерия', 537),
(617, 'Гоар', 538),
(618, 'Говхар', 538),
(619, 'Горица', 538),
(620, 'Гульмира', 539),
(621, 'Гульнара', 539),
(622, 'Гуннхильда', 539),
(623, 'Гюльджан', 540),
(624, 'Василий', 540),
(625, 'Вахтанг', 540),
(626, 'Велвел', 541),
(627, 'Велимир', 541),
(628, 'Венансио', 541),
(629, 'Вениамин', 542),
(630, 'Венцеслав', 542),
(631, 'Верослав', 542),
(632, 'Викентий', 543),
(633, 'Виктор', 543),
(634, 'Викторин', 543),
(635, 'Вильгельм', 544),
(636, 'Винцас', 544),
(637, 'Виссарион', 544),
(638, 'Виталий', 545),
(639, 'Витаутас', 545),
(640, 'Вито', 545),
(641, 'Владимир', 546),
(642, 'Владислав', 546),
(643, 'Владлен', 546),
(644, 'Влас', 547),
(645, 'Волк', 547),
(646, 'Володарь', 547),
(647, 'Вольфганг', 548),
(648, 'Вописк', 548),
(649, 'Всеволод', 548),
(650, 'Всеслав', 549),
(651, 'Вук', 549),
(652, 'Вукол', 549),
(653, 'Вышеслав', 550),
(654, 'Вячеслав', 550),
(655, 'Габриеле', 550),
(656, 'Гавриил', 551),
(657, 'Гай', 551),
(658, 'Галактион', 551),
(659, 'Гарет', 552),
(660, 'Гаспар', 552),
(661, 'Гафур', 552),
(662, 'Гвидо', 553),
(663, 'Гейдар', 553),
(664, 'Геласий', 553),
(665, 'Гельмут', 554),
(666, 'Геннадий', 554),
(667, 'Генри', 554),
(668, 'Генрих', 555),
(669, 'Георге', 555),
(670, 'Георгий', 555),
(671, 'Гераклид', 556),
(672, 'Герберт', 556),
(673, 'Герман', 556),
(674, 'Германн', 557),
(675, 'Геронтий', 557),
(676, 'Герхард', 557),
(677, 'Гессий', 558),
(678, 'Гильем', 558),
(679, 'Гинкмар', 558),
(680, 'Глеб', 559),
(681, 'Гней', 559),
(682, 'Гонорий', 559),
(683, 'Горацио', 560),
(684, 'Гордей', 560),
(685, 'Гостомысл', 560),
(686, 'Градислав', 561),
(687, 'Григорий', 561),
(688, 'Гримоальд', 561),
(689, 'Груди', 562),
(690, 'Гуго', 562),
(691, 'Сабит', 562),
(692, 'Сабриэль', 563),
(693, 'Савва', 563),
(694, 'Савватий', 563),
(695, 'Савелий', 564),
(696, 'Савин', 564),
(697, 'Саддам', 564),
(698, 'Садик', 565),
(699, 'Саид', 565),
(700, 'Салават', 565),
(701, 'Салих', 566),
(702, 'Саллюстий', 566),
(703, 'Салман', 566),
(704, 'Самуил', 567),
(705, 'Сармат', 567),
(706, 'Сасоний', 567),
(707, 'Святослав', 568),
(708, 'Северин', 568),
(709, 'Секст', 568),
(710, 'Семён', 569),
(711, 'Септимий', 569),
(712, 'Серапион', 569),
(713, 'Сергей', 570),
(714, 'Серж', 570),
(715, 'Сигеберт', 570),
(716, 'Сила', 571),
(717, 'Сильвестр', 571),
(718, 'Симеон', 571),
(719, 'Симон', 572),
(720, 'Созон', 572),
(721, 'Соломон', 572),
(722, 'Сонам', 573),
(723, 'Софрон', 573),
(724, 'Спиридон', 573),
(725, 'Срджан', 574),
(726, 'Станислав', 574),
(727, 'Степан', 574),
(728, 'Стефано', 575),
(729, 'Стивен', 575),
(730, 'Сулейман', 575),
(731, 'Сфенел', 576),
(732, 'Таврион', 576),
(733, 'Тавус', 576),
(734, 'Тагир', 577),
(735, 'Тадеуш', 577),
(736, 'Тарас', 577),
(737, 'Тарасий', 578),
(738, 'Теймураз', 578),
(739, 'Тейс', 578),
(740, 'Тендзин', 579),
(741, 'Терентий', 579),
(742, 'Терри', 579),
(743, 'Тиберий', 580),
(744, 'Тигран', 580),
(745, 'Тимофей', 580),
(746, 'Тимур', 581),
(747, 'Тимур', 581),
(748, 'Тихомир', 581),
(749, 'Тихон', 582),
(750, 'Василий', 621),
(751, 'Фёдор', 622),
(752, 'Степан', 621),
(753, 'Дмитрий', 622),
(754, 'Супер', 750),
(755, 'Август', 752),
(756, 'Марта', 750),
(757, 'Февраль', 752);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=758;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
