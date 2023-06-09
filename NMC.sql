--
-- Table structure for table `nmc_category`
--

DROP TABLE IF EXISTS `nmc_category`;
CREATE TABLE IF NOT EXISTS `nmc_category` (
  `catID` varchar(6) NOT NULL default '',
  `catDesc` varchar(30) default NULL,
  PRIMARY KEY  (`catID`)
);

--
-- Insert data for table `nmc_category`
--

INSERT INTO `nmc_category` (`catID`, `catDesc`) VALUES
('2', 'Acid Jazz'),
('3', 'Alternative'),
('4', 'Alternative Pop/Rock'),
('5', 'Ambient'),
('6', 'AvantGarde'),
('7', 'Ballad'),
('8', 'Bluegrass'),
('9', 'Blues'),
('10', 'Chamber'),
('11', 'Classic Rock'),
('12', 'Classical'),
('13', 'Comedy'),
('14', 'Contemporary Folk'),
('15', 'Country'),
('16', 'Cult'),
('17', 'Death Metal'),
('18', 'Easy Listening'),
('19', 'Electronic'),
('20', 'Electronica'),
('21', 'Folk'),
('22', 'Free Style'),
('23', 'General Folk'),
('24', 'General Rock'),
('25', 'genre'),
('26', 'Gothic'),
('27', 'Jazz'),
('28', 'Jungle/Drum ''N Bass'),
('29', 'Keyboard'),
('30', 'Latin'),
('31', 'Latin Rap'),
('32', 'Louie'),
('33', 'Medieval'),
('34', 'misc'),
('35', 'Miscellaneous'),
('36', 'Mob Hits'),
('37', 'New Age'),
('38', 'New Wave'),
('39', 'Oldies'),
('40', 'Other'),
('41', 'Pop'),
('42', 'Pop/Rock'),
('43', 'Progressive Folk'),
('44', 'Psychedelic'),
('45', 'Rap'),
('46', 'Rap/R&B'),
('47', 'Reggae'),
('48', 'RnB'),
('49', 'Rock'),
('50', 'Rock/Pop'),
('51', 'RockNRoll'),
('52', 'Roots Reggae'),
('53', 'Soft Rock'),
('54', 'Soul'),
('55', 'Soundtrack'),
('56', 'Techno'),
('57', 'Traditional Folk'),
('58', 'Traditional Pop'),
('59', 'Trip-Hop'),
('60', 'Vocal'),
('61', 'World'),
('62', 'World Classical'),
('63', 'Afro-Beat');

--
-- Table structure for table `nmc_publisher`
--

DROP TABLE IF EXISTS `nmc_publisher`;
CREATE TABLE IF NOT EXISTS `nmc_publisher` (
  `pubID` varchar(6) NOT NULL default '',
  `pubName` varchar(30) default NULL,
  `location` varchar(20) default NULL,
  PRIMARY KEY  (`pubID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Insert data for table `nmc_publisher`
--

INSERT INTO `nmc_publisher` (`pubID`, `pubName`, `location`) VALUES
('a1', 'Warner Bros', 'US'),
('a2', 'Realworld', 'UK'),
('a3', 'Sony', 'JP'),
('a4', 'Atlantic', 'US'),
('a5', 'Naxos', 'UK'),
('a6', 'Blue Note', 'US'),
('a7', 'Decca', 'UK'),
('a8', 'Rounder', 'US'),
('a9', 'Virgin', 'UK');

--
-- Table structure for table `nmc_records`
--

DROP TABLE IF EXISTS `nmc_records`;
CREATE TABLE IF NOT EXISTS `nmc_records` (
  `recordID` int(10) NOT NULL auto_increment,
  `recordTitle` varchar(100) default NULL,
  `recordYear` varchar(4) default NULL,
  `pubID` varchar(6) default NULL,
  `catID` varchar(6) default NULL,
  `recordPrice` decimal(4,2) default NULL,
  KEY `recordID` (`recordID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=979;

--
-- Insert data for table `nmc_records`
--

INSERT INTO `nmc_records` (`recordID`, `recordTitle`, `recordYear`, `pubID`, `catID`, `recordPrice`) VALUES
(978, 'Black President', '1981', 'a7', '63', '11.70'),
(976, 'I.T.T.-International Thief Thief', '1979', 'a7', '63', '11.70'),
(977, 'Sorrow, Tears and Blood', '1977', 'a7', '63', '11.70'),
(651, 'A Biography of the Rev. Absalom Dawe', '2000', 'a7', '27', '11.70'),
(652, 'A Bronx Tale Soundtrack', '2000', 'a1', '36', '7.80'),
(653, 'A Little Deeper', '2000', 'a1', '46', '8.30'),
(654, 'A Meeting by the River', '2000', 'a1', '50', '12.80'),
(655, 'a new day at midnight', '2000', 'a1', '50', '11.50'),
(656, 'A Night at the Village Vanguard [2 CD Set]', '2000', 'a7', '27', '10.70'),
(657, 'A Night at the Village Vanguard, Vol. 2', '2000', 'a7', '27', '8.30'),
(658, 'A Rush of Blood to the Head', '2000', 'a1', '50', '9.30'),
(660, 'A Walk Across The Rooftops', '2000', 'a1', '49', '8.80'),
(661, 'Acoustic Dead', '2000', 'a1', '44', '7.90'),
(662, 'Agaetis Byrjun', '2000', 'a1', '62', '8.40'),
(663, 'All Good Men', '2000', 'a1', '20', '12.90'),
(664, 'All Good Things: (1 of 6) Garcia', '2000', 'a1', '50', '9.90'),
(665, 'All Good Things: (2 of 6) Compliments', '2000', 'a1', '50', '12.90'),
(666, 'All Good Things: (3 of 6) Reflections', '2000', 'a1', '50', '8.50'),
(667, 'All Good Things: (4 of 6) Cats Under the Stars', '2000', 'a1', '50', '10.70'),
(668, 'All Good Things: (5 of 6) Run for the Roses', '2000', 'a1', '50', '8.40'),
(669, 'All Good Things: (6 of 6) Outtakes, Jams & Alternates', '2000', 'a1', '50', '12.90'),
(670, 'Allegro Assai in Bb, K.516c', '2000', 'a5', '12', '12.50'),
(671, 'Almost Acoustic', '2000', 'a4', '15', '9.40'),
(673, 'Ambiances du Sahara: Desert Blues (2 of 2)', '2000', 'a1', '61', '12.70'),
(674, 'American Beauty', '2000', 'a1', '50', '8.60'),
(675, 'Amp', '2000', 'a1', '2', '9.20'),
(677, 'angels with dirty faces', '2000', 'a1', '50', '12.60'),
(678, 'Anokha', '2000', 'a1', '56', '10.10'),
(679, 'Anthem Of The Sun', '2000', 'a1', '44', '9.30'),
(680, 'Anthem of the Sun [Bonus Tracks]', '2000', 'a1', '50', '7.90'),
(681, 'Arabesque [Gut]', '2000', 'a1', '50', '11.80'),
(682, 'Arabesque Zoudge 2', '2000', 'a1', '61', '9.10'),
(683, 'Atlantic Soul', '2000', 'a1', '50', '10.40'),
(684, 'Atlantic Soul Disc 2', '2000', 'a1', '50', '11.70'),
(685, 'Axis Bold As Love', '2000', 'a1', '49', '9.40'),
(686, 'B flat major, Op. 64 no3', '2000', 'a1', '10', '10.50'),
(687, 'B minor, Op. 64 no2', '2000', 'a1', '10', '9.70'),
(688, 'Bambino Por Ti Y Por Nosotros', '2000', 'a3', '30', '9.10'),
(689, 'bari', '2000', 'a3', '30', '8.80'),
(690, 'Below the Bassline', '2000', 'a9', '47', '11.50'),
(691, 'Best of 1980-1990', '2000', 'a1', '50', '8.30'),
(692, 'Best of 1990-2000', '2000', 'a1', '50', '11.90'),
(693, 'Beyond the Missouri Sky (Short Stories)', '2000', 'a7', '27', '8.30'),
(694, 'Blue', '2000', 'a1', '50', '11.40'),
(695, 'Blue Lines', '2000', 'a1', '20', '10.20'),
(696, 'Blues', '2000', 'a6', '9', '9.40'),
(697, 'Blues for Allah', '2000', 'a1', '50', '11.30'),
(698, 'Blues Roots - 1930-1944', '2000', 'a6', '9', '12.40'),
(699, 'Boomer''s Story', '2000', 'a1', '50', '12.60'),
(701, 'bring it on', '2000', 'a1', '50', '8.90'),
(702, 'Broadcasting from Home', '2000', 'a1', '37', '10.20'),
(703, 'Buddha-Bar, Vol. III (1 of 2)', '2000', 'a1', '20', '8.30'),
(704, 'Buena Vista Social Club', '2000', 'a3', '30', '11.60'),
(705, 'Burnt Weeny Sandwich', '2000', 'a1', '22', '10.70'),
(706, 'C major, Op. 64 No1', '2000', 'a1', '10', '11.70'),
(707, 'C major, Op. 9 no 1', '2000', 'a5', '12', '12.20'),
(708, 'Casa Babylon', '2000', 'a1', '50', '11.20'),
(709, 'Catalpa', '2000', 'a1', '21', '10.20'),
(710, 'Cello Suites', '2000', 'a5', '12', '11.50'),
(711, 'Chilled Ibiza', '2000', 'a1', '20', '12.70'),
(712, 'Chris Whitley Compilation', '2000', 'a6', '9', '7.90'),
(713, 'Chris Whitley Live at Martyrs''', '2000', 'a1', '50', '8.10'),
(714, 'Clandestino', '2000', 'a3', '30', '11.00'),
(715, 'Clarinet Quintet in A, K.581', '2000', 'a5', '12', '9.90'),
(716, 'Clarinet Trio in Eb, K.498', '2000', 'a5', '12', '10.80'),
(717, 'Clasicos de la Provincia', '2000', 'a3', '30', '11.20'),
(718, 'Classic Country Music, Vol. 1', '2000', 'a4', '15', '10.80'),
(719, 'Clear Spot', '2000', 'a1', '51', '9.50'),
(720, 'Comfort In Sound', '2000', 'a1', '50', '8.60'),
(721, 'Complete 50''s Chess Recordings (1 of 2)', '2000', 'a6', '9', '11.70'),
(722, 'Complete 50''s Chess Recordings (2 of 2)', '2000', 'a6', '9', '10.90'),
(723, 'Complete Early Recordings', '2000', 'a6', '9', '12.50'),
(724, 'Complete HMV Recordings', '2000', 'a5', '12', '10.00'),
(725, 'Complete Imperial Recordings', '2000', 'a6', '9', '10.30'),
(726, 'Complete In A Silent Way Sessions, Disk 1', '2000', 'a7', '27', '8.10'),
(727, 'Complete In A Silent Way Sessions, Disk 2', '2000', 'a7', '27', '10.70'),
(728, 'Complete In A Silent Way Sessions, Disk 3', '2000', 'a7', '27', '12.50'),
(729, 'Complete Savoy Masters', '2000', 'a7', '27', '9.00'),
(730, 'Complete Savoy Masters CD 2', '2000', 'a7', '27', '9.10'),
(731, 'Complete Works, Vol. 1 (1929-1937)', '2000', 'a6', '9', '10.70'),
(732, 'Concert by the Sea', '2000', 'a7', '27', '9.00'),
(733, 'Court and Spark', '2000', 'a1', '50', '12.70'),
(734, 'Cowgirl''s Prayer', '2000', 'a4', '15', '10.10'),
(735, 'Crown of Jewels', '2000', 'a4', '15', '10.00'),
(736, 'Cuentame Vol.3', '2000', 'a3', '30', '10.20'),
(737, 'D major, Op 64 no 5 "The Lark"', '2000', 'a5', '12', '12.40'),
(738, 'D minor, Op. 9 no 4', '2000', 'a5', '12', '9.10'),
(739, 'Daisies of the Galaxy', '2000', 'a1', '49', '8.60'),
(740, 'Death of a Ladies Man', '2000', 'a1', '49', '8.40'),
(741, 'Definitive Collection', '2000', 'a1', '54', '12.20'),
(742, 'Dial Masters, Original Choice Takes, Disk 1 West Coast', '2000', 'a7', '27', '11.80'),
(743, 'Dial Masters, Original Choice Takes, Disk 2 East Coast', '2000', 'a7', '27', '8.50'),
(744, 'Dick''s Picks 3 (Pembroke Pines', '2000', 'a1', '44', '8.30'),
(745, 'Dick''s Picks 3 Disk 2', '2000', 'a1', '44', '9.50'),
(746, 'Dick''s Picks, Vol. 5 (2 of 3)', '2000', 'a1', '50', '10.10'),
(747, 'Dirt Floor', '2000', 'a1', '50', '8.40'),
(748, 'Dog''s', '2000', 'a1', '49', '9.60'),
(749, 'Dose', '2000', 'a1', '50', '10.50'),
(750, 'Dream of 100 Nations', '2000', 'a1', '20', '9.10'),
(751, 'Duets', '2000', 'a4', '15', '11.80'),
(756, 'Dummy', '2000', 'a1', '49', '12.90'),
(757, 'E Flat major, Op 64 no 6', '2000', 'a5', '12', '12.30'),
(758, 'Early Various', '2000', 'a1', '40', '10.90'),
(759, 'Echos du Paradis: Sufi Soul -- Afghanistan Egypt Iran (1 of 2)', '2000', 'a1', '61', '11.40'),
(760, 'Echos du Paradis: Sufi Soul -- Afghanistan Egypt Iran (2 of 2)', '2000', 'a1', '61', '11.80'),
(761, 'eliades ochoa', '2000', 'a3', '30', '10.40'),
(762, 'Emergency Tender', '2000', 'a1', '3', '9.50'),
(763, 'Emergency Tender', '2000', 'a1', '48', '11.30'),
(764, 'Equal Rights', '2000', 'a9', '47', '8.00'),
(765, 'Europe ''72 (1 of 2)', '2000', 'a1', '50', '12.70'),
(766, 'Europe ''72 (2 of 2)', '2000', 'a1', '50', '12.70'),
(767, 'Exist Dance: Transmitting From Heaven', '2000', 'a1', '2', '8.30'),
(768, 'Extra Virgin', '2000', 'a1', '20', '8.10'),
(769, 'Feeling Strangely Fine', '2000', 'a1', '50', '11.70'),
(770, 'Feels Like Home', '2000', 'a4', '15', '12.70'),
(771, 'Finally We Are No One', '2000', 'a1', '20', '11.50'),
(772, 'For Your Love', '2000', 'a1', '39', '11.90'),
(773, 'Fragments of Freedom', '2000', 'a1', '49', '8.50'),
(774, 'Frank Sinatra [Avid]', '2000', 'a1', '60', '8.70'),
(775, 'Friendly As A Hand Grenade', '2000', 'a1', '34', '9.80'),
(776, 'Funky Kingston', '2000', 'a9', '47', '10.70'),
(777, 'G major, Op 64 no 4', '2000', 'a5', '12', '9.40'),
(778, 'G major, Op. 9 no 3', '2000', 'a5', '12', '11.20'),
(779, 'Garcia 04-10-82', '2000', 'a4', '15', '10.80'),
(780, 'gd-1989-10-09', '2000', 'a1', '44', '10.10'),
(781, 'gd2-24-71', '2000', 'a1', '44', '11.60'),
(782, 'gd5-8-77', '2000', 'a1', '44', '12.30'),
(783, 'Ghetto Paradise', '2000', 'a7', '27', '8.70'),
(784, 'Glad Day', '2000', 'a7', '27', '11.20'),
(785, 'Goldberg Variations (Schiff, Andras)', '2000', 'a5', '12', '10.90'),
(786, 'Grace', '2000', 'a1', '50', '8.80'),
(787, 'Grateful Dead', '2000', 'a1', '40', '10.60'),
(788, 'Grateful Dead - 03-17-95', '2000', 'a1', '44', '11.30'),
(789, 'Grateful Dead (05-22-77)', '2000', 'a1', '44', '11.60'),
(790, 'Grateful Dead (08-21-68)', '2000', 'a1', '44', '11.30'),
(791, 'Hand on the Torch', '2000', 'a1', '46', '8.50'),
(792, 'Hard Rain', '2000', 'a1', '50', '8.70'),
(793, 'Hats', '2000', 'a1', '49', '11.40'),
(794, 'Heart Shaped World', '2000', 'a1', '50', '12.00'),
(795, 'Hecho, Es Simple', '2000', 'a1', '46', '11.50'),
(796, 'Hell Among The Yearlings', '2000', 'a8', '8', '12.10'),
(797, 'Hooteroll?', '2000', 'a1', '50', '8.00'),
(798, 'Hot Rats', '2000', 'a1', '50', '12.90'),
(799, 'Hotel Asturias', '2000', 'a3', '30', '10.70'),
(800, 'How Strong Is A Woman - The Story of Ann Peebles (1969-80) Disc 1', '2000', 'a1', '49', '11.10'),
(801, 'If 60''s Were 90''s', '2000', 'a1', '50', '10.50'),
(802, 'If 60''s were 90''s (remix)', '2000', 'a1', '20', '12.10'),
(803, 'I''m Your Man', '2000', 'a1', '41', '12.70'),
(804, 'Introducing...Ruben Gonzalez', '2000', 'a3', '30', '13.00'),
(805, 'It''s Like This', '2000', 'a1', '50', '11.40'),
(806, 'Jack Bonus', '2000', 'a1', '16', '9.60'),
(807, 'Jerry Garcia', '2000', 'a4', '15', '12.30'),
(808, 'Jerry Garcia (04-10-82)', '2000', 'a4', '15', '8.90'),
(809, 'Jerry Garcia Band', '2000', 'a4', '15', '12.90'),
(810, 'Jesus Wept', '2000', 'a1', '46', '7.90'),
(811, 'jgb2-6-72', '2000', 'a4', '15', '12.40'),
(812, 'Kambara Music in Native Tongues', '2000', 'a1', '21', '9.30'),
(813, 'Karma Lounge', '2000', 'a1', '20', '9.00'),
(814, 'Kate & Anna McGarrigle [Carthage]', '2000', 'a1', '21', '11.60'),
(815, 'Kiko', '2000', 'a1', '50', '12.70'),
(816, 'Kind of Blue', '2000', 'a7', '27', '12.70'),
(817, 'Kinks Greatest Hits!', '2000', 'a1', '39', '8.40'),
(818, 'Knockin'' on Heaven''s Door', '2000', 'a4', '15', '11.20'),
(819, 'La Revancha del Tango', '2000', 'a1', '61', '10.90'),
(820, 'Ladies and Gentlemen We Are Floating in Space', '2000', 'a1', '4', '8.20'),
(821, 'L�grimas Negras', '2000', 'a3', '30', '10.70'),
(822, 'Latin Playboys', '2000', 'a1', '50', '9.80'),
(823, 'Lazer Guided Melodies', '2000', 'a1', '4', '8.40'),
(824, 'Let It Come Down', '2000', 'a1', '4', '12.40'),
(825, 'Let Me See', '2000', 'a1', '59', '11.00'),
(826, 'Let The Freak Flag Fly', '2000', 'a1', '2', '10.00'),
(827, 'Life For Rent', '2000', 'a1', '41', '12.70'),
(828, 'Life for Rent', '2000', 'a1', '49', '10.00'),
(829, 'Life On A String', '2000', 'a1', '6', '11.20'),
(830, 'Live in Tasmania', '2000', 'a1', '43', '9.30'),
(831, 'Live/Dead [Bonus Tracks]', '2000', 'a1', '50', '12.30'),
(832, 'Lo Mejor de la Vida', '2000', 'a3', '30', '11.60'),
(833, 'London Calling', '2000', 'a1', '50', '8.60'),
(834, 'Lonesome Prison Blues', '2000', 'a4', '15', '12.60'),
(835, 'Lost Songs 95-98', '2000', 'a1', '50', '10.40'),
(836, 'Madonna', '2000', 'a1', '41', '10.20'),
(837, 'Malagasy Guitar/Music from Madagascar', '2000', 'a1', '61', '8.10'),
(838, 'Marquee Moon', '2000', 'a1', '38', '12.00'),
(842, 'Medieval Women'' Song', '2000', 'a1', '33', '12.50'),
(843, 'mercedes_benz', '2000', 'a1', '49', '9.10'),
(844, 'Mi Tierra', '2000', 'a1', '50', '9.80'),
(845, 'Million Sellers 06 Sixties 02', '2000', 'a1', '40', '10.40'),
(846, 'Miss America', '2000', 'a4', '15', '10.50'),
(847, 'mo wax - headz 1 - cd1', '2000', 'a1', '2', '9.70'),
(848, 'Monk Jazz Classics Collection', '2000', 'a7', '27', '9.00'),
(849, 'MoodSwing', '2000', 'a7', '27', '11.10'),
(850, 'More Best Of', '2000', 'a1', '18', '10.10'),
(851, 'Music for Airports', '2000', 'a1', '5', '10.60'),
(852, 'Mustt Mustt', '2000', 'a1', '61', '12.70'),
(853, 'My Favorite Things [Atlantic]', '2000', 'a7', '27', '12.10'),
(854, 'My Life in the Bush of Ghosts', '2000', 'a1', '50', '11.80'),
(855, 'Nada Se Detiene', '2000', 'a1', '31', '12.10'),
(856, 'Night Ride Home', '2000', 'a1', '50', '12.10'),
(857, 'No Angel', '2000', 'a1', '41', '9.70'),
(859, 'Nocturnes - Biret, Idil', '2000', 'a1', '29', '11.20'),
(860, 'Nordic Days', '2000', 'a1', '20', '11.70'),
(861, 'NYC Man disk one', '2000', 'a1', '50', '11.20'),
(862, 'NYC Man disk two', '2000', 'a1', '49', '12.60'),
(863, 'O Brother, Where Art Thou?', '2000', 'a1', '55', '11.40'),
(864, 'Odelay', '2000', 'a1', '4', '8.60'),
(865, 'OK Computer', '2000', 'a1', '50', '8.10'),
(866, 'On The Road', '2000', 'a1', '49', '9.20'),
(867, 'Onka''s Big Moka', '2000', 'a1', '49', '8.70'),
(868, 'Op. 1, No 6 C Major', '2000', 'a5', '12', '10.40'),
(869, 'Op. 1, Nos 5 Eb Major', '2000', 'a5', '12', '8.50'),
(870, 'Op. 2, No 1 A Major', '2000', 'a5', '12', '8.60'),
(871, 'Op. 2, No 2 E Major', '2000', 'a5', '12', '11.60'),
(872, 'Open Heart Zoo', '2000', 'a1', '50', '8.30'),
(873, 'Out of Time', '2000', 'a1', '50', '8.90'),
(874, 'Parachutes', '2000', 'a1', '49', '12.90'),
(875, 'Partita no 1 in B min, BWV 1002', '2000', 'a5', '12', '12.10'),
(876, 'Partita no 2 in D min, BWV 1004', '2000', 'a5', '12', '8.90'),
(877, 'Partita no 3 in E, BWV 1006', '2000', 'a5', '12', '8.00'),
(878, 'Perfect Day', '2000', 'a1', '50', '8.30'),
(879, 'Play', '2000', 'a1', '20', '11.50'),
(880, 'Profile (The Best of Emmylou Harris)', '2000', 'a4', '15', '8.20'),
(881, 'Promo Only Modern Rock Feb 200', '2000', 'a1', '49', '12.90'),
(882, 'Proxima Estacion: Esperanza', '2000', 'a3', '30', '12.30'),
(883, 'Psychic Karaoke', '2000', 'a2', '25', '9.50'),
(884, 'quelqu''un m''a dit', '2000', 'a1', '35', '11.60'),
(885, 'Rain Dogs', '2000', 'a1', '50', '8.20'),
(886, 'Rare Tracks', '2000', 'a1', '32', '10.90'),
(887, 'Ray of Light', '2000', 'a1', '50', '12.50'),
(888, 'Ray of Light [Japan Bonus CD]', '2000', 'a1', '50', '12.30'),
(889, 'Ray of Light [Japan Bonus Track]', '2000', 'a1', '50', '8.00'),
(890, 'Reckoning', '2000', 'a1', '50', '10.50'),
(891, 'Red Dirt Girl', '2000', 'a4', '15', '8.30'),
(892, 'Red Hot & Rhapsody', '2000', 'a1', '3', '11.70'),
(893, 'Reggae Greats', '2000', 'a9', '47', '9.40'),
(894, 'Reich Remixed', '2000', 'a1', '2', '9.10'),
(895, 'Revival', '2000', 'a8', '8', '11.90'),
(896, 'Ring a Ding Ding', '2000', 'a1', '58', '12.40'),
(897, 'Rocket House', '2000', 'a1', '50', '8.00'),
(898, 'Roll Away The Stone', '2000', 'a6', '9', '12.50'),
(899, 'Roots', '2000', 'a1', '32', '11.90'),
(900, 'Roots Reggae', '2000', 'a9', '47', '12.50'),
(901, 'Rough & Steamy', '2000', 'a6', '9', '11.10'),
(902, 'Rumba Argelina', '2000', 'a1', '61', '11.80'),
(903, 'Running on Empty', '2000', 'a1', '42', '12.60'),
(904, 'Saint Dominic''s Preview', '2000', 'a1', '50', '8.30'),
(905, 'Sandinista disk 2', '2000', 'a1', '50', '10.20'),
(906, 'Scrolls of the Prophet: The Best of Peter Tosh', '2000', 'a1', '52', '9.30'),
(907, 'Sheryl Crow', '2000', 'a1', '50', '8.40'),
(908, 'Short Sharp Shocked', '2000', 'a1', '14', '8.50'),
(909, 'Short Sharp Shocked', '2000', 'a1', '24', '8.50'),
(910, 'Short Sharp Shocked', '2000', 'a1', '49', '10.90'),
(911, 'Show Time', '2000', 'a1', '50', '10.70'),
(912, 'Signs of Life', '2000', 'a1', '37', '8.30'),
(913, 'Silk Road - Disc 1:Masters and Traditions', '2000', 'a1', '61', '10.30'),
(914, 'Silk Road (Disc 2: Minstrels and Lovers)', '2000', 'a1', '61', '10.30'),
(915, 'Sinatra at the Sands', '2000', 'a1', '58', '8.50'),
(916, 'Sixties Jukebox Classics', '2000', 'a1', '39', '12.00'),
(917, 'Sixties Jukebox Classics', '2000', 'a1', '50', '12.30'),
(918, 'Skip''s Piano Blues', '2000', 'a6', '9', '11.80'),
(919, 'So What', '2000', 'a7', '27', '10.10'),
(920, 'Son de Oriente (Cuarteto Patria)', '2000', 'a3', '30', '10.60'),
(921, 'Songbird', '2000', 'a1', '50', '10.10'),
(922, 'Songs for Swingin'' Lovers!', '2000', 'a1', '58', '8.40'),
(923, 'Songs of the Civil War [Columbia]', '2000', 'a1', '50', '9.90'),
(924, 'Soundz of the Asian Underground', '2000', 'a1', '28', '10.80'),
(925, 'Splanglish 101', '2000', 'a1', '17', '9.00'),
(926, 'Sticky Fingers', '2000', 'a1', '40', '9.80'),
(927, 'Story of Arabic Song', '2000', 'a1', '61', '8.90'),
(928, 'Strange Angels', '2000', 'a1', '50', '10.70'),
(929, 'Stranger Than Fiction', '2000', 'a7', '27', '10.60'),
(930, 'Sublime Illusion', '2000', 'a3', '30', '10.90'),
(931, 'Supernatural', '2000', 'a1', '20', '10.10'),
(932, 'SWAN SONG CD 2', '2000', 'a1', '34', '9.20'),
(933, 'T Shirt', '2000', 'a2', '25', '12.50'),
(934, 'Tawchih', '2000', 'a1', '61', '10.70'),
(935, 'The Atlantic Recordings', '2000', 'a1', '49', '8.80'),
(936, 'The Bends', '2000', 'a1', '50', '8.10'),
(937, 'The Best of UB40', '2000', 'a9', '47', '12.00'),
(938, 'The Big Chill Soundtrack', '2000', 'a1', '11', '12.90'),
(939, 'The Bliss Album...?', '2000', 'a1', '46', '12.90'),
(940, 'The Complete Early Recordings of Skip James', '2000', 'a6', '9', '12.70'),
(941, 'The Complete Pacific Jazz Live Recordings Disc 1', '2000', 'a7', '27', '12.70'),
(942, 'The Complete Reprise Studio Recordings', '2000', 'a1', '53', '7.90'),
(943, 'The Good Earth', '2000', 'a1', '50', '8.90'),
(944, 'The Grateful Dead [1971]', '2000', 'a1', '50', '10.80'),
(945, 'The Low Spark of High Heeled Boys', '2000', 'a1', '50', '9.80'),
(946, 'The Roches', '2000', 'a1', '21', '8.00'),
(947, 'The Shape of Jazz to Come', '2000', 'a7', '27', '12.10'),
(948, 'The Spotlight Kid', '2000', 'a1', '51', '7.80'),
(949, 'The Texas Campfire Tapes', '2000', 'a1', '23', '9.30'),
(950, 'The Texas Campfire Tapes', '2000', 'a1', '50', '12.90'),
(951, 'The Transfiguration of Blind Joe Death', '2000', 'a1', '21', '10.90'),
(952, 'The Transfiguration of Blind Joe Death', '2000', 'a1', '57', '11.40'),
(953, 'the ultimate collection', '2000', 'a5', '12', '9.60'),
(954, 'The Very Best of Frank Sinatra', '2000', 'a1', '58', '8.10'),
(955, 'The Wind', '2000', 'a1', '50', '12.70'),
(956, 'The Wolf That House Built', '2000', 'a1', '50', '8.20'),
(957, 'Thimar', '2000', 'a7', '27', '9.00'),
(958, 'This Time', '2000', 'a1', '50', '12.90'),
(959, 'Tonight''s the Night', '2000', 'a1', '50', '9.50'),
(960, 'Touch Wood', '2000', 'a7', '27', '12.90'),
(962, 'Tranquility Favourites', '2000', 'a1', '2', '8.70'),
(963, 'Tribute to the Cuarteto Patria', '2000', 'a3', '30', '12.90'),
(964, 'Trova', '2000', 'a1', '40', '7.80'),
(965, 'Tupelo Honey', '2000', 'a1', '50', '11.60'),
(966, 'Two A.D.', '2000', 'a1', '19', '12.30'),
(967, 'Two Against Nature', '2000', 'a7', '27', '12.30'),
(968, 'Two Against Nature', '2000', 'a1', '41', '11.20'),
(969, 'Unknown', '2000', 'a1', '49', '11.80'),
(970, 'Viva Cuba', '2000', 'a3', '30', '11.80'),
(971, 'VU and Nico', '2000', 'a1', '26', '10.60'),
(972, 'Wavelength', '2000', 'a1', '50', '12.10'),
(973, 'Welcome, Convalescence', '2000', 'a1', '21', '9.80'),
(974, 'Where is the Love', '2000', 'a1', '45', '12.70'),
(975, 'White Ladder', '2000', 'a1', '50', '8.20');

--
-- Table structure for table `nmc_special_offers`
--

DROP TABLE IF EXISTS `nmc_special_offers`;
CREATE TABLE IF NOT EXISTS `nmc_special_offers` (
  `recordID` int(10) NOT NULL,
  `recordTitle` varchar(100) default NULL,
  `recordYear` varchar(4) default NULL,
  `pubID` varchar(6) default NULL,
  `catID` varchar(6) default NULL,
  `recordPrice` decimal(4,2) default NULL,
  KEY `recordID` (`recordID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Insert data for table `nmc_special_offers`
--

INSERT INTO `nmc_special_offers` (`recordID`, `recordTitle`, `recordYear`, `pubID`, `catID`, `recordPrice`) VALUES
(663, 'All Good Men', '2000', 'a1', '20', '5.90'),
(681, 'Arabesque [Gut]', '2000', 'a1', '50', '7.80'),
(692, 'Best of 1990-2000', '2000', 'a1', '50', '6.90'),
(708, 'Casa Babylon', '2000', 'a1', '50', '4.20'),
(722, 'Complete 50''s Chess Recordings (2 of 2)', '2000', 'a6', '9', '3.90'),
(742, 'Dial Masters, Original Choice Takes, Disk 1 West Coast', '2000', 'a7', '27', '9.80'),
(747, 'Dirt Floor', '2000', 'a1', '50', '4.40'),
(748, 'Dog''s', '2000', 'a1', '49', '3.60'),
(749, 'Dose', '2000', 'a1', '50', '5.50'),
(750, 'Dream of 100 Nations', '2000', 'a1', '20', '7.10'),
(778, 'G major, Op. 9 no 3', '2000', 'a5', '12', '8.20'),
(814, 'Kate & Anna McGarrigle [Carthage]', '2000', 'a1', '21', '10.60'),
(842, 'Medieval Women'' Song', '2000', 'a1', '33', '5.50'),
(859, 'Nocturnes - Biret, Idil', '2000', 'a1', '29', '8.20'),
(870, 'Op. 2, No 1 A Major', '2000', 'a5', '12', '5.60'),
(888, 'Ray of Light [Japan Bonus CD]', '2000', 'a1', '50', '9.30'),
(904, 'Saint Dominic''s Preview', '2000', 'a1', '50', '4.30');

--
-- Creating the table structure for table `nmc_users`
--

DROP TABLE IF EXISTS `nmc_users`;
CREATE TABLE IF NOT EXISTS `nmc_users` (
  `userID` int(11) NOT NULL auto_increment,
  `firstname` varchar(255) default NULL,
  `surname` varchar(255) default NULL,
  `username` varchar(50) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  PRIMARY KEY  (`userID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Inserting data for table `nmc_users`
--

INSERT INTO `nmc_users` (`userID`, `firstname`, `surname`, `username`, `passwordHash`) VALUES
(1, 'Allison', 'Smith', 'admin1234', '$2y$10$241VguAQ6fD12z38.FQ/bul3NU8yYoIXPQSbeN6lU5nSlyJsLVjgG'),
(2, 'Mark', 'Jones', 'admin1235', '$2y$10$zbGZjS/gjvWLUjdlhKihx.rMzqaZ7ZSCGj3Maakb7Uxz43327Ag8.');