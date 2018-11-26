CREATE TABLE Artists (
    artistID INT PRIMARY KEY AUTO_INCREMENT,
    artistName VARCHAR(50)
);
CREATE TABLE Albums (
    albumID INT PRIMARY KEY AUTO_INCREMENT,
    artistID INT,
    albumName VARCHAR(50),
	  year INT,
    FOREIGN KEY(artistID) REFERENCES 	Artists(artistID)
);
CREATE TABLE Songs (
    songID INT PRIMARY KEY AUTO_INCREMENT,
    albumID INT,
    artistID INT,
    trackNum INT,
    songName VARCHAR(50),
    FOREIGN KEY(albumID) REFERENCES 	Albums(albumID)
          ON DELETE NO ACTION,
    FOREIGN KEY(artistID) REFERENCES 	Artists(artistID)
          ON DELETE NO ACTION
);

--  Artists
INSERT INTO artists VALUES(NULL, "Lil Xan"); --  1
INSERT INTO artists VALUES(NULL, "Post Malone"); --  2
INSERT INTO artists VALUES(NULL, "Ariana Grande"); --  3
INSERT INTO artists VALUES(NULL, "Juice WRLD"); --  4
INSERT INTO artists VALUES(NULL, "Travis Scott"); --  5
INSERT INTO artists VALUES(NULL, "Drake"); --  6
INSERT INTO artists VALUES(NULL, "Migos"); --  7
INSERT INTO artists VALUES(NULL, "Lil Pump"); --  8
INSERT INTO artists VALUES(NULL, "Kendrick Lamar"); --  9
INSERT INTO artists VALUES(NULL, "Logic"); --  10



--  Albums
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), "TOTAL XANARCHY", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Post Malone"), "beerbongs & bentleys", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Post Malone"), "Stoney (Deluxe)", 2016);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), "Sweetener", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), "Dangerous Woman", 2016);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Drake"), "Scorpion", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Drake"), "More Life", 2017);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Drake"), "Views", 2016);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Drake"), "If You're Reading This It's Too Late", 2013);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), "Goodbye & Good Riddance", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="WRLD"), "Future & Juice WRLD Present... WRLD ON DRUGS", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), "ASTROWORLD", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), "Birds In The Trap Sing McKnight", 2016);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Migos"), "Culture II", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Migos"), "Culture", 2017);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), "Lil Pump", 2017);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), "DAMN.", 2017);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), "To Pimp A Butterfly", 2015);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), "good kid, m.A.A.d city (Deluxe)", 2012);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Logic"), "YSIV", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Logic"), "Bobby Tarantino II", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE artistName="Logic"), "Everybody", 2017);



--  Album SONGS

--  Lil Xan Album 1 Songs
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 1, "Who I Am");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 2, "Wake Up");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 3, "Tick Tock (feat. 2 Chainz)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 4, "Diamonds");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 5, "The Man (feat. $teven Cannon)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 6, "Saved by the Bell");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 7, "Moonlight");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 8, "Shine Hard (feat. Rae Sremmurd)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 9, "Round Here (feat. YG)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 10, "Basically");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 11, "Deceived");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 12, "Betrayed");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 13, "Slingshot");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 14, "Far");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="TOTAL XANARCHY"), (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), 15, "Betrayed (Remix)");
--  Post Malone Album 1
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 1, "Paranoid");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 2, "Spoil My Night (feat. Swae Lee)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 3, "Rich & Sad");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 4, "Zack And Codeine");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 5, "Takin' Shots");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 6, "rockstar (feat. 21 Savage)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 7, "Over Now");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 8, "Psycho (feat. Ty Dolla $ign)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 9, "Better Now");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 10, "Ball For Me (feat. Nicki Minaj)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 11, "Otherside");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 12, "Stay");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 13, "Blame It On Me");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 14, "Same Bitches (feat. G-Eazy & YG)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 15, "Jonestown (Interlude)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 16, "92 Explorer");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 17, "Candy Paint");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 18, "Sugar Wraith");
--  Post Malone Album 2
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 1, "Broken Whiskey Glass");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 2, "Big Lie");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 3, "Deja Vu (feat. Justin Bieber)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 4, "No Option");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 5, "Cold");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 6, "White Iverson");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 7, "I Fall Apart");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 8, "Patient");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 9, "Go Flex");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 10, "Feel (feat. Kehlani)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 11, "Too Young");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 12, "Congratulations (feat. Quavo)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 13, "Up There");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 14, "Yours Truly, Austin Post");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 15, "Leave");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 16, "Hit This Hard");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 17, "Money Made Me Do It (feat. 2 Chainz)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Post Malone"), 18, "Feeling Whitney");
-- Ariana Grande Album 1
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 1, "raindrops (an angel cried)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 2, "blazed (feat. Pharrell Williams)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 3, "the light is coming (feat. Nicki Minaj)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 4, "R.E.M");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 5, "God is a woman");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 6, "sweetener");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 7, "successful");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 8, "everytime");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 9, "breathin");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 10, "no tears left to cry");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 11, "borderline (feat. Missy Elliott)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 12, "better off");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 13, "goodnight n go");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 14, "pete davidson");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Sweetener"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 15, "get well soon");
-- Arian Grande Album 2
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Dangerous Woman"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 1, "Moonlight");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Dangerous Woman"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 2, "Dangerous Woman");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Dangerous Woman"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 3, "Be Alright");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Dangerous Woman"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 4, "Into You");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Dangerous Woman"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 5, "Side To Side (feat. Nicki Minaj)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Dangerous Woman"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 6, "Let Me Love You (feat. Lil Wayne)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Dangerous Woman"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 7, "Greedy");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Dangerous Woman"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 8, "Leave Me Lonely (feat. Macy Gray)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Dangerous Woman"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 9, "Everyday (feat. Future)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Dangerous Woman"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 10, "Bad Decisions");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Dangerous Woman"), (SELECT artistID FROM Artists WHERE artistName="Ariana Grande"), 11, "Thinking Bout You");
--  Drake Scorpion Album Disc 1?
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 1, "Survival");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 2, "Nonstop");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 3, "Elevate");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 4, "Emotionless");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 5, "God's Plan");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 6, "I'm Upset");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 7, "8 Out Of 10");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 8, "Mob Ties");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 9, "Can’t Take A Joke");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 10, "Sandra’s Rose");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 11, "Talk Up (feat. Jay-Z)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 12, "Is There More");
--  Drake Scorpion Disc 2?
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 1, "Peak");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 2, "Summer Games");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 3, "Jaded");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 4, "Nice For What");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 5, "Finesse");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 6, "Ratchet Happy Birthday");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 7, "That’s How You Feel");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 8, "Blue Tint");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 9, "In My Feelings");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 10, "Don’t Matter To Me");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 11, "After Dark (feat. Static Major & Ty Dolla $ign)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 12, "Final Fantasy");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Scorpion"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 13, "March 14");
-- Drake More Life
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 1, "Free Smoke");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 2, "No Long Talk (feat. Giggs)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 3, "Passionfruit");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 4, "Jorja Interlude");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 5, "Get It Together (feat. Black Coffee & Jorja Smith)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 6, "Madiba Riddim");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 7, "Blem");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 8, "4422 (feat. Sampha)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 9, "Gyalchester");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 10, "Skepta Interlude");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 11, "Portland (feat. Quavo & Travi$ Scott)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 12, "Sacrifices (feat. 2 Chainz & Young Thug)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 13, "Nothings Into Somethings");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 14, "Teenage Fever");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 15, "KMT (feat. Giggs)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 16, "Lose You");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 17, "Can't Have Everything");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 18, "Glow (feat. Kanye West)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 19, "Since Way Back (feat. PARTYNEXTDOOR)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 20, "Fake Love");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 21, "Ice Melts (feat. Young Thug)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="More Life"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 22, "Do Not Disturb");
--  Drake Views
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 1, "Keep The Family Close");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 2, "9");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 3, "U With Me?");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 4, "Feel No Ways");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 5, "Hype");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 6, "Weston Road Flows");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 7, "Redemption");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 8, "With You (feat. PARTYNEXTDOOR)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 9, "Faithful (feat. Pimp C & dvsn)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 10, "Still Here");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 11, "Controlla");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 12, "One Dance (feat. WizKid & Kyla)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 13, "Grammys (feat. Future)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 14, "Childs Play");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 15, "Pop Style");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 16, "Too Good (feat. Rihanna)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 17, "Summers Over Interlude");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 18, "Fire & Desire");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 19, "Views");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Views"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 20, "Hotline Bling");
-- Drake If You're Reading This It's Too Late
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 1, "Legend");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 2, "Energy");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 3, "10 Bands");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 4, "Know Yourself");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 5, "No Tellin'");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 6, "Madonna");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 7, "6 God");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 8, "Star67");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 9, "Preach (feat. PARTYNEXTDOOR)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 10, "Wednesday Night Interlude (feat. PARTYNEXTDOOR)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 11, "Used To (feat. Lil Wayne)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 12, "6 Man");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 13, "Now & Forever");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 14, "Company (feat. Travi$ Scott)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 15, "You & The 6");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 16, "Jungle");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="If You're Reading This It's Too Late"), (SELECT artistID FROM Artists WHERE artistName="Drake"), 17, "6PM In New York");
--  JUICE WRLD Goodbye & Good Riddance
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 1, "Intro");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 2, "All Girls Are The Same");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 3, "Lucid Dreams");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 4, "Lean Wit Me");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 5, "Wasted (feat. Lil Uzi Vert)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 6, "I'm Still");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 7, "Betrayal (Skit)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 8, "Candles");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 9, "Scared Of Love");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 10, "Used To");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 11, "Karma (Skit)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 12, "Hurt Me");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 13, "Black & White");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 14, "Long Gone");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 15, "End Of The Road");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Goodbye & Good Riddance"), (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), 16, "I'll Be Fine");
-- Travis scott ASTROWORLD
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 1, "STARGAZING");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 2, "CAROUSEL");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 3, "SICKO MODE");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 4, "R.I.P. SCREW");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 5, "STOP TRYING TO BE GOD");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 6, "NO BYSTANDERS");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 7, "SKELETONS");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 8, "WAKE UP");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 9, "5% TINT");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 10, "NC-17");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 11, "ASTROTHUNDER");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 12, "YOSEMITE");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 13, "CAN'T SAY");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 14, "WHO? WHAT!");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 15, "BUTTERFLY EFFECT");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 16, "HOUSTONFORNICATION");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="ASTROWORLD"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 17, "COFFEE BEAN");
--  Travis Scott Birds In The Trap Sing McKnight
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 1, "the ends");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 2, "way back");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 3, "coordinate");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 4, "through the late night");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 5, "beibs in the trap (feat. NAV)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 6, "sdp interlude");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 7, "sweet sweet");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 8, "outside");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 9, "goosebumps");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 10, "first take");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 11, "pick up the phone");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 12, "lose");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 13, "guidance");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Birds In The Trap Sing McKnight"), (SELECT artistID FROM Artists WHERE artistName="Travis Scott"), 14, "wonderful");
--  MIGOS CULTURE II
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 1, "Higher We Go (Intro)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 2, "Supastars");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 3, "Narcos");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 4, "BBO (Bad Bitches Only) (feat. 21 Savage)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 5, "Auto Pilot");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 6, "Walk It Talk It (feat. Drake)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 7, "Emoji A Chain");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 8, "CC (feat. Gucci Mane)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 9, "Stir Fry");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 10, "Too Much Jewelry");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 11, "Gang Gang");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 12, "White Sand (feat. Travis Scott, Ty Dolla $ign & Big Sean)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 13, "Crown the Kings");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 14, "Flooded");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 15, "Beast");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 16, "Open It Up");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 17, "MotorSport");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 18, "Movin' Too Fast");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 19, "Work Hard");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 20, "Notice Me (feat. Post Malone)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 21, "Too Playa (feat. 2 Chainz)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 22, "Made Men");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 23, "Top Down On Da NAWF");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture II"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 24, "Culture National Anthem (Outro)");
--  MIGOS CULTURE I
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 1, "Culture (feat. DJ Khaled)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 2, "T-Shirt");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 3, "Call Casting");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 4, "Bad and Boujee (feat. Lil Uzi Vert)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 5, "Get Right Witcha");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 6, "Slippery (feat. Gucci Mane)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 7, "Big On Big");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 8, "What The Price");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 9, "Brown Paper Bag");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 10, "Deadz (feat. 2 Chainz)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 11, "All Ass");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 12, "Kelly Price (feat. Travis Scott)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Culture"), (SELECT artistID FROM Artists WHERE artistName="Migos"), 13, "Out Yo Way");
-- Lil Pump
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 1, "What U Sayin' (feat. Smokepurpp)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 2, "Gucci Gang");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 3, "Smoke My Dope (feat. Smokepurpp)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 4, "Crazy");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 5, "Back (feat. Lil Yachty)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 6, "D Rose");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 7, "At the Door");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 8, "Youngest Flexer (feat. Gucci Mane)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 9, "Foreign");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 10, "Whitney (feat. Chief Keef)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 11, "Molly");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 12, "Iced Out (feat. 2 Chainz)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 13, "Boss");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 14, "Flex Like Ouu");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Lil Pump"), (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), 15, "Pinky Ring (feat. Smokepurpp & Rick Ross)");
-- Kendrick DAMN.
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 1, "BLOOD.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 2, "DNA.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 3, "YAH.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 4, "ELEMENT.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 5, "FEEL.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 6, "LOYALTY. FT. RIHANNA.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 7, "PRIDE.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 8, "HUMBLE.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 9, "LUST.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 10, "LOVE. FT. ZACARI.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 11, "XXX. FT. U2.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 12, "FEAR.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 13, "GOD.");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="DAMN."), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 14, "DUCKWORTH.");
-- Kendrick To Pimp a Butterfly
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 1, "Wesley's Theory (feat. George Clinton & Thundercat)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 2, "For Free? (Interlude)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 3, "King Kunta");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 4, "Institutionalized (feat. Bilal, Anna Wise & Snoop Dogg)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 5, "These Walls (feat. Bilal, Anna Wise & Thundercat)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 6, "u");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 7, "Alright");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 8, "For Sale? (Interlude)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 9, "Momma");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 10, "Hood Politics");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 11, "How Much A Dollar Cost (feat. James Fauntleroy & Ronald Isley)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 12, "Complexion (A Zulu Love) (feat. Rapsody)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 13, "The Blacker The Berry");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 14, "You Ain't Gotta Lie (Momma Said)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 15, "i");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="To Pimp A Butterfly"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 16, "Mortal Man");
-- Kendrick Lamar good kid, m.A.A.d city (Deluxe)
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 1, "Sherane a.k.a Master Splinter’s Daughter");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 2, "Bitch, Don’t Kill My Vibe");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 3, "Backseat Freestyle");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 4, "The Art of Peer Pressure");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 5, "Money Trees (feat. Jay Rock)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 6, "Poetic Justice (feat. Drake)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 7, "good kid");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 8, "m.A.A.d city (feat. MC Eiht)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 9, "Swimming Pools (Drank) (Extended Version)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 10, "Sing About Me, I'm Dying Of Thirst");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 11, "Real (feat. Anna Wise)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 12, "Compton (feat. Dr. Dre)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 1, "The Recipe (Bonus Track) (feat. Dr. Dre)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 2, "Black Boy Fly (Bonus Track)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 3, "Now Or Never (Bonus Track) (feat. Mary J. Blige)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="good kid, m.A.A.d city (Deluxe)"), (SELECT artistID FROM Artists WHERE artistName="Kendrick Lamar"), 4, "Bitch, Don’t Kill My Vibe (Remix) (feat. JAY Z)");
-- Logic YSIV
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 1, "Thank You (feat. Lucy Rose & The RattPack)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 2, "Everybody Dies");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 3, "The Return");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 4, "The Glorious Five");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 5, "One Day (feat. Ryan Tedder)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 6, "Wu Tang Forever (feat. Ghostface Killah, Raekwon, RZA, Method Man, Inspectah Deck, Cappadonna, Jackpot Scotty Wotty, U-God, Masta Killa & GZA)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 7, "100 Miles and Running (feat. Wale & John Lindahl)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 8, "Ordinary Day (feat. Hailee Steinfeld)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 9, "YSIV");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 10, "Street Dreams II");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 11, "The Adventures Of Stoney Bob (feat. Kajo, Slaydro & Big Lenbo)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 12, "Legacy");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 13, "ICONIC (feat. Jaden Smith)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="YSIV"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 14, "Last Call");
-- Logic Bobby Tarantino II
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 1, "Grandpa's Space Ship");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 2, "Overnight");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 3, "Contra");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 4, "BoomTrap Protocol");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 5, "Yuck");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 6, "Indica Badu (feat. Wiz Khalifa)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 7, "Midnight");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 8, "Warm It Up (feat. Young Sinatra)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 9, "Wizard Of Oz");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 10, "State Of Emergency (feat. 2 Chainz)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 11, "Wassup (feat. Big Sean)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 12, "Everyday");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Bobby Tarantino II"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 13, "44 More");
-- Logic Everybody
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 1, "Hallelujah");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 2, "Everybody");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 3, "Confess (feat. Killer Mike)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 4, "Killing Spree (feat. Ansel Elgort)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 5, "Take It Back");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 6, "America (feat. Black Thought, Chuck D, Big Lenbo & No ID)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 7, "Ink Blot (feat. Juicy J)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 8, "Mos Definitely");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 9, "Waiting Room");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 10, "1-800-273-8255 (feat. Alessia Cara & Khalid)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 11, "Anziety (feat. Lucy Rose)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 12, "Black SpiderMan (feat. Damian Lemar Hudson)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE albumName="Everybody"), (SELECT artistID FROM Artists WHERE artistName="Logic"), 13, "AfricAryaN (feat. Neil deGrasse Tyson)");




--  Song SINGLES
INSERT INTO songs VALUES(NULL, NULL, (SELECT artistID FROM Artists WHERE artistName="Lil Xan"), NULL, "Lies (feat. Lil Skies)"); --  Lil Xan.
INSERT INTO songs VALUES(NULL, NULL, (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), NULL, "Legends");
INSERT INTO songs VALUES(NULL, NULL, (SELECT artistID FROM Artists WHERE artistName="Juice WRLD"), NULL, "Rich And Blind");
INSERT INTO songs VALUES(NULL, NULL, (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), NULL, "Esskeetit");
INSERT INTO songs VALUES(NULL, NULL, (SELECT artistID FROM Artists WHERE artistName="Lil Pump"), NULL, "I Love It");