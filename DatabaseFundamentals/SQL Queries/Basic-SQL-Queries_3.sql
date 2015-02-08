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
-- Why do we need joins?
-- Understanding the structure of a database
-- Writing simple inner joins
-- Including more tables

-- Using outer joins
-- Finding unmatched records
-- Telling your left from your righ
-- Full outer joins

SELECT
	* -- shows everything in the table
FROM
	tblFilm


--------------------------
-- Basic Inner joins
SELECT
	* -- shows everything in the table
FROM
	tblFilm AS f, -- Give a table an Alias id tblFilm will be called f
	INNER JOIN tblDirector AS d -- Give table aliase d
		ON f.FilmDirectorID = d.DirectorID -- Tell the query which 2 fields from those tables are joined to together. You do that with ON
	INNER JOIN tblStudio AS s
		ON f.FilmStudioID = s.StudioID
-- You can bring in any table you want, they all use the same sequence



--------------------------
SELECT
	f.FilmName, -- display only columns witht those fields fromt he joins
	d.DirectorName,
	c.CountryName
FROM
	tblFilm AS f, -- Give a table an Alias id tblFilm will be called f
	INNER JOIN tblDirector AS d -- INNER JOIN brings all FilmDirectorID equal to DirectorID
		ON f.FilmDirectorID = d.DirectorID -- Tell the query which 2 fields from those tables are joined to together. You do that with ON
	INNER JOIN tblStudio AS s
		ON f.FilmStudioID = s.StudioID
	INNER JOIN tblCountry AS c
		ON f.FilmCountryID = c.tblCountryID -- must equate to IDs



--------------------------
SELECT
	d.DirectorID,
	d.DirectorName,
	f.FilmDirectorID
FROM
	tblDirector AS d -- listed Director table first makes the results used as LEFT OUTER JOIN point to Dirctor table
	LEFT OUTER JOIN tblFilm AS f -- Show the director in the directors table who have not directed a film LEFT OUTER JOIN bring all DIrectorID but not equal to FilmDirctor ID
		ON d.DirectorID = f.FilmDirectorID
WHERE
	f.FilmID IS NULL -- Shows results with NULL values



--------------------------
SELECT
	d.DirectorName
FROM
	tblActor AS a
	LEFT OUTER JOIN tblDirector AS d -- Finding Actors that have never directed
	INNER JOIN tblDirector AS d -- Finding Actors that have Directed a film
	RIGHT OUTER JOIN tblDirector AS d -- Finding Dircetors that have never acted
	FULL OUTER JOIN tblDirector AS d -- Shows you all of the values of right, left and inner joins
		ON a.ActorName = d.DirectorName
WHERE
	d.Director IS NULL -- Display Directors that have never acted in Actor table. NULL is they miss in the Actor table





































