CREATE TABLE Artists (
    artistID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);
CREATE TABLE Albums (
    albumID INT PRIMARY KEY AUTO_INCREMENT,
    artistID INT,
    name VARCHAR(50),
	  year INT,
    FOREIGN KEY(artistID) REFERENCES 	Artists(artistID)
);
CREATE TABLE Songs (
    songID INT PRIMARY KEY AUTO_INCREMENT,
    albumID INT,
    artistID INT,
    trackNum INT,
    name VARCHAR(50),
    FOREIGN KEY(albumID) REFERENCES 	Albums(albumID)
          ON DELETE NO ACTION,
    FOREIGN KEY(artistID) REFERENCES 	Artists(artistID)
          ON DELETE NO ACTION
);

--Artists
INSERT INTO artists VALUES(NULL, "Lil Xan"); -- 1
INSERT INTO artists VALUES(NULL, "Post Malone"); -- 2
INSERT INTO artists VALUES(NULL, "Ariana Grande"); -- 3
INSERT INTO artists VALUES(NULL, "Juice WRLD"); -- 4
INSERT INTO artists VALUES(NULL, "Travis Scott"); -- 5
INSERT INTO artists VALUES(NULL, "Drake"); -- 6
INSERT INTO artists VALUES(NULL, "Migos"); -- 7
INSERT INTO artists VALUES(NULL, "Lil Pump"); -- 8
INSERT INTO artists VALUES(NULL, "Kendrick Lamar"); -- 9
INSERT INTO artists VALUES(NULL, "Logic"); -- 10



-- Albums
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE name="Lil Xan"), "TOTAL XANARCHY", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE name="Post Malone"), "beerbongs & bentleys", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE name="Post Malone"), "Stoney (Deluxe)", 2016);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE name="Drake"), "Scorpion", 2018);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE name="Drake"), "More Life", 2017);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE name="Drake"), "Views", 2016);
INSERT INTO albums VALUES(NULL, (SELECT artistID FROM Artists WHERE name="Drake"), "If You're Reading This It's Too Late", 2013);



-- Album SONGS

-- Lil Xan Album 1 Songs
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 1, "Who I Am");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 2, "Wake Up");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 3, "Tick Tock");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 4, "Diamonds");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 5, "The Man");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 6, "Saved by the Bell");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 7, "Moonlight");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 8, "Shine Hard");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 9, "Round Here");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 10, "Basically");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1 ,11, "Deceived");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 12, "Betrayed");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 13, "Slingshot");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 14, "Far");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 15, "Color Blind");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="TOTAL XANARCHY"), 1, 16, "Betrayed - Remix");

-- Post Malone Album 1
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 1, "Paranoid");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 2, "Spoil My Night");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 3, "Rich & Sad");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 4, "Zack and Codeine");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 5, "Takin' Shots");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 6, "rockstar (feat. 21 Savage)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 7, "Over Now");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 8, "Psycho");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 9, "Better Now");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 10, "Ball For Me");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 11, "Otherside");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 12, "Stay");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 13, "Blame It On Me");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 14, "Same Bitches");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 15, "Jonestown (Interlude)");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 16, "92 Explorer");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 17, "Candy Paint");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="beerbongs & bentleys"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 18, "Sugar Wraith");
-- Post Malone Album 2
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 1, "Broken Whiskey Glass");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 2, "Big Lie");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 3, "Deja Vu");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 4, "No Option");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 5, "Cold");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 6, "White Iverson");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 7, "I Fall Apart");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 8, "Patient");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 9, "Go Flex");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 10, "Feel");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 11, "Too Young");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 12, "Congratulations");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 13, "Up There");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 14, "Yours Truly, Austin Post");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 15, "Leave");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 16, "Hit This Hard");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 17, "Money Made Me Do It");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Stoney (Deluxe)"), (SELECT artistID FROM Artists WHERE name="Post Malone"), 18, "Feeling Whitney");
-- Drake Scorpion Album
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Scorpion"), (SELECT artistID FROM Artists WHERE name="Drake"), 2, "Nonstop");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="Scorpion"), (SELECT artistID FROM Artists WHERE name="Drake"), 5, "God's Plan");

INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="More Life"), (SELECT artistID FROM Artists WHERE name="Drake"), 3, "Passionfruit");
INSERT INTO songs VALUES(NULL, (SELECT albumID FROM Albums WHERE name="More Life"), (SELECT artistID FROM Artists WHERE name="Drake"), 20, "Fake Love");





-- Song SINGLES
INSERT INTO songs VALUES(NULL, NULL, 1, NULL, "Lies (feat. Lil Skies)"); -- Lil Xan.
