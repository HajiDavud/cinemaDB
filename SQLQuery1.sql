CREATE TABLE Movies
(
	id INT PRIMARY KEY IDENTITY,
	name VARCHAR(50),
)

CREATE TABLE Languages
(
	id INT PRIMARY KEY IDENTITY,
	name VARCHAR(50),	
)

CREATE TABLE Branches
(
	id INT PRIMARY KEY IDENTITY,
	name VARCHAR(50),	
)

INSERT INTO Branches VALUES('Baki Filiali')

CREATE TABLE Halls
(
	id INT PRIMARY KEY IDENTITY,
	name VARCHAR(50),	
	BranchID INT,
	FOREIGN KEY (BranchID) REFERENCES  Branches(id)
)

CREATE TABLE MovieLanguages
(
	id INT PRIMARY KEY IDENTITY,
	movieID INT,
	languagesID INT,
	FOREIGN KEY (movieID) REFERENCES  Movies(id),
	FOREIGN KEY (languagesID) REFERENCES  Languages(id)

)


CREATE TABLE Seanses
(
	id INT PRIMARY KEY IDENTITY,
	movieLanguageID INT,
	FOREIGN KEY (movieLanguageID) REFERENCES  MovieLanguages(id),
	HallID INT,
	time TIME,
	SubTitleLanguageID INT,
	FOREIGN KEY (SubTitleLanguageID) REFERENCES  Languages(id),
	price DECIMAL



)
