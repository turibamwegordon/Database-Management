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
-- Where to write calculations
-- Sorting the results
-- Using calculations in criteria
-- Taking care with data types
-- Some calculations examples

SELECT
	FilmName,
	FilmBoxOfficeDollars,
	FilmBudgetDollars,
	FilmBoxOfficeDollars - FilmBudgetDollars AS [FilmProfitLoss],  -- This calculates the budgets and displays results of each row in under FilmPrice column
	FilmRunTImeMinutes / 60.0 AS [RunTimeHours] -- Want to dsplay films time in hours
FROM
	tblFilm
WHERE 
	(FilmBoxOfficeDollars - FilmBudgetDollars) < 0 -- Display results where the resutl of that is less than 0
ORDER BY
	FilmProfitLoss DESC -- Descend using the FilmProfitLoss column


--------------------------
-- Calculate tax based on how much money the film made

SELECT
	FilmName,
	FilmBoxOfficeDollars,
	FilmBoxOfficeDollars * 0.2 AS [FilmTax], -- Multiplication sign
	FilmBudgetDollars + (FilmBoxOfficeDollars * 0.2) AS [FilmTotal] -- Plus sign
	FilmRunTImeMinutes / 60 AS [Hours] -- Divide sign
	FilmRunTImeMinutes % 60 AS [Hours] -- Modulous sign
FROM
	tblFilm


--------------------------
-- What are the CASE statements used for?
-- Using CASE with numbers
-- Using CASE with text
-- Using CASE with dates

SELECT
	FilmName,
	FilmRunTImeMinutes,
	CASE
		WHEN FilmRunTImeMinutes <= 90 THEN 'Short' -- Each case begins with a WHEN
		WHEN FilmRunTImeMinutes <= 150 THEN 'Medium' -- Each case begins with a WHEN
		WHEN FilmRunTImeMinutes <= 180 THEN 'Long' -- Each case begins with a WHEN
		ELSE 'Epic'
	END AS [FilmDuration], -- This makes the column FilmDuration
	FilmReleaseDate
FROM
	tblFilm
WHERE
	CASE
		WHEN FilmRunTImeMinutes <= 90 THEN 'Short' -- Each case begins with a WHEN
		WHEN FilmRunTImeMinutes <= 150 THEN 'Medium' -- Each case begins with a WHEN
		WHEN FilmRunTImeMinutes <= 180 THEN 'Long' -- Each case begins with a WHEN
		ELSE 'Epic'
	END = 'Medium' -- This displays the movies with Medium from the case statment


--------------------------
SELECT
	FilmName,
	CASE
		WHEN FilmNAme LIKE '%twilight%' THEN 'Just awful'
		ELSE 'Probably not bad'
	END
FROM
	tblFilm


--------------------------
SELECT
	FilmName,
	FilmReleaseDate,
	CASE
		WHEN FilmReleaseDate < '1927-10-01' THEN 'Silent era'
		ELSE 'Talkie era'
	END
FROM
	tblFilm































