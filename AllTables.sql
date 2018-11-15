CREATE TABLE Artists (
    artistID INT PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE Albums (
    albumID INT PRIMARY KEY,
    artistID INT,
    name VARCHAR(50),
	  year INT,
    FOREIGN KEY(artistID) REFERENCES 	Artists(artistID));
);
CREATE TABLE Songs (
    songID INT PRIMARY KEY,
    albumID INT,
	  trackNum INT,
    name VARCHAR(50),
    FOREIGN KEY(albumID) REFERENCES 	Albums(albumID));
);