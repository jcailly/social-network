PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS UserInfo (
	Id VARCHAR(36) NOT NULL UNIQUE,
	Email VARCHAR(100) NOT NULL UNIQUE,
	FirstName VARCHAR(50) NOT NULL, 
	LastName VARCHAR(50) NOT NULL,
	BirthDate VARCHAR(20) NOT NULL,
	ProfilePicture TEXT,
	Banner TEXT,
	Username VARCHAR(50),
	AboutMe VARCHAR(280),
	Status VARCHAR(20),
	GroupsJoined TEXT,

	CONSTRAINT fk_id FOREIGN KEY (Id) REFERENCES "Auth"("Id") ON DELETE CASCADE
);