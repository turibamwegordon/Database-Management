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

USE Movies -- Selecting which table you want to use.
--------------------------
-- Adding comments
-- Basic Query structure
-- Using field aliases
-- Common mistakes
-- This lists filed names as types from Films table db

SELECT 
	FilmName, -- Listing field names
	FilmReleaseDate, -- Listing field names
	FilmRunTimeMinutes, -- Listing field names
FROM 
	dbo.tblFilm

--------------------------
-- Adding aliase names in the table ie the head title

SELECT 
	FilmName AS [Title], -- Adding an aliase name in the table
	FilmReleaseDate AS [Released on], -- using square brackets or the single quotes, I can use spaces
	FilmRunTimeMinutes AS [Duration] -- you can use a quote instead, and you dont have to use AS
FROM 
	dbo.tblFilm


--------------------------
-- Sorting in SQL
-- The ORDER BY clause
-- Sorting by multiple fields
-- Finding the top 10 Records

SELECT TOP 10 WITH TIES-- TOP selects to dsplay top 10 in the ordered list, WITH TIES displays more if there are ties in the field
	FilmName AS [Title], -- Adding an aliase name in the table
	FilmReleaseDate AS [Released on], -- using square brackets or the single quotes, I can use spaces
	FilmRunTimeMinutes AS [Duration] -- you can use a quote instead, and you dont have to use AS
FROM 
	dbo.tblFilm
ORDER BY
	FilmName ASC -- ASC or DESC means ascending order ; alphabetically or numerically
	-- OR 
	Duration ASC -- ASC or DESC means ascending order ; alphabetically or numerically
	FilmName ASC -- This ascends films by duration and ascends films by film name when movies have same run time
	-- OR
	FilmOscarWins DESC -- Can descend even when the field name is not included in the select query but from teh table


--------------------------
-- Number Criteria
-- Text Criteria
-- Wildcards
-- Date Criteria
-- Using AND and OR

SELECT 
	FilmName AS [Title], -- Adding an aliase name in the table
	FilmReleaseDate AS [Released on], -- using square brackets or the single quotes, I can use spaces
	FilmRunTimeMinutes AS [Duration] -- you can use a quote instead, and you dont have to use AS
FROM 
	dbo.tblFilm
WHERE
	FilmRunTImeMinutes = 120 -- This displays films with run time = 120 or >=, <= >, <, <> - not equal to 
	-- OR
	FilmRunTImeMinutes BETWEEN 120 AND 150 -- Between 120 and 150 results will be listed
	-- OR
	FilmRunTImeMinutes IN (90, 120, 150, 180) -- List values in that range
	-- OR
	FilmName == 'die hard' -- This is case insestive it does not matter
	FilmName LIKE 'die hard' -- LIKE can be used instead of ==
	FilmName LIKE 'die hard%' -- % wildcard represents any number of the characters. 'die hard%' follwed by any other words
	FilmName LIKE '%die hard%' -- % wildcard represents any number of the characters. '%die hard%' before or follwed by any other words
	FilmName LIKE 'die hard__' -- __ each underscore wildcard used represent any character after is 'die hard 34' == 'die hard___'
	FilmName <> 'die hard' -- <> excludes the films with die hard name. <> is the same as !=
	FilmName NOT LIKE '%die hard%' -- all the films not like 'die hard' or with a name 'die hard' in it
ORDER BY
	FilmRunTimeMinutes 

--------------------------

SELECT 
	FilmName AS [Title], -- Adding an aliase name in the table
	FilmReleaseDate AS [Released on], -- using square brackets or the single quotes, I can use spaces
	FilmRunTimeMinutes AS [Duration] -- you can use a quote instead, and you dont have to use AS
FROM 
	dbo.tblFilm
WHERE
	FilmReleaseDate = '1933-04-07' -- Always use the date format as your date format computer system
	FilmReleaseDate > '1999-12-31' -- movies released after that date
	FilmReleaseDate BETWEEN '1999-12-31' AND '2000 -12-31' -- movies released after that date
	
	-- By specific dates
	MONTH(FilmReleaseDate) = 5 -- Displays all movies released in the 5th month of any year
	YEAR(FilmReleaseDate) = 2000 -- Displays all movies released in year 2000
	DAY(FilmReleaseDate) = 22 -- Displays all movies released on 22 of any month
	
	-- add criteria int the results
	FilmName LIKE '%star%' AND FilmReleaseDate < '2000-01-01' AND -- Displays films with all word star and released before that date
	FilmRunTimeMinutes > 120

	-- criteria with OR
	FilmName LIKE 'x%' OR
	FilmName LIKE 'y%'

	-- using the brackets for a more accurate results
	FilmRunTImeMinutes > 180 AND
	(FilmName LIKE 's%' OR FilmName LIKE 't%')
ORDER BY
	FilmRunTimeMinutes 










































