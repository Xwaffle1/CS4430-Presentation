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
	  trackNum INT,
    name VARCHAR(50),
    FOREIGN KEY(albumID) REFERENCES 	Albums(albumID)
);

INSERT INTO artists VALUES(NULL, "Lil Xan");
INSERT INTO albums VALUES(NULL, 1, "TOTAL XANARCHY", 2018);
INSERT INTO songs VALUES(NULL, 1, 1, "Who I Am");
INSERT INTO songs VALUES(NULL, 1, 2, "Wake Up");
INSERT INTO songs VALUES(NULL, 1, 3, "Tick Tock (feat. 2 Chainz)");
INSERT INTO songs VALUES(NULL, 1, 4, "Diamonds");
INSERT INTO songs VALUES(NULL, 1, 5, "The Man (feat. $teven Cannon)");
INSERT INTO songs VALUES(NULL, 1, 6, "Saved By The Bell");
INSERT INTO songs VALUES(NULL, 1, 7, "Moonlight");
INSERT INTO songs VALUES(NULL, 1, 8, "Shine Hard (feat. Rae Sremmurd)");
INSERT INTO songs VALUES(NULL, 1, 9, "Round Here (feat. YG)");
INSERT INTO songs VALUES(NULL, 1, 10, "Basically");
INSERT INTO songs VALUES(NULL, 1, 11, "Deceived");
INSERT INTO songs VALUES(NULL, 1, 12, "Betrayed");
INSERT INTO artists VALUES(NULL, "Drake");
INSERT INTO albums VALUES(NULL, 2, "Scorpion", 2018); 
INSERT INTO albums VALUES(NULL, 2, "More Life", 2017); 
INSERT INTO albums VALUES(NULL, 2, "Views", 2016); 
INSERT INTO albums VALUES(NULL, 2, "If You're Reading This It's Too Late", 2013); 
INSERT INTO songs VALUES(NULL, 2, 2, "Nonstop");
INSERT INTO songs VALUES(NULL, 2, 5, "God's Plan");
INSERT INTO songs VALUES(NULL, 3, 3, "Passionfruit");
INSERT INTO songs VALUES(NULL, 3, 20, "Fake Love");
INSERT INTO songs VALUES(NULL, 4, 5, "Hype");
INSERT INTO songs VALUES(NULL, 4, 11, "Controlla");
INSERT INTO songs VALUES(NULL, 5, 1, "Legend");
INSERT INTO songs VALUES(NULL, 5, 2, "Energy");

