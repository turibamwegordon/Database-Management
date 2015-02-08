/*
	Movies Database:
	--------------------------
	dbo.tblActor
		ActorID
		ActorName
		ActorDOB
		ActorGender

	dbo.tblCast
		CastID
		CastFilmID
		CastActor
		CastCharacterName

	dbo.tblCerfticate
		CertificateID
		Cerftificate

	dbo.tblCountry
		CountryID
		CountryName

	dbo.tblDirector
		DirectorID
		DirectorName
		DirectorDOB
		DirectorGender

	dbo.tblFilm
		FilmID
		FilmName
		FilmReleaseDate
		FilmDirectorID
		FilmLanguageID
		FilmCountryID
		FilmStudioID
		FilmSymposis
		FilmRunTImeMinutes
		FilmCertificateID
		FilmBUdgetDollars
		FilmBoxOfficeDollars
		FilmOscarNominations
		FilmOscarWins

	dbo.tblLanguage
		LanguageID
		Language

	dbo.tblStudio
		StudioID
		StudioName
	--------------------------
*/

--------------------------
-- Finding a List of Available Functions
-- Understanding Parameter
-- Getting Help on Functions
-- Nested Functions

-- Movies Datababse > Programmability > System Functions > List of folders of different functions

SELECT
	FilmName,
	UPPER(FilmName) -- converts all the lower case chars to upper chars
	DATENAME(M, FilmReleaseDate), -- Displays the month name	

	DATEDIFF(D, FilmReleaseDate, GETDATE()) -- Gets how old the films are in days... uses Date Difference and GETDATE() which now from the time system
FROM
	tblFilm


--------------------------
-- Concatenating strings
-- Concatinating text and numbers
-- Text functions
-- Separating strings of text

-- Concatinating strings
SELECT
	Title,
	FirstName,
	LastNAme,
	Title + ' ' + FirstName + ' ' + LastName -- This concatenates the names and displays them in a rpw
FROM
	tblPerson


--------------------------
-- Concatinating strings with numerators
SELECT
	FilmName,
	FilmOscarWins,
	FilmName + ' won ' + CAST(FilmOscarWins AS VARCHAR(2)) -- Casting helps concatinate numerators with strings
	FilmName + ' won ' + CONVERT(VARCHAR(2), FilmOscarWins) -- Casting helps concatinate numerators with strings same thing as the above
FROM
	tblPerson


--------------------------
-- 
SELECT
	ActorName,
	LEFT(ActorName, 3), -- This displays the first 3 chars of the actor names from left
	CHARINDEX(' ', ActorName) -- This shows the position of ' ' in the name
	LEN(ActorName) -- Calculates the length of name
	LEN(ActorName) - CHARINDEX(' ', ActorName) -- Calculates the length of name minus the space ' '
FROM
	tblPerson





























