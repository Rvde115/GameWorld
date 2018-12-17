-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 17 dec 2018 om 10:02
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameworld`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `categoryID` int(3) NOT NULL,
  `categoryTitle` varchar(100) NOT NULL,
  `categoryDesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`categoryID`, `categoryTitle`, `categoryDesc`) VALUES
(1, 'Playstation', 'Games for Playstation'),
(2, 'PC', 'For your PC gaming needs'),
(3, 'Nintendo DS', 'For gaming on-the-go');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

CREATE TABLE `games` (
  `gameId` int(3) NOT NULL,
  `gameTitle` varchar(100) NOT NULL,
  `gameDesc` text NOT NULL,
  `gamePrice` decimal(5,2) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `gameImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`gameId`, `gameTitle`, `gameDesc`, `gamePrice`, `categoryID`, `gameImage`) VALUES
(1, 'Don\'t Starve', 'Don’t Starve is an uncompromising wilderness survival game full of science and magic.  You play as Wilson, an intrepid Gentleman Scientist who has been trapped by a demon and transported to a mysterious wilderness world. Wilson must learn to exploit his environment and its inhabitants if he ever hopes to escape and find his way back home.   Enter a strange and unexplored world full of strange creatures, dangers, and surprises. Gather resources to craft items and structures that match your survival style. Play your way as you unravel the mysteries of this strange land.', '8.19', 2, 'images/don\'t starve.jpg'),
(2, 'Call of Duty: Black Ops II', 'Pushing the boundaries of what fans have come to expect from the record-setting entertainment franchise, Call of Duty®: Black Ops II propels players into a near future, 21st Century Cold War, where technology and weapons have converged to create a new generation of warfare.', '60.00', 1, 'images/black ops 2.jpg'),
(3, 'Dead Rising 3 Apocalypse Edition', 'Anything and everything is a weapon in Dead Rising 3. Explore the zombie-infested city of Los Perdidos, and find a way to escape before a military strike wipes the entire city, and everyone in it, off the map. With intense action and an unmatched level of weapon and character customization, Dead Rising 3 delivers a heart-pounding experience unlike any other as you explore, scavenge and fight to survive in a massive open world on the brink of a zombie apocalypse.', '29.99', 2, 'images/deadrising3.jpg'),
(4, 'Divinity: Original Sin 2 - Definitive Edition', 'The Divine is dead. The Void approaches. And the powers lying dormant within you are soon to awaken. The battle for Divinity has begun. Choose wisely and trust sparingly; darkness lurks within every heart.\r\n\r\n\r\nWho will you be?\r\nA flesh-eating Elf, an Imperial Lizard or an Undead, risen from the grave? Discover how the world reacts differently to who - or what - you are.\r\nIt’s time for a new Divinity!\r\nGather your party and develop relationships with your companions. Blast your opponents in deep, tactical, turn-based combat. Use the environment as a weapon, use height to your advantage, and manipulate the elements themselves to seal your victory.\r\nAscend as the god that Rivellon so desperately needs.\r\nExplore the vast and layered world of Rivellon alone or in a party of up to 4 players in drop-in/drop-out cooperative play. Go anywhere, unleash your imagination, and explore endless ways to interact with the world. Beyond Rivellon, there’s more to explore in the brand-new PvP and Game Master modes.\r\n\r\n\r\n\r\nChoose your race and origin. Choose from 6 unique origin characters with their own backgrounds and quests, or create your own as a Human, Lizard, Elf, Dwarf, or Undead. All choices have consequences.\r\n\r\nUnlimited freedom to explore and experiment. Go anywhere, talk to anyone, and interact with everything! Kill any NPC without sacrificing your progress, and speak to every animal. Even ghosts might be hiding a secret or two…\r\n\r\nThe next generation of turn-based combat. Blast your opponents with elemental combinations. Use height to your advantage. Master over 200 skills in 12 skill schools. But beware - the game’s AI 2.0 is our most devious invention to date.\r\n\r\nUp to 4 player online and split-screen multiplayer. Play with your friends online or in local split-screen with full controller support.\r\n\r\nGame Master Mode: Take your adventures to the next level and craft your own stories with the Game Master Mode. Download fan-made campaigns and mods from Steam Workshop.\r\n\r\n4K Support: an Ultimate 4K experience pushing RPGs into a new era!', '44.99', 2, 'images/divinity.jpg'),
(5, 'Red Dead Redemption 2', 'Amerika, 1899. Wetshandhavers hebben het gemunt op de laatste outlaw-bendes. Wie zich niet wil overgeven, wordt genadeloos afgemaakt. \r\n\r\nArthur Morgan en de Van der Linde-bende slaan op de vlucht nadat in het plaatsje Blackwater een overval slecht afloopt. Met federale agenten en de beste premiejagers van het Westen op de hielen, trekken ze door het ruige hart van Amerika, een spoor van overvallen en vuurgevechten achter zich latend. Als door interne strubbelingen de bende uiteen dreigt te vallen, wordt Arthur gedwongen een keuze te maken. Kiest hij voor zijn idealen of voor de bende waar hij alles aan te danken heeft?\r\n\r\nRed Dead Redemption 2, van de makers van Grand Theft Auto V en Red Dead Redemption, is een episch verhaal over het einde van het Wilde Westen en het begin van een nieuw tijdperk.', '69.99', 1, 'images/rdr2.jpg'),
(6, 'Red Dead Redemption', 'Amerika, 1911. Het zijn de laatste dagen van het Wilde Westen. Als federale agenten zijn familie onder druk zetten, ziet de voormalige outlaw John Marston zich genoodzaakt zijn wapens weer op te pakken om af te rekenen met de bandieten die hij ooit tot zijn vrienden rekende.\r\n\r\nIn deze epische overlevingsstrijd op de uitgestrekte vlaktes van het Amerikaanse Westen en Mexico, probeer je als John Marston niet alleen je tegenstanders te begraven, maar ook je bloedige verleden.\r\n', '14.98', 1, 'images/rdr.jpg'),
(7, 'KINGDOM HEARTS HD 1.5 + 2.5 ReMIX', 'KINGDOM HEARTS HD 1.5 + 2.5 ReMIX is een unieke compilatie van zes bejubelde avonturen in de KINGDOM HEARTS-reeks, met VIER games en TWEE films geremasterd in HD. Deze twee klassieke KINGDOM HEARTS-collecties zijn nu geremasterd en voor het eerst beschikbaar voor PlayStation®4.\r\n\r\n• KINGDOM HEARTS FINAL MIX\r\n• KINGDOM HEARTS Re:Chain of Memories\r\n• KINGDOM HEARTS 358/2 Days (films geremasterd in HD)\r\n• KINGDOM HEARTS II FINAL MIX\r\n• KINGDOM HEARTS Birth by Sleep Final MIX\r\n• KINGDOM HEARTS Re:coded (films geremasterd in HD) \r\n\r\nDit is de perfecte bundel om je reis te beginnen of om al je favoriete momenten in de KINGDOM HEARTS-reeks opnieuw te beleven!\r\n', '49.99', 1, 'images/KH1.5.jpg'),
(8, 'The Witcher® 3: Wild Hunt', 'The Witcher: Wild Hunt is a story-driven, next-generation open world role-playing game set in a visually stunning fantasy universe full of meaningful choices and impactful consequences. In The Witcher you play as the professional monster hunter, Geralt of Rivia, tasked with finding a child of prophecy in a vast open world rich with merchant cities, viking pirate islands, dangerous mountain passes, and forgotten caverns to explore.\r\n\r\nPLAY AS A HIGHLY TRAINED MONSTER SLAYER FOR HIRE\r\nTrained from early childhood and mutated to gain superhuman skills, strength and reflexes, witchers are a distrusted counterbalance to the monster-infested world in which they live.\r\nGruesomely destroy foes as a professional monster hunter armed with a range of upgradeable weapons, mutating potions and combat magic.\r\nHunt down a wide range of exotic monsters from savage beasts prowling the mountain passes to cunning supernatural predators lurking in the shadows of densely populated towns.\r\nInvest your rewards to upgrade your weaponry and buy custom armour, or spend them away in horse races, card games, fist fighting, and other pleasures the night brings.\r\n\r\nEXPLORE A MORALLY INDIFFERENT FANTASY OPEN WORLD\r\nBuilt for endless adventure, the massive open world of The  Witcher sets new standards in terms of size, depth and complexity.\r\nTraverse a fantastical open world: explore forgotten ruins, caves and shipwrecks, trade with merchants and dwarven smiths in cities, and hunt across the open plains, mountains and seas.\r\nDeal with treasonous generals, devious witches and corrupt royalty to provide dark and dangerous services.\r\nMake choices that go beyond good & evil, and face their far-reaching consequences.\r\n\r\nCHASE DOWN THE CHILD OF PROPHECY\r\nTake on the most important contract to track down the child of prophecy, a key to save or destroy this world.\r\nIn times of war, chase down the child of prophecy, a living weapon of power, foretold by ancient elven legends.\r\nStruggle against ferocious rulers, spirits of the wilds and even a threat from beyond the veil – all hell-bent on controlling this world.\r\nDefine your destiny in a world that may not be worth saving.\r\n\r\nFULLY REALIZED NEXT GENERATION\r\nBuilt exclusively for next generation hardware, the REDengine 3 renders the world of The Witcher visually nuanced and organic, a real true to life fantasy.\r\nDynamic weather systems and day/night cycles affect how the citizens of the towns and the monsters of the wilds behave.\r\nRich with storyline choices in both main and subplots, this grand open world is influenced by the player unlike ever before.\r\nMATURE CONTENT DESCRIPTION\r\nThe developers describe the content like this:\r\n\r\nThis Game may contain content not appropriate for all ages, or may not be appropriate for viewing at work: Nudity or Sexual Content, General Mature Content', '49.99', 1, 'images/witcher.jpg'),
(9, 'XCOM® 2', 'XCOM 2 is the sequel to XCOM: Enemy Unknown, the 2012 award-winning strategy game of the year. \r\n\r\nEarth has changed. Twenty years have passed since world leaders offered an unconditional surrender to alien forces. XCOM, the planet’s last line of defense, was left decimated and scattered. Now, in XCOM 2, the aliens rule Earth, building shining cities that promise a brilliant future for humanity on the surface, while concealing a sinister agenda and eliminating all who dissent from their new order. \r\n\r\nOnly those who live at the edges of the world have a margin of freedom. Here, a force gathers once again to stand up for humanity. Always on the run, and facing impossible odds, the remnant XCOM forces must find a way to ignite a global resistance, and eliminate the alien threat once and for all.\r\n\r\nXCOM ON THE RUN: Take command of the Avenger, an alien supply craft converted to XCOM’s mobile headquarters. New open-ended gameplay lets you decide where to guide your strike team, how to grow popular support, and when to combat enemy counter-operations.\r\nRECRUIT RESISTANCE FIGHTERS: Five soldier classes, each with its own skill tree, let you create specific soldiers for your tactical plan. \r\nTACTICAL GUERRILLA COMBAT: New gameplay systems offer more tactical flexibility in combat. Use concealment to ambush enemy patrols. Loot enemies for precious gear and artifacts. Rescue VIPs and save fallen comrades by carrying them to the extraction point.\r\nA NEW BREED OF ENEMY: A diverse cast of enemies from powerful new alien species to the ADVENT, enforcers of the alien regime, offer a distinct tactical challenge. \r\nRESEARCH, DEVELOP AND UPGRADE: Configure and build rooms on the Avenger to give XCOM new capabilities on the battlefield. Use your Scientists and Engineers to research, develop and upgrade weapons and armor to fit your preferred tactics.\r\nEACH MISSION IS A UNIQUE CHALLENGE: Go on missions around the world, from wildlands to the heart of the alien-controlled megacities, to the depths of alien installations. There are virtually infinite combinations of maps, missions and goals. \r\nENGAGE IN HEAD-TO-HEAD MULTIPLAYER: Mix-and-match squads of humans and aliens and battle head-to-head on randomly-generated maps.\r\nSYSTEM REQUIREMENTS', '49.99', 2, 'images/xcom2.jpg'),
(10, 'Rayman 3 Hoodlum Havoc', 'Rayman’s in prime form with new high-tech powers and gear like Shock Rockets, the LockJaw, Funky-Boards and other cool stuff. Charge into intense strategic battles with the crazed Hoodlum Army and massive transforming bosses. Plunge into enormous, eye-popping worlds packed with zany comedy and a wacked-out cast, featuring John Leguizamo as Globox, and enjoy a bizarre, epic adventure filled with a unique blend of humor.\r\nOne of the latest installments of the great Rayman series - awesome humor and great music\r\nGreat 3D platformer gameplay that challenges you on every step\r\nA great variety of gameplay styles - from different flavors of platforming, to funky arcade racing', '4.99', 1, 'images/rayman_3.jpg'),
(11, 'The Escapists 2 ', 'The Ultimate Prison Sandbox!\r\n\r\nRisk it all to breakout from the toughest prisons in the world. Explore the biggest prisons yet, with multiple floors, roofs, vents and underground tunnels. \r\nYou’ll have to live by the prison rules, attending roll call, doing prison jobs and following strict routines; all the while secretly engineering your bid for freedom!\r\nYour prison escape antics will take you from the frosty Fort Tundra, a train hurtling through the desert, and even to the final frontier!\r\nEscape Team Assemble!\r\n\r\nUnite with up to 3 friends to create the ultimate escape crew and engineer the wildest escapes yet! Jump online or gather round on a couch to prepare for your sneaky adventures. By working together you’ll be able to create even more elaborate and daring plans.\r\n\r\nFeeling competitive? Dive into the versus mode and show that you’ve got the skills to break out of any prison faster than your friends can. If all else fails, settle your rivalry in the court yard with a prison punch up!\r\nCreate YOUR Con!\r\n\r\nIt’s time to make your prisoner truly yours. Choose from a massive array of customisations to make your character unique to you. It’s important to look stylish whilst you mastermind your escape.\r\nCraft your Escape!\r\n\r\nBeing in prison forces you to be creative and work with the limited tools at your disposal. You’ll have to combine everyday objects like soap and socks to craft new weapons and tools to help you achieve your goal. Steal forks from the cafeteria to chip a tunnel in your room, and craft a poster from magazines and duct tape to hide the evidence. You’ll soon learn that duct tape solves (almost) everything!\r\nPrepare for a fight! \r\n\r\nThe Escapists 2 introduces a brand new combat system to make every prison brawl more exciting and interactive. You’ll have to block and tie together chains of attacks whilst strafing around your locked on targets to gain the upper hand in combat. Make sure your visit the gym first to build up those muscles!\r\nNew ways to escape!\r\n\r\nAs the prisons get tougher you’re going to have to get more creative with your escape plans. There’s a ton of options to tackle almost any prison escape.\r\nConstruct a clink!\r\n\r\nWith the Prison Map Editor, it’s your turn to construct a prison worthy of housing the toughest inmates! It includes all the rooms, fences and guard dogs you need to build a prison that’s as hard as your imagination makes it – no duct-tape required.\r\nYou can pick up those prison blueprints and start crafting your own creations through the Custom Prisons option on the main menu, and when you’re ready you can show the world by sharing them through Steam Workshop where you can download subscribe to fellow architects’ lock-ups – all custom maps can be played either solo or in both local and online multiplayer!\r\nFeatures\r\n11 Prisons\r\nUp to 4 player co-operative and versus multiplayer\r\nDrop-in/ Drop-out Online/Splitscreen multiplayer\r\nOver 300 customisations\r\nMulti-storey Prisons\r\n\r\n', '9.99', 2, 'images/escapists 2.jpg'),
(12, 'Lego Batman', 'Het spel Lego Batman gaat over het verhaal van Batman en zijn grootste vijanden die van Arkham Asylum ontsnappen en chaos creeren in Gotham City. Bij het opsporen van de criminelen, inclusief de Joker en de Penguin zullen spelers de gadgets van Batman gebruiken en ook zijn fantastische voertuigen besturen.', '20.50', 2, 'images/lego batman.jpg'),
(13, 'Pokemon Mystery Dungeon: Explorers of darkness', 'Dit geheel nieuwe avontuur in het Pokémon-universum laat de speler net als in de voorganger in een Pokémon veranderen. Nadat op mysterieuze wijze is besloten welke Pokémon de speler zal worden en een partner-Pokémon is gekozen, begint een langdurige expeditie door tal van kerkers vol vijanden, valstrikken en andere verrassingen.\r\n\r\nTussen de kerkers door kan de speler even bijkomen in bijvoorbeeld Treasure Town en Pokémon Plaza, waar hij nieuwe Pokémon kan rekruteren, voorwerpen kan aanschaffen of nieuwe aanvallen kan leren en combineren. De twee versies van dit spel verschillen enigszins qua verhaal en aanwezige Pokémon, maar zijn in hoofdlijnen aan elkaar gelijk. Het spel ondersteunt volledige touchscreen-besturing en de mogelijkheid om gegevens uit te wisselen via draadloze communicatie of de Nintendo Wi-Fi Connection.\r\n\r\n# Een nieuwe turn-based RPG in het Pokémon-universum, inclusief de allernieuwste Pokémon (vierde generatie).\r\n#\r\n# Beantwoord aan het begin van het spel de persoonlijke vragen om in één van zestien mogelijke Pokémon te veranderen, en kies vervolgens zelf je partner-Pokémon.\r\n# Kleurrijke presentatie vol grappige animaties en details waar de fans van zullen smullen.\r\n# Kies voor een traditionele besturing met de actieknoppen of volledige touchscreen-besturing.\r\n# Diverse mogelijkheden om met andere spelers te communiceren (via draadloze communicatie, Nintendo Wi-Fi Connection of passwords), bijvoorbeeld om voorwerpen uit te wisselen of teams van andere spelers te redden.', '23.00', 3, 'images/pokemon mystery dungeon.jpg'),
(14, 'Mario Kart (DS)', 'Tijd om te racen... zonder snoertjes! De wereldberoemde Mario Kart-serie gaat helemaal los, waarbij spelers draadloos met z\'n achten tegelijk in karts kunnen racen en aan battles kunnen deelnemen, ongeacht of iedereen over een Game Card beschikt. De complete sterrencast van Mario, Luigi, Peach, Yoshi, Donkey Kong, Wario, Bowser en Toad verschijnt weer aan de startlijn voor een waanzinnig aantal races op de meer dan 30 banen die het beste uit alle voorgaande Mario Kart games bij elkaar brengen. \r\nSpelers zullen scheuren over circuits van Super Mario Kart, Mario Kart 64, Mario Kart: Super Circuit en Mario Kart: Double Dash!!, plus gloednieuwe parkoersen en arena\'s. Met alle maffe wapens en de hoge snelheden die spelers van de serie mogen verwachten is deze game een droom die uitkomt voor fans van Mario Kart. Een extra dimensie van speelplezier wordt toegevoegd door het feit dat spelers het over de hele wereld tegen elkaar op kunnen nemen door zich in verbinding te stellen met Nintendo\'s nieuwe, draadlooze gamedienst, Nintendo Wi-Fi Connection, via Wi-Fi.', '27.00', 3, 'images/mario kart.jpg'),
(15, 'Kingdom Hearts 358/2 Days', 'Kingdom Hearts 358/2 Days is een role-playing game waarin het Disney-universum en de wereld van Final Fantasy wederom samensmelten tot een wereld. In de game volg je het verhaal van Roxas, een van de personages uit Kingdom Hearts II en kom je erachter hoe zijn dagen als lid van de mysterieuze Organization XIII eruit zagen, wat zijn relatie is met Sora en wie het geheimzinnige veertiende lid is van de groepering.\r\n\r\nEr zijn vele verschillende missies te spelen, die verspreid zijn over grote werelden vol met bekende Disney- en Final Fantasy-figuren. Daarnaast bevat de game een multiplayermodus waarin vier spelers samen kunnen spelen als hun favoriete teamleden uit Organization XIII. De game bevat ook Limit Breaks, een bekende functie uit Final Fantasy VII die het mogelijk maken om explosieve speciale aanvallen uit te voeren als je personages bijna door hun levenspunten heen zijn.', '30.00', 3, 'images/KHDS.jpg'),
(16, 'Super Mario 64 DS', 'Zet je schrap voor de welkome terugkeer van een klassieker zoals je die nog nooit beleefd hebt! Super Mario 64 DS toont op weergaloze wijze wat de Nintendo DS in huis heeft, dankzij de touchscreen besturing, gameplay op twee schermen en strakke 3D graphics!\r\n\r\nSpeel het complete Nintendo 64 avontuur, maar deze keer met nieuwe personages, levels, spelstanden en uitdagingen. Of speel met drie vrienden in de draadloze Versus Mode (het spel ondersteunt Single-Card Play zodat je vrienden de multiplayer games draadloos naar hun DS systemen kunnen downloaden). Ook nieuw zijn de fantastische mini-games die je met de stylus bestuurt - die moet je gespeeld hebben!', '35.00', 3, 'images/mario 64.jpg'),
(17, 'Mario & Luigi: Partners in Time', 'In Mario & Luigi: Partners in Time keren de twee beroemdste broers ter wereld terug voor weer een weergaloos avontuur. Op de Game Boy Advance kwamen de twee drie jaar geleden met Mario and Luigi: Superstar Saga, een draagbare RPG van grote klasse. In januari gaan Mario en Luigi terug in de tijd om Princess Peach op te sporen. Tijdens deze tocht komen ze niet alleen de jongere versie van Bowser tegen, maar ook jongere versies van zichzelf.\r\n\r\nHet grootste gedeelte van het spel zul je het onderste scherm gebruiken om het geheel te besturen en kun je op het bovenste scherm een plattegrond bekijken. In bepaalde gevechten wordt de actie echter over beide schermen verspreid en bestuur je soms zelfs vier personages tegelijkertijd. Er zullen vele gastoptredens van je favoriete Nintendo personages zijn, waaronder de jongere versies. Mario & Luigi: Partners in Time lijkt wederom een hartveroverend avontuur te gaan worden en een waardige opvolger van Mario and Luigi: Superstar Saga', '36.00', 3, 'images/marioluigi.jpg'),
(18, 'The Legend of Zelda: Spirit Tracks', 'Iedereen instappen voor een geweldig nieuw avontuur!\r\nIn The Legend of Zelda: Spirit Tracks, begint de heldhaftige Link aan een groots nieuw avontuur. Het spel bevat een nieuw verhaal, meer puzzels en zelfs een nieuw vervoermiddel.\r\n\r\nIn dit spel reist Link per trein, wat weer allerlei nieuwe mogelijkheden tot het oplossen van puzzels oplevert. Het spel kent hetzelfde soort uiterlijk en sfeer dat in Nintendo DS-spel The Legend of Zelda: Phantom Hourglass werd neergezet.', '37.50', 3, 'images/spirit tracks.jpeg');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexen voor tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `categoryID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `games`
--
ALTER TABLE `games`
  MODIFY `gameId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
