-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 01:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookex4`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_loginid` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_loginid`, `password`, `full_name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin', '25e4ee4e9229397b6b17776bfceaf8e7', 'Admin User', 'admin@example.com', '2024-10-29 15:18:07', '2024-10-29 15:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `book_type` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `is_borrowed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `user_id`, `book_name`, `author`, `book_type`, `language`, `description`, `image`, `created_at`, `status`, `is_borrowed`) VALUES
(21, 2, 'Circles of Seven', 'Bryan Davis', 'Fantasy, Dragons, Christian, Christian Fiction, Young Adult, Fiction, Christian Fantasy, Adventure, ', 'English', 'The first book, Raising Dragons, plunged two teenagers, Billy Bannister and Bonnie Silver, into mind-boggling mysteries, life or death pursuits, and deadly sword-to-sword battles.\r\nIn the second book, The Candlestone, Billy is led into mortal combat with a powerful dragon slayer. Separated from his friends and finding his dragon traits useless against this enemy, he has to rely on new weapons, a sword and shield he cannot even see.\r\nNow in Circles of Seven, using their dragon traits and the wisdom they gained through their earlier adventures, Billy and Bonnie explore a multi-dimensional domain of evil. In this realm, they navigate seven perilous worlds, each one manifested in a circular plane of existence that leads them deeper into the domain of a powerful enemy.\r\nThe seventh circle holds a group of prisoners, captives of the evil mistress of the circles, and Billy has to find a way to set them free and give them new life. When tragedy strikes along the way, Billy has to face the most difficult decision of his life, whether to forsake Bonnie to rescue the prisoners or to find a way to save her, his best friend in the world.\r\nFilled with action, danger, and suspense, Circles of Seven is sure to keep readers in their seats, following Billy and Bonnie to the exciting conclusion.\r\n', 'bookimg/IMG_0348.JPEG', '2024-11-08 14:01:08', 'approved', 0),
(22, 2, 'The Shack', 'WM. Paul Young', 'Fiction, Christian, Christian Fiction, Spirituality, Faith, Religion, Inspirational, Christianity,', 'English', 'Mackenzie Allen Philips\' youngest daughter, Missy, has been abducted during a family vacation and evidence that she may have been brutally murdered is found in an abandoned shack deep in the Oregon wilderness. Four years later in the midst of his Great Sadness, Mack receives a suspicious note, apparently from God, inviting him back to that shack for a weekend. Against his better judgment he arrives at the shack on a wintry afternoon and walks back into his darkest nightmare. What he finds there will change Mack\'s world forever.\r\nIn a world where religion seems to grow increasingly irrelevant The Shack wrestles with the timeless question, \"Where is God in a world so filled with unspeakable pain?\" The answers Mack gets will astound you and perhaps transform you as much as it did him. You\'ll want everyone you know to read this book!\r\n', 'bookimg/IMG_0352.JPEG', '2024-11-08 14:01:51', 'approved', 1),
(23, 2, 'Star Trek Voyager – Children of the Storm', 'Kirsten Beyer', 'Star Trek, Science Fiction, Star Trek Voyager, Fiction, Science Fiction Fantasy, Adventure, Aliens, ', 'English', '\"YOU WERE TOLD NOT TO RETURN TO OUR SPACE.\"\r\n\r\nLittle is known about the Children of the Storm — one of the most unique and potentially dangerous species the Federation has ever encountered. Non-corporeal and traveling through space in vessels apparently propelled by thought alone, the Children of the Storm at one time managed to destroy thousands of Borg ships without firing a single conventional weapon.\r\n\r\nNow in its current mission to the Delta Quadrant, Captain Chakotay and Fleet Commander Afsarah Eden must unravel why three Federation starships — the U.S.S. Quirinal, Planck, and Demeter — have suddenly been targeted without provocation and with extreme prejudice by the powerful Children of the Storm... with thousands of Starfleet lives at stake from an enemy that the Federation can only begin to comprehend...\r\n', 'bookimg/IMG_0354.JPEG', '2024-11-08 14:02:36', 'approved', 0),
(24, 2, 'The Templar Throne', 'Paul Christopher', 'Thriller, Historical Fiction, Fiction, Mystery, Adventure, Audiobook, Historical, Action, Suspense, ', 'English', 'A man in search of the truth-against an ancient brotherhood that uses secrecy as the ultimate weapon.\r\n\r\nIn the 14th century, Templar knight Jean de St. Clair was tasked with piloting the order\'s treasure-laden fleets off the coast of France. To this end, he used the Jacob\'s Staff-a nautical instrument supposedly developed in his own time. But retired Army Ranger Lt. Col. John Holliday possesses a Staff he found in the hands of a 4,000 year-old Egyptian mummy. Holliday suspects that St. Clair may hold the key to unlocking the mystery of the ruthless, enigmatic Templars.\r\n\r\nBut there are those who believe that some questions should remain unanswered. And that the answers Holliday seeks should go with him to the grave...\r\n', 'bookimg/IMG_0356.JPEG', '2024-11-08 14:03:41', 'approved', 0),
(25, 1, 'One Hit', 'Donald A. Davis, Jack Coughlin', 'Fiction', 'English', 'Top-ranked sniper Kyle Swanson was a promising young Marine on a dangerous peace-keeping mission in Mogadishu, Somalia when he first captured a ruthless warlord known as \'the Cobra\'. It could have cost Swanson his life - had it not been for the schoolteacher who risked her own to save him.\r\n\r\nNow Swanson is sent on a mission to track down two targets: one is the Cobra, who spent twenty years imprisoned after Swanson captured him and is now back in charge of the Somali underworld, vowing vengeance on the Marine; the other is the grandson of the schoolteacher who once saved his life, who has joined the Cobra\'s army of terror.\r\n\r\nThe boy had been swept up in a Detroit-based Somali gang before fleeing back to the protection of the Cobra. His grandmother swears he\'s innocent, but the CIA tells Kyle to take him out. To find the truth and accomplish his mission, Swanson must return to the one place he had hoped he\'d never see again - where the Cobra lies in wait.\r\n', 'bookimg/IMG_0358.JPEG', '2024-11-08 14:04:20', 'approved', 1),
(26, 1, 'American Assassin', 'Vince Flynn', 'Fiction, Thriller, Espionage, Action, Mystery, Audiobook, Mystery Thriller, Spy Thriller, Suspense, ', 'English', 'Mitch Rapp is a gifted college athlete who just wants retribution for the Pan Am Lockerbie attack. He trains six months intensely with other clandestine operatives, under CIA Operations Director Thomas Stansfield and protégé Irene Kennedy, to stop terrorists before they reach America. The assassin leaves a trail of bodies from Istanbul across Europe to Beirut, where he needs every ounce of skill and cunning to survive the war-ravaged city and its deadly terrorist factions.', 'bookimg/IMG_0360.JPEG', '2024-11-08 14:04:57', 'approved', 0),
(27, 1, 'The Errant King – The Dark Sea Annals', 'Wayne Thomas Bayson', ': Fantasy, Christian Fantasy, Christian Fiction, Christian, Adventure, Fiction, Young Adult, Teen', 'English', 'Deep in the caves of the distant Hinderlands, an ancient menace stirs. Townsfolk shudder at violent memories of The Red Queen and even dare to whisper the name Raudrim. At the same time, word comes to Alastair that Cythraul has at last resurfaced, seeking a devastating weapon in the ruins of Grayvalon. Blood-soaked clues lead Alastair into a confrontation from which only one warrior will return alive. Meanwhile in Anglinore, young Lochlan Stormgarden, the new High King of Myriad, leaves the pomp and politics of the throne once too often. While blending in with the people of his kingdom, Loch suddenly realizes that he\'s put them all at risk. The fate of his new found love Arianna, his best friend Telwyn, his family, and indeed the world of Myriad all depend on the decisions of the errant king.\r\nAbout THE DARK SEA ANNALS series:\r\nA noble king discovers what happens when he leaves a door open for evil. The disastrous consequences impact generations, leaving the throne of Anglinore to a wicked despot, the kingdom in ruins, and Aravel\'s son Loch in exile. To throw down the vile new authority, Loch will need to find the fabled Halfainin and raise a new army from a world of reluctant citizens. Together with his archer friend Ariana, Loch will face adventures that span the world of Myriad, creatures that defy imagination, and choices great and terrible—all these recorded in The Dark Sea Annals.\r\n', 'bookimg/IMG_0363.JPEG', '2024-11-08 14:05:59', 'approved', 0),
(28, 1, 'Maximum Ride – School’s Out – Forever', 'James Patterson', 'Young Adult, Fantasy, Science Fiction, Fiction, Adventure, Paranormal, Action, Teen, Romance, Childr', 'English', ': In this eagerly awaited follow-up, brave bird-kid Max and her flock are discovered by an FBI agent and forced to go to \"school.\" There is no such thing as an ordinary day as Max deciphers how and when she\'s supposed to save the world, and she faces her greatest enemy--a clone of herself. Little, Brown and Company.', 'bookimg/IMG_0365.JPEG', '2024-11-08 14:06:55', 'approved', 0),
(29, 3, 'Maximum Ride – The Angel Experiment', 'James Patterson', 'Young Adult, Fantasy, Science Fiction, Fiction, Adventure, Paranormal, Action, Teen, Mystery, Urban ', 'English', ': Six unforgettable kids — with no families, no homes — are running for their lives. Max Ride and her best friends have the ability to fly. And that\'s just the beginning of their amazing powers. But they don\'t know where they come from, who\'s hunting them, why they are different from all other humans... and if they\'re meant to save mankind — or destroy it.', 'bookimg/IMG_0367.JPEG', '2024-11-08 14:07:50', 'approved', 0),
(30, 3, 'The Awakening', 'Kelley Armstrong', 'Young Adult, Fantasy, Paranormal, Urban Fantasy, Supernatural, Romance, Magic, Werewolves, Ghosts,', 'English', 'If you had met me a few weeks ago, you probably would have described me as an average teenage girl - someone normal. Now my life has changed forever and I’m as far away from normal as it gets. A living science experiment - not only can I see ghosts, but I was genetically altered by a sinister organization called Edison Group. What does that mean? For starters. I\'m a teenage necromancer whose powers are out of control: I raise the dead without even trying. Trust me, that is not a power you want to have. Ever.\r\n\r\nNow I’m running for my life with three of my supernatural friends - a charming sorcerer, a cynical werewolf, and a disgruntled witch - and we have to find someone who can help us before the Edison Group finds us first. Or die trying.\r\n', 'bookimg/IMG_0369.JPEG', '2024-11-08 14:08:25', 'approved', 0),
(31, 3, 'Fang', 'James Patterson', 'Young Adult, Fantasy, Science Fiction, Fiction, Adventure, Romance, Paranormal, Action, Teen, Childr', 'English', 'Being a kid with wings -- constantly on the run -- has never been easy, and Max and her flock are getting tenser than ever. First, on a trip to Africa, they meet a mysterious billionaire whose intense scrutiny of the Flock makes her fear the worst. And as if an impending apocalypse weren\'t bad enough, canny birdkid Angel makes a dire prophecy about Max\'s soul mate: Fang will be the first to die. Max\'s desperate desire to protect Fang brings the two closer than ever. But can the team weather the storm, or will the turmoil rip them apart for the last time?', 'bookimg/IMG_0371.JPEG', '2024-11-08 14:09:04', 'approved', 0),
(32, 3, 'Percy Jackson and the Olympians – The Titan’s Curse', 'Rick Riordan', 'Fantasy, Young Adult, Mythology, Fiction, Middle Grade, Adventure, Greek Mythology, Childrens, Urban', 'English', 'It\'s not everyday you find yourself in combat with a half-lion, half-human.\r\n\r\nBut when you\'re the son of a Greek god, it happens. And now my friend Annabeth is missing, a goddess is in chains and only five half-blood heroes can join the quest to defeat the doomsday monster.\r\n\r\nOh, and guess what? The Oracle has predicted that not all of us will survive...\r\n', 'bookimg/IMG_0374.JPEG', '2024-11-08 14:09:34', 'approved', 0),
(33, 3, 'The Lord of the Rings – The Fellowship of the Ring', 'J.R.R Tolkien', 'Fantasy, Classics, Fiction, Adventure, Audiobook, High Fantasy, Science Fiction, Fantasy, Epic Fanta', 'English', 'One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them.\r\n\r\nIn ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell into the hands of Bilbo Baggins, as told in The Hobbit.\r\n\r\nIn a sleepy village in the Shire, young Frodo Baggins finds himself faced with an immense task, as his elderly cousin Bilbo entrusts the Ring to his care. Frodo must leave his home and make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ring and foil the Dark Lord in his evil purpose.\r\n', 'bookimg/IMG_0376.JPEG', '2024-11-08 14:10:12', 'approved', 0),
(34, 4, 'The Lord of the Rings – The Two Towers', 'J.R.R Tolkien', ': Fantasy, Fiction, Adventure, High Fantasy, Audiobook, Science Fiction Fantasy, Epic Fantasy, Novel', 'English', 'One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them.\r\n\r\nFrodo and his Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They have lost the wizard, Gandalf, in a battle in the Mines of Moria. And Boromir, seduced by the power of the Ring, tried to seize it by force. While Frodo and Sam made their escape, the rest of the company was attacked by Orcs. Now they continue the journey alone down the great River Anduin—alone, that is, save for the mysterious creeping figure that follows wherever they go.\r\n', 'bookimg/IMG_0378.JPEG', '2024-11-08 14:12:10', 'approved', 0),
(35, 4, 'H.I.V.E Overlord Protocol', 'Mark Walden', 'Science Fiction, Young Adult, Adventure, Fiction, Action, Fantasy, Mystery, Middle Grade, Childrens,', 'English', 'HOW FAR WILL OTTO GO TO PROTECT HIS FRIENDS?\r\n\r\nOtto Malpense and his friends thought their first year at the Higher Institute of Villainous Education was the most adventurous and exciting that they would ever encounter. They were dead wrong.\r\n\r\nWhen Otto and Wing are allowed off campus to attend Wing\'s father\'s funeral, they have no idea it\'s a trap, all part of a lethal plan organized by Cypher, the most ruthless supervillain any of them have ever known. He intends to use them to retrieve the Overlord Protocol, a device that has the capacity to help him take over the world. But when things go terribly wrong, Otto will stop at nothing to hunt him down and make him pay.\r\n\r\nWith the help of Laura, Shelby, Raven, and his former nemesis, Dr. Nero, Otto must find a way to defeat an enemy that has overcome some of the planet\'s most infamous villains without even breaking a sweat. Because if he doesn\'t, the world as they know it will be changed forever.\r\n', 'bookimg/IMG_0380.JPEG', '2024-11-08 14:12:50', 'approved', 0),
(36, 4, 'Artemis Fowl – The Eternity Code', 'Eoin Colfer', 'Fantasy, Young Adult, Fiction, Middle Grade, Science Fiction, Adventure, Childrens, Urban Fantasy,', 'English', 'Thirteen-year-old criminal mastermind Artemis Fowl has constructed a supercomputer from stolen fairy technology. In the wrong hands it could be fatal for humans and fairies alike. But no need to worry, Artemis has a brilliant plan. He\'s not going to use the computer; he\'s just going to show it to a ruthless American businessman with Mafia connections. His bodyguard, Butler, will be with him. What could possibly go wrong...?', 'bookimg/IMG_0382.JPEG', '2024-11-08 14:13:23', 'approved', 0),
(37, 4, 'Max', 'James Patterson', 'Young Adult, Fantasy, Science Fiction, Fiction, Adventure, Romance, Paranormal, Action, Teen, Dystop', 'English', 'James Patterson\'s bestselling Maximum Ride series is back, with Max and the gang as The Protectors. Someone--or something--is decimating ships and sea life off Hawaii\'s coast, and Max and her flock find themselves sucked into the Navy\'s top-secret investigation of the catastrophe. Their objective: Rescue Max\'s activist mom from a wicked subterranean enemy. The hitch: They must dive deep into dark waters, where gruesome evil dwells... and for high-flying Maximum Ride, could there be anything more terrifying than being trapped in the great abyss? This soaring new adventure takes Maximum Ride and the Flock into terrifying new territory--fans, hold your breath!', 'bookimg/IMG_0384.JPEG', '2024-11-08 14:13:50', 'approved', 0),
(38, 4, 'The Fifth Profession', 'David Morrell', 'Thriller, Fiction, Mystery, Mystery Thriller, Action, Suspense, Adventure, Espionage, Spy Thriller, ', 'English', 'From the bestselling author of First Blood comes a spectacular thriller, in which a former Navy SEAL and a Japanese samurai master are bound together in a terrifying past that never happened.', 'bookimg/IMG_0386.JPEG', '2024-11-08 14:14:23', 'approved', 0),
(41, 1, 'It', 'Stephen King', 'Fiction, Horror', '', 'This is not a killer clown novel. Well, yeah it is. And thank you Uncle Stevie for ruining clowns- although to be quite honest I don\'t really blame you, I blame Tim Curry. ::shudder::\r\n\r\nBut this novel is a kitten-squisher for a reason- it\'s scary and creepy and definitely nightmare-inducing. The spider????? The blood in the drain? What happened to poor Georgie?\r\n\r\nBut details of the children and the friendships in this novel is what drives this book. SK writes children and the loss of childhood so brilliantly sad. He\'s a genius.', 'bookimg/books.jpg', '2024-11-10 05:45:36', 'approved', 0),
(42, 4, 'Along Came a Spider', 'James Patterson', 'Nonfiction', '', '“Along Came a Spider” gives rise to the well-known series devoted to a famous psychologist Alex Cross. Here he investigates kidnapping of little children, which confront him first with Gary Soneji, a mathematics teacher and a psychopathic serial kidnapper and murderer. Cross is to solve an uneasy problem – how to outsmart an ingenious psychopath, who managed to deceive the FBI, the Secret Service, and the police. Soneji doesn’t hold children to ransom and the detective understands he prefers a terrible unpredictable game to any money. This spectacular international bestseller became one of the fastest-selling thrillers in the world.', 'bookimg/books1.jpg', '2024-11-10 14:39:51', 'approved', 0),
(43, 4, 'House of Sky and Breath', 'Sarah J. Maas', 'Fantasy, Fiction, Romance, Love', '', 'Bryce Quinlan and Hunt Athalar are trying to get back to normal―they may have saved Crescent City, but with so much upheaval in their lives lately, they mostly want a chance to relax. Slow down. Figure out what the future holds.\r\n\r\nThe Asteri have kept their word so far, leaving Bryce and Hunt alone. But with the rebels chipping away at the Asteri’s power, the threat the rulers pose is growing. As Bryce, Hunt, and their friends get pulled into the rebels’ plans, the choice becomes clear: stay silent while others are oppressed, or fight for what’s right. And they’ve never been very good at staying silent.\r\n\r\nIn this sexy, action-packed sequel to the #1 bestseller House of Earth and Blood, Sarah J. Maas weaves a captivating story of a world about to explode―and the people who will do anything to save it.', 'bookimg/books2.png', '2024-11-10 14:42:43', 'approved', 0),
(44, 3, 'Bride', 'Ali Hazelwood', 'Fantasy, Fiction, Romance, Love', '', 'A dangerous alliance between a Vampyre bride and an Alpha Werewolf becomes a love deep enough to sink your teeth into in this new paranormal romance.\r\n\r\nMisery Lark, the only daughter of the most powerful Vampyre councilman of the Southwest, is an outcast—again. Her days of living in anonymity among the Humans are over: she has been called upon to uphold a historic peacekeeping alliance between the Vampyres and their mortal enemies, the Weres, and she sees little choice but to surrender herself in the exchange—again...\r\n\r\nWeres are ruthless and unpredictable, and their Alpha, Lowe Moreland, is no exception. He rules his pack with absolute authority, but not without justice. And, unlike the Vampyre Council, not without feeling. It’s clear from the way he tracks Misery’s every movement that he doesn’t trust her. If only he knew how right he was….\r\n\r\nBecause Misery has her own reasons to agree to this marriage of convenience, reasons that have nothing to do with politics or alliances, and everything to do with the only thing she\'s ever cared about. And she is willing to do whatever it takes to get back what’s hers, even if it means a life alone in Were territory…alone with the wolf.', 'bookimg/books3.png', '2024-11-10 14:45:31', 'approved', 0),
(45, 3, 'House of Earth And Blood', 'Sarah J. Maas', 'Fantasy, Fiction', '', 'Bryce Quinlan had the perfect life-working hard all day and partying all night-until a demon murdered her closest friends, leaving her bereft, wounded, and alone. When the accused is behind bars but the crimes start up again, Bryce finds herself at the heart of the investigation. She\'ll do whatever it takes to avenge their deaths.\r\n\r\nHunt Athalar is a notorious Fallen angel, now enslaved to the Archangels he once attempted to overthrow. His brutal skills and incredible strength have been set to one purpose-to assassinate his boss\'s enemies, no questions asked. But with a demon wreaking havoc in the city, he\'s offered an irresistible deal: help Bryce find the murderer, and his freedom will be within reach.\r\n\r\nAs Bryce and Hunt dig deep into Crescent City\'s underbelly, they discover a dark power that threatens everything and everyone they hold dear, and they find, in each other, a blazing passion-one that could set them both free, if they\'d only let it.\r\n\r\nWith unforgettable characters, sizzling romance, and page-turning suspense, this richly inventive new fantasy series by #1 New York Times bestselling author Sarah J. Maas delves into the heartache of loss, the price of freedom-and the power of love.', 'bookimg/books4.jpg', '2024-11-10 14:51:21', 'approved', 0),
(46, 3, 'House of Flame And Shadow', 'Sarah J. Maas', 'Fantasy, Fiction, Romance, Love', '', 'The stunning third book in the sexy, action-packed Crescent City series, following the global bestsellers House of Earth and Blood and House of Sky and Breath.\r\n\r\nBryce Quinlan never expected to see a world other than Midgard, but now that she has, all she wants is to get back. Everything she loves is in Midgard: her family, her friends, her mate. Stranded in a strange new world, she\'s going to need all her wits about her to get home again. And that\'s no easy feat when she has no idea who to trust.\r\n\r\nHunt Athalar has found himself in some deep holes in his life, but this one might be the deepest of all. After a few brief months with everything he ever wanted, he\'s in the Asteri\'s dungeons again, stripped of his freedom and without a clue as to Bryce\'s fate. He\'s desperate to help her, but until he can escape the Asteri\'s leash, his hands are quite literally tied.\r\n\r\nIn this sexy, breathtaking sequel to the #1 bestsellers House of Earth and Blood and House of Sky and Breath, Sarah J. Maas\'s Crescent City series reaches new heights as Bryce and Hunt\'s world is brought to the brink of collapse-with its future resting on their shoulders.', 'bookimg/books5.jpg', '2024-11-10 14:53:32', 'approved', 0),
(47, 2, 'Spare', 'Prince Harry', 'Nonfiction', '', 'Spare: by Prince Harry, The Duke of Sussex is an incredibly poignant and moving book that offers a rare glimpse into the life and thoughts of one of the most famous and widely recognized figures in the world. Written with raw honesty and vulnerability, this book is a must-read for anyone interested in the life and experiences of Prince Harry.\r\n\r\nOne of the most striking aspects of Spare is the way in which Prince Harry opens up about some of the most difficult and traumatic moments of his life, including the loss of his mother, Princess Diana. His reflections on this event and its impact on his life are both poignant and heart-wrenching, offering a unique perspective on grief and the power of love to overcome it.\r\nIn addition to its emotional depth, Spare is also a book that is full of insight, self-examination, and hard-won wisdom. Whether you’re a fan of Prince Harry or simply looking for a poignant and thought-provoking read, this book is sure to leave a lasting impression.\r\n\r\nIt’s also worth noting that Prince Harry is generously using the proceeds from Spare to support various charitable organizations, including Sentebale and WellChild. This makes this book not only a powerful and moving read but also a meaningful way to support important causes. Highly recommend.', 'bookimg/books6.jpg', '2024-11-10 14:55:43', 'approved', 0),
(48, 2, 'The Hedge Knight', 'George R.R. Martin', 'Fantasy, Fiction', '', 'This was a refreshing read when you\'re completely absorbed in the Game of Thrones universe but have to wait until the show ends to read the books. It takes place about 90 years before the main events of GoT and it\'s a tale featuring a lot of familiar names such as Baratheon, Lannister and Targaryen and you definitely get hints here and there about how the story develops later on (aka things mentioned in GoT). There was a bit too much knighthood detail and description but other than that, I really liked it. Onwards to book 2\r\n===========\r\nA novella based in the Song of Ice and Fire world.\r\n\r\nI like these kind of stories, short, good vs. evil, and legend-like.\r\n\r\nNothing much to be said here, the story follows Dunk and Egg on Dunk\'s journey to be a knight. There wasn\'t much character development but the plot was quick-paced and fun. No dark gritty elements here, just what would you expect how the legend of Duncan the Tall is told to children in the ASOIAF world.', 'bookimg/books7.jpg', '2024-11-10 14:56:39', 'approved', 0),
(49, 2, 'Just for the Summer', 'Abby Jimenez', 'Fiction, Romance, Love', '', 'Justin has a curse, and thanks to a Reddit thread, it\'s now all over the internet. Every woman he dates goes on to find their soul mate the second they break up. When a woman slides into his DMs with the same problem, they come up with a plan: They\'ll date each other and break up. Their curses will cancel each other’s out, and they’ll both go on to find the love of their lives. It’s a bonkers idea… and it just might work.\r\n\r\nEmma hadn\'t planned that her next assignment as a traveling nurse would be in Minnesota, but she and her best friend agree that dating Justin is too good of an opportunity to pass up, especially when they get to rent an adorable cottage on a private island on Lake Minnetonka.\r\n\r\nIt\'s supposed to be a quick fling, just for the summer. But when Emma\'s toxic mother shows up and Justin has to assume guardianship of his three siblings, they\'re suddenly navigating a lot more than they expected–including catching real feelings for each other. What if this time Fate has actually brought the perfect pair together?', 'bookimg/books8.jpg', '2024-11-10 14:59:31', 'approved', 0),
(50, 2, 'The Prisoner’s Throne', 'Holly Black', 'Fantasy, Fiction', '', 'Prince Oak is paying for his betrayal. Imprisoned in the icy north and bound to the will of a monstrous new queen, he must rely on charm and calculation to survive. With High King Cardan and High Queen Jude willing to use any means necessary to retrieve their stolen heir, Oak will have to decide whether to attempt regaining the trust of the girl he’s always loved or to remain loyal to Elfhame and hand over the means to end her reign—even if it means ending Wren, too.  \r\n\r\nWith a new war looming on the horizon and treachery lurking in every corner, neither Oak’s guile nor his wit will be enough to keep everyone he loves alive. It’s just a question of whom he will doom.\r\n\r\nFrom the #1 New York Times bestselling author Holly Black comes the stunning blood-soaked conclusion to the Stolen Heir duology.', 'bookimg/books9.jpg', '2024-11-10 15:01:06', 'approved', 0),
(51, 3, 'The Stolen Heir', 'Holly Black', 'Fantasy, Fiction', '', 'A runaway queen. A reluctant prince. And a quest that may destroy them both.\r\n\r\nEight years have passed since the Battle of the Serpent. But in the icy north, Lady Nore of the Court of Teeth has reclaimed the Ice Needle Citadel. There, she is using an ancient relic to create monsters of stick and snow who will do her bidding and exact her revenge.\r\n\r\nSuren, child queen of the Court of Teeth, and the one person with power over her mother, fled to the human world. There, she lives feral in the woods. Lonely, and still haunted by the merciless torments she endured in the Court of Teeth, she bides her time by releasing mortals from foolish bargains. She believes herself forgotten until the storm hag, Bogdana chases her through the night streets. Suren is saved by none other than Prince Oak, heir to Elfhame, to whom she was once promised in marriage and who she has resented for years.\r\n\r\nNow seventeen, Oak is charming, beautiful, and manipulative. He’s on a mission that will lead him into the north, and he wants Suren’s help. But if she agrees, it will mean guarding her heart against the boy she once knew and a prince she cannot trust, as well as confronting all the horrors she thought she left behind.', 'bookimg/books10.jpg', '2024-11-10 15:14:32', 'rejected', 0),
(52, 3, 'Mad Honey', 'Jodi Picoult, Jennifer Finney Boylan', 'Fiction, Mystery', '', 'Olivia McAfee knows what it feels like to start over. Her picture-perfect life—living in Boston, married to a brilliant cardiothoracic surgeon, raising a beautiful son, Asher—was upended when her husband revealed a darker side. She never imagined she would end up back in her sleepy New Hampshire hometown, living in the house she grew up in, and taking over her father\'s beekeeping business.\r\n\r\nLily Campanello is familiar with do-overs, too. When she and her mom relocate to Adams, New Hampshire, for her final year of high school, they both hope it will be a fresh start.\r\n\r\nAnd for just a short while, these new beginnings are exactly what Olivia and Lily need. Their paths cross when Asher falls for the new girl in school, and Lily can’t help but fall for him, too. With Ash, she feels happy for the first time. Yet at times, she wonders if she can she trust him completely . . .\r\n\r\nThen one day, Olivia receives a phone call: Lily is dead, and Asher is being questioned by the police. Olivia is adamant that her son is innocent. But she would be lying if she didn’t acknowledge the flashes of his father’s temper in him, and as the case against him unfolds, she realizes he’s hidden more than he’s shared with her.\r\n\r\nMad Honey is a riveting novel of suspense, an unforgettable love story, and a moving and powerful exploration of the secrets we keep and the risks we take in order to become ourselves.', 'bookimg/mad-honey.jpg', '2024-11-10 15:17:52', 'approved', 0),
(54, 3, 'Dreamland', 'Nicholas Sparks', 'Fiction, Love and Romance', '', 'Colby Mills once felt destined for a musical career, until tragedy grounded his aspirations. Now the head of a small family farm in North Carolina, he spontaneously takes a gig playing at a bar in St. Pete’s Beach, Florida, seeking a rare break from his duties at home.\r\n\r\nBut when he meets Morgan Lee, his world is turned upside-down, making him wonder if the responsibilities he has shouldered need dictate his life forever. The daughter of affluent Chicago doctors, Morgan has graduated from a prestigious college music program with the ambition to move to Nashville and become a star. Romantically and musically, she and Colby complete each other in a way that neither has ever known.\r\n\r\nWhile they are falling headlong in love, Beverly is on a heart-pounding journey of another kind. Fleeing an abusive husband with her six-year-old son, she is trying to piece together a life for them in a small town far off the beaten track. With money running out and danger seemingly around every corner, she makes a desperate decision that will rewrite everything she knows to be true.\r\n\r\nIn the course of a single unforgettable week, two young people will navigate the exhilarating heights and heartbreak of first love. Hundreds of miles away, Beverly will put her love for her young son to the test. And fate will draw all three people together in a web of life-altering connections . . . forcing each to wonder whether the dream of a better life can ever survive the weight of the past.', 'bookimg/dreamland.jpg', '2024-11-10 15:36:31', 'approved', 0),
(55, 2, 'Most Dead Things', 'Stephen King', 'Epic Fantasy, Dystopia', '', 'fegegr5ht', 'bookimg/book.png', '2024-11-13 07:53:33', 'pending', 0),
(56, 1, 'It', 'James Patterson', 'Fantasy, Epic Fantasy', '', 'dsadadsadsa', 'bookimg/Screenshot 2024-11-10 224426.png', '2024-11-18 20:46:57', 'rejected', 0),
(61, 1, 'dada', 'dada', 'Romance', '', 'fsfafsafsa', 'bookimg/IMG_0357.JPEG', '2024-11-23 17:37:41', 'approved', 0),
(62, 1, 'gdsf saf s', 'fasfafaf', 'Thriller', '', 'dafafa', 'bookimg/IMG_0355.JPEG', '2024-11-23 17:42:18', 'approved', 0),
(63, 18, 'Murder Road', 'Simone St. James', 'Fiction, Horror', '', 'A young couple find themselves haunted by a string of gruesome murders committed along an old deserted road in this terrifying new novel.\r\n\r\nJuly 1995. April and Eddie have taken a wrong turn. They’re looking for the small resort town where they plan to spend their honeymoon. When they spot what appears to be a lone hitchhiker along the deserted road, they stop to help. But not long after the hitchhiker gets into their car, they see the blood seeping from her jacket and a truck barreling down Atticus Line after them.\r\n\r\nWhen the hitchhiker dies at the local hospital, April and Eddie find themselves in the crosshairs of the Coldlake Falls police. Unexplained murders have been happening along Atticus Line for years and the cops finally have two witnesses who easily become their only suspects. As April and Eddie start to dig into the history of the town and that horrible stretch of road to clear their names, they soon learn that there is something supernatural at work, something that could not only tear the town and its dark secrets apart, but take April and Eddie down with it all.\r\n', 'bookimg/murder-road.jpg', '2024-11-23 18:24:54', 'approved', 0),
(64, 18, 'The Shadows', 'Alex North', 'Fiction, Thriller, Horror', '', 'I definitely recommend the audiobook.\r\nThis was so much better than The Whisper Man, in my opinion. I really liked the main characters and it was more fast-paced. Maybe part of why I liked it more was because I listened to the audiobook so it seemed to go by quicker. But I definitely liked the story and the way it was told better too. Based on other reviews, if you loved The Whisper Man, you might not like this. But if you were underwhelmed by it, I recommend you give this a try.\r\n===\r\nI thoroughly enjoyed this story. It hit all the marks for horror. It was creepy and in certain parts chilling and unexpected.\r\nI loved the way this was told through different timelines and different perspectives. The transitions always felt seamless.\r\n\r\nMy favorite part of the book was the big twist at the beginning of part 3. I definitely didn’t see that coming. It actually made me a bit emotional.\r\nMy big problem was the ending. It was all over the place and pretty messy. Which is a shame I was hoping for more of an impact at the end?\r\nHowever, all that said it was still a solid read.', 'bookimg/the-shadows.jpg', '2024-11-23 18:26:01', 'approved', 0),
(65, 18, 'The Only Good Indians', 'Stephen Graham Jones', 'Fiction, Horror', '', 'This was an eerie, compelling read that was ultimately let down by pacing.\r\n\r\nI appreciate Jones\'s writing style - it felt direct and raw, unnecessary flourish cut out. I thought it fit the characters he introduced as well - four former trouble makers who are paying the pied piper for something they did ten years ago.\r\n\r\nI\'d recommend looking for a review from someone who is more experienced with reading horror than me to get an accurate picture of where this stands in the genre. However, I appreciated the set pieces for the horror scenes here and when the build up finally came to a crescendo it was dramatic and satisfying.\r\n\r\nThis book is divided into three sections and section two in particular drags quite a bit and it took me a long time to get into. Section three was my favorite and the only time the pacing felt right on point.', 'bookimg/the-only-good-indians.jpg', '2024-11-23 18:26:56', 'approved', 0),
(66, 18, 'The Institute', 'Stephen King', 'Fiction, Horror', '', 'Not the Stephen King of my youth. Not event the Stephen King that wrote 11/22/63 just a handful of years ago or the Bill Hodges books, which were on the better side of decent.\r\n\r\nNone of the characters are fleshed out, are we only supposed to like them because they are clearly the protagonists? Are they only evil because it\'s clear they are the bad guys? Another hundred pages ought to have been spent creating a bond with the characters....\r\n\r\nRandom complaints:\r\n- The dialogue is weak. Seems like every character\'s witty riposte is little more than \'Shut up\'. Sometimes with an exclamation point.\r\n- Do any kids even say Jeepers anymore?\r\n- The shootout was just plain dumb. I almost stopped reading when the homeless woman said something to the effect of \"This is the south. We bring it.\" *cringe*', 'bookimg/the-institute.jpg', '2024-11-23 18:30:57', 'approved', 0),
(67, 18, 'We Have Always Lived in the Castle', 'Shirley Jackson', 'Fiction, Horror', '', 'I started out reading this but quickly switched to the audio version which I highly recommend. The narrator’s voice made this very strange, twisted, whimsical and haunting story come alive. Her whisper-like tone added much emphasis to the spooky and gothic atmosphere. It is probably best going in unknowing, but the eerie looking cover gives hints at the darkness and creepiness of the story, that was at times humorous and always engaging. It contains some of the most interesting and eccentric characters, among whom are sisters Merricat and Constance, who share a dark family secret. One of my favorite characters was Merricat’s very humanlike cat, Jonas, who somehow made the story more enchanting. This had all the traits I love in a book: gothic elements, psychological suspense, and an unreliable narrator. 5 stars!\r\n=================\r\nThis was my first Shirley Jackson novel, and to tell the truth, after reading so many good reviews about it I cannot say I was taken aback by reading it. On the other hand though there were things I liked.\r\n\r\nWhat I liked was the way of writing. It is simple but sophisticated somehow. The same applies to the description of the events. It was as if you could see everything happening in front of your eyes very vividly. Also, while reading it I had the feeling of a storm coming. The preparation of something big that was going to change everything. As for the narration of Merricat... What can I say... She made everything look so trivial... Even the most depressing and serious event in their lives. Nothing could stop her from living in her own universe.\r\n\r\nWhat I didn&#039;t like was that I expected more of the ending. I thought that something more would happen. But on the whole it was an enjoyable reading. Not tiring at al.', 'bookimg/book_674220d947d645.32335160.jpg', '2024-11-23 18:37:13', 'approved', 0),
(69, 18, 'The Bye Bye Man: And Other Strange-But-True Tales of the United States of America', 'Robert Damon Schneck', 'Fiction, Horror', '', 'This is a very niche book. It&#039;s a historical narrative in regards to some paranormal events that were recorded in American history, debunking and discussing the truth behind them. If you are a history buff, and like a little paranormal nonsense thrown in, this books for you. However it was not for me. Was it interesting? Yeah kind of, but I also felt it read a bit like a textbook. I couldn&#039;t really gather what the author was attempting to achieve with his writing. Part storytelling part fact checking it just didn&#039;t read well for me. I must admit I was expecting something completely different then this so perhaps it caught me off guard. It&#039;s definitely worth an attempt of you like American history and perhaps some of the more bizarre historical records that exist.', 'bookimg/book_6742216ce56e04.22138350.jpg', '2024-11-23 18:39:40', 'approved', 0),
(70, 18, 'The Tenement', 'Randall Huff', 'Fiction, Horror', '', 'The residents of the local low income housing building are planning a block party. But when the building loner makes friends with an ancient evil, will the locals be sober enough to notice the world ending around them? This book mashes stoner comedies like Pineapple Express with the balls-to-the-wall horror style of 80&#039;s Stephen King.\r\n\r\nI am publishing it free on-line to try to generate interest in my fleshing it out into a trilogy. Although I am planning sequels, this book has a satisfying conclusion, it isn&#039;t a book where you need a sequel to get the characters out of some cliffhanger.', 'bookimg/book_674221bc999af6.41136566.jpg', '2024-11-23 18:41:00', 'approved', 0),
(71, 18, 'Game', 'Barry Lyga', 'Fiction, Horror', '', 'This review will be short and spoiler free! :-)This was a gripping whodunnit and entertaining game of cat and mouse. It&#039;s a long book but it doesn&#039;t feel long; another true page-turner from Lyga.Be warned: the gore and gruesome scale increases significantly in this book. Plenty of entrails all over the place. If just the idea of that turns your stomach, this probably isn&#039;t the book for you.But, for all it&#039;s good points, I didn&#039;t enjoy this book as much as I Hunt Killers. This was partly because as soon as we are told the markers the killer is leaving behind, I knew what was going on. And I couldn&#039;t believe that no-one else got it either! The other reason why this is a 4, rather than 5-star read for me was because the characters did some things that were truly daft. Unbelievably daft. Sighing and rolling your eyes at their idiocy daft.But blimey what a cliffhanger! I&#039;ll be reading Blood of my Blood asap.', 'bookimg/book_674221ff5e9370.04238904.jpg', '2024-11-23 18:42:07', 'approved', 0),
(72, 18, 'Blood Trail', 'Tanya Huff', 'Fantasy, Fiction, Vampires', '', '1997: BLOOD TRAIL is a fun read. It has wit, sass and great characters. Watching the tension grow between Vicki and her two boyfriends (who both suffer from major fits of jealousy but will _never_ ever admit it) is always amusing and I really loved peeking into the daily routines of the life of a werewolf. I can&#039;t wait to dig into the other books in this series to what happens next to these three.\r\n===\r\nThe Tanya Huff &quot;Blood Books&quot; series inspired a new television series on Lifetime called &quot;Blood Ties.&quot; I watched the first season, and it was pretty fun. That&#039;s what inspired me to read the whole &quot;Blood Books&quot; series.\r\n\r\nEssentially, a former Toronto cop turned private investigator partners with a 450 year old vampire - who happens to be the bastard son of King Henry VII - to solve supernatural mysteries.\r\n\r\nThese books are not life-changing literature. But they&#039;re a very fun read, particularly for those who like vampires and supernatural stories.', 'bookimg/book_6742229c8036a5.25700601.jpg', '2024-11-23 18:44:44', 'approved', 0),
(73, 18, 'Vampire Academy', 'Richelle Mead', 'Fantasy, Fiction, Vampires, Love & Romance', '', 'Vampire Academy is the first novel in another series went for Young Adult readers by Richelle Mead.\r\nVampire Academy has three sorts of vampire, so there is a lot of potential for extraordinary rushes. The Moroi are living vampires who feast upon blood and can work essential enchantment. The Strigoi are undead vampires who are either Moroi who slaughtered and get to be undead by decision – or there are people, Dhampirs or Moroi who have been nibbled and betrayed their will. Whichever way the Strigoi are the solid dangerously savage everlasting vampires of conventional vampire legend.\r\nDhampirs are the offspring of a Moroi vampire and a human. They find themselves able to go out in the day, can&#039;t work enchantment and don&#039;t eat blood - yet they are more grounded and speedier than both typical people and Moroi vampires. They shield the Moroi from the Strigoi.', 'bookimg/book_674222fe4fc4b3.22305688.jpg', '2024-11-23 18:46:22', 'approved', 0),
(83, 18, 'Wedding Night', 'Sophie Kinsella', 'Fiction, Comedy', '', 'This was a typical Sophie Kinsella book in that it was wildly unbelievable yet still entertaining. If you are looking for an easy, frivolous read and you can suspend disbelief and just go where the story takes you, you might enjoy this. It is told from 2 sister\'s alternating points of view, and I found myself definitely liking one storyline better than the other, but I was okay with how it all wraps up in the end. If you\'ve read anything else by Kinsella, it definitely follows her usual style and guessing what happens next is easy to do, but I still enjoyed it and laughed a time or two.', 'bookimg/wedding-night.jpg', '2024-11-25 10:56:12', 'pending', 0);

-- --------------------------------------------------------

--
-- Table structure for table `book_reports`
--

CREATE TABLE `book_reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  `status` enum('Pending','Resolved') DEFAULT 'Pending',
  `resolved_by` varchar(255) NOT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `reported_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_reports`
--

INSERT INTO `book_reports` (`id`, `user_id`, `book_id`, `reason`, `status`, `resolved_by`, `resolved_at`, `reported_at`) VALUES
(1, 1, 21, 'kupal', 'Pending', '', NULL, '2024-11-23 17:51:17'),
(2, 1, 21, 'kupal', 'Resolved', 'Admin User', '2024-11-25 13:01:20', '2024-11-23 17:53:09'),
(3, 18, 23, 'di nabalik yung libro', 'Pending', '', NULL, '2024-11-23 17:57:08'),
(4, 18, 28, 'haha', 'Resolved', 'Admin User', '2024-11-23 19:04:55', '2024-11-23 18:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

CREATE TABLE `book_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `requested_book_name` varchar(255) NOT NULL,
  `requested_author` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_requests`
--

INSERT INTO `book_requests` (`id`, `user_id`, `requested_book_name`, `requested_author`, `notes`, `request_date`) VALUES
(1, 1, 'afafa', 'fafsafa', 'fsafsa', '2024-10-29 20:44:48'),
(2, 1, 'Naruto', 'ako', 'basta', '2024-10-29 20:45:42'),
(3, 2, 'Jujutsu Kaisem', 'ako', 'wrewf', '2024-10-29 20:53:19'),
(4, 18, 'Percy Jackson ', 'Chris', 'Baka po meron kayong libro na ito', '2024-11-17 19:53:35'),
(5, 1, 'dada', 'dada', 'dada', '2024-11-18 20:47:08'),
(6, 1, 'dada', 'dada', 'dada', '2024-11-18 20:54:07'),
(7, 2, 'gsjahag', 'gagayw', 'vahwgwgwg', '2024-11-18 20:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `request_id`, `user_id`, `comment_text`, `comment_date`) VALUES
(1, 3, 2, 'dada', '2024-10-29 20:55:46'),
(2, 2, 2, 'dada', '2024-10-29 20:55:51'),
(3, 3, 1, 'dada', '2024-11-03 11:43:25'),
(4, 4, 1, 'meron po ako\r\n', '2024-11-17 19:54:31'),
(5, 4, 18, 'pwede po maupload dito?', '2024-11-17 19:54:59'),
(6, 4, 1, 'sige', '2024-11-17 19:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `msg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `tel`, `msg`) VALUES
(1, 'Bhaskar Sarkar', 'bhaskarsarkar733124@gmail.com', '8906622602', 'Good Initiative');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) DEFAULT 0,
  `reply_to` int(11) DEFAULT NULL,
  `reply_to_message_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `book_id`, `message`, `created_at`, `is_deleted`, `reply_to`, `reply_to_message_id`) VALUES
(19, 2, 1, 27, 'aDADADADADA', '2024-11-13 12:08:18', 0, NULL, NULL),
(20, 2, 1, 27, 'can i borrow this book?\r\n', '2024-11-13 12:08:39', 0, NULL, NULL),
(21, 18, 2, 50, 'pwede ko po ba mahiram to?', '2024-11-17 19:59:19', 0, NULL, NULL),
(22, 18, 2, 50, 'pwede ko po ba mahiram to?', '2024-11-17 20:07:41', 0, NULL, NULL),
(23, 2, 18, 50, '', '2024-11-17 20:08:10', 0, NULL, NULL),
(24, 18, 2, 50, '', '2024-11-17 20:12:28', 0, NULL, NULL),
(25, 2, 18, 50, '', '2024-11-17 20:12:48', 0, NULL, NULL),
(26, 2, 18, 50, 'dada', '2024-11-17 20:14:42', 0, NULL, NULL),
(27, 18, 2, 50, 'tixiyd', '2024-11-17 20:21:12', 0, NULL, NULL),
(28, 2, 18, 50, 'dada', '2024-11-17 20:27:44', 0, NULL, NULL),
(29, 18, 2, 50, 'oky', '2024-11-17 20:28:11', 0, NULL, NULL),
(30, 18, 1, 25, 'pahiram po', '2024-11-17 20:32:46', 0, NULL, NULL),
(31, 1, 18, 25, 'sigee po', '2024-11-17 20:32:58', 0, NULL, NULL),
(32, 18, 1, 25, 'kailan po pwede?', '2024-11-17 20:33:41', 0, NULL, NULL),
(34, 1, 18, 25, 'dada', '2024-11-17 20:50:40', 0, NULL, NULL),
(35, 18, 1, 25, 'pwede po ba?', '2024-11-17 20:51:06', 0, NULL, NULL),
(36, 18, 1, 25, 'okii', '2024-11-17 20:51:16', 0, NULL, NULL),
(37, 1, 18, 25, 'pop', '2024-11-17 20:51:37', 0, NULL, NULL),
(38, 1, 18, 25, 'dad', '2024-11-18 13:57:55', 0, NULL, NULL),
(39, 1, 18, 25, 'ddd', '2024-11-18 14:00:15', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expiry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `expiry`) VALUES
(1, 'joshua@gmail.com', '17834ab05857a2a98c049bea75b8d3d05345050ae6d5e30efb4bced284d37036', '2024-11-26 10:53:43'),
(2, 'lacumbisjoshua122@gmail.com', '7bbe7f3e8a37cd2dfe2f8afbf9e5501104ac7b3c3096884198b28976d4a30ffc', '2024-11-26 10:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `reply_content` text NOT NULL,
  `sender_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_history`
--

CREATE TABLE `search_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `search_term` varchar(255) NOT NULL,
  `search_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search_history`
--

INSERT INTO `search_history` (`id`, `user_id`, `search_term`, `search_time`) VALUES
(1, 4, 'naruto', '2024-11-03 04:44:01'),
(2, 4, 'demon slayer', '2024-11-03 04:44:35'),
(3, 4, 'naruto', '2024-11-03 04:57:10'),
(4, 4, 'devils', '2024-11-03 05:24:46'),
(6, 4, 'a', '2024-11-03 05:29:20'),
(7, 4, 'science fiction', '2024-11-03 05:29:54'),
(8, 4, 'science fiction', '2024-11-03 05:30:19'),
(9, 4, 'jujutsu', '2024-11-03 05:55:31'),
(10, 4, 'naruto', '2024-11-03 05:58:17'),
(11, 12, 'yugioh', '2024-11-03 06:04:00'),
(12, 12, 'devils', '2024-11-03 06:28:45'),
(13, 12, 'naruto', '2024-11-03 06:29:11'),
(0, 1, 'horror', '2024-11-03 15:05:42'),
(0, 1, 'comedy', '2024-11-03 15:08:51'),
(0, 1, 'demon', '2024-11-03 15:12:03'),
(0, 1, 'demon', '2024-11-03 15:12:26'),
(0, 1, 'adr', '2024-11-03 15:12:50'),
(0, 1, 'mostly', '2024-11-03 15:13:06'),
(0, 1, 'programming', '2024-11-03 15:14:00'),
(0, 1, 'naruto', '2024-11-03 18:02:48'),
(0, 1, 'bleach', '2024-11-03 18:03:16'),
(0, 1, 'demon slayer', '2024-11-03 18:03:38'),
(0, 1, 'dalut', '2024-11-04 06:05:08'),
(0, 1, 'cauan', '2024-11-04 09:11:16'),
(0, 1, 'horror', '2024-11-04 10:22:43'),
(0, 4, 'naruto', '2024-11-08 16:01:25'),
(0, 4, 'naruto', '2024-11-08 16:03:11'),
(0, 4, 'america', '2024-11-08 18:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `student_no` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','approved') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `loginid`, `mobile`, `dob`, `student_no`, `password`, `image`, `created_at`, `status`) VALUES
(1, 'Joshua Lacumbis', 'lacumbisjoshua122@gmail.com', '21-01881', '09474056698', '2024-09-11', '', 'b91f2ed71b0e1a8a12b2555d7b331d0a', 'uploads/ako.jpg', '2024-10-22 08:09:11', 'approved'),
(2, 'Joshua', 'joshua@gmail.com', 'wawa', '09474056698', '2024-10-08', '', '31eb610811101c177221aa12a6415ccb', 'uploads/1711963912-2024-04-01-6.png', '2024-10-23 11:56:19', 'approved'),
(3, 'Justin Kian Sacapaño ', 'justinekian@gmail.com', 'kian', '09757564233', '2024-10-02', '', '457b88941f3220c80ddb7137a7f903f4', 'uploads/IMG_20241019_074000_294.jpg', '2024-10-24 16:26:26', 'approved'),
(4, 'Jomari Dalut', 'dalutjomari@gmail.com', 'dalut', '09198407564', '2024-10-06', '', 'c40cc328d2c48b395cad113dff8377e9', 'uploads/istockphoto-537282082-612x612.jpg', '2024-10-25 07:22:29', 'approved'),
(11, 'David Laparan', 'davidlaparan06@gmail.com', 'david', '09198407564', '2024-10-25', '', '3e35d1025659d07ae28e0069ec51ab92', 'uploads/istockphoto-537282082-612x612.jpg', '2024-10-25 07:40:26', 'approved'),
(15, 'Juswa', 'juswa@gmail.com', 'juswa', '09275864861', '2024-11-19', '', 'a0439f3d470dfa520500d6b2752e7953', 'uploads/421140411_230007596863075_6462906729396518436_n.jpg', '2024-11-17 18:00:45', 'approved'),
(18, 'Vanilla', 'vanilla@gmail.com', 'van', '09424543454', '2024-11-09', '21-53736', '966e9e0e7071d447022dda37721a30b9', 'uploads/17318731066062834221371824748405.jpg', '2024-11-17 19:52:33', 'approved'),
(19, 'Chris', 'chris@gmail.com', 'chris', '09371663516', '2024-11-21', '21-98821', '45b255c09dc94efe83af4dd14dbc23a9', 'uploads/Screenshot 2024-09-26 225629.png', '2024-11-18 14:05:02', 'approved'),
(20, 'John Ryan Coralde', 'jryan@gmail.com', 'jryan', '09434843545', '2024-11-15', '21-11111', '287fa574527c8ae1f4883be71bd597e7', 'uploads/IMG_20241115_205507_445.jpg', '2024-11-19 07:37:20', 'approved'),
(21, 'gdisbshs', 'hdjshe@gmail.com', 'wawa2', '09424348455', '2024-11-22', '21-63737', '737b42e17c5607ccad7d30518a0f5105', 'uploads/www.YTS.MX.jpg', '2024-11-19 07:39:15', 'pending'),
(22, 'Marco Canuel', 'canuel@gmail.com', 'marco', '09543451315', '2024-11-02', '21-22222', 'f2047aa3df533738c5f3e7e70df93c79', 'uploads/IMG_20241105_180501_448.jpg', '2024-11-19 07:41:45', 'approved'),
(25, 'Vince Flores', 'vince@gmail.com', 'vince', '09464248461', '2024-11-03', '21-33333', '121f9cf8c9555359b026e59f884d70a4', 'uploads/IMG_20241118_170351_036.jpg', '2024-11-19 08:18:58', 'approved'),
(26, 'John Christian Hejara', 'hejara@gmail.com', 'hejara', '09545455454', '2024-11-22', '21-44444', '52a6431583fe6869fa28a19b235e6ef4', 'uploads/IMG_20241118_170351_036.jpg', '2024-11-19 08:26:18', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `user_clicks`
--

CREATE TABLE `user_clicks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `click_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_clicks`
--

INSERT INTO `user_clicks` (`id`, `user_id`, `book_id`, `click_timestamp`) VALUES
(65, 18, 67, '2024-11-23 19:45:24'),
(66, 18, 73, '2024-11-23 19:46:04'),
(67, 18, 21, '2024-11-25 12:23:13'),
(68, 1, 21, '2024-11-25 12:28:54'),
(69, 1, 28, '2024-11-25 12:30:38'),
(70, 1, 63, '2024-11-25 14:52:17'),
(71, 1, 64, '2024-11-25 14:55:41'),
(72, 1, 70, '2024-11-25 14:55:59'),
(73, 1, 66, '2024-11-25 14:56:08'),
(74, 18, 71, '2024-11-25 14:58:14'),
(75, 18, 67, '2024-11-25 14:58:43'),
(76, 18, 69, '2024-11-25 14:59:15'),
(77, 1, 22, '2024-11-26 00:56:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_loginid` (`admin_loginid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_reports`
--
ALTER TABLE `book_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `loginid` (`loginid`);

--
-- Indexes for table `user_clicks`
--
ALTER TABLE `user_clicks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `book_reports`
--
ALTER TABLE `book_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_requests`
--
ALTER TABLE `book_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_clicks`
--
ALTER TABLE `user_clicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_reports`
--
ALTER TABLE `book_reports`
  ADD CONSTRAINT `book_reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `book_reports_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD CONSTRAINT `book_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `book_requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`),
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_clicks`
--
ALTER TABLE `user_clicks`
  ADD CONSTRAINT `user_clicks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_clicks_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
