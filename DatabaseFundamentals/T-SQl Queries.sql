SELECT * FROM dbo.Experiements
-- SELECT key word
-- * indicate all columns, requested columns
-- FROM followed by the table with data
-- WHERE - Allows you to filter results

SELECT * FROM dbo.Experiements
WHERE Experiement = 'Exp1'

SELECT Experiement FROM dbo.Experiements

SELECT * FROM dbo.Experiements
ORDER BY ExperiementId DESC
-- DESC - Descending order
-- ASC - Ascending order

SELECT * Experiement + ':' + [Description] as DerivedColumn
FROM dbo.Experiements
-- Compose new columns from returned data
-- Concatinating Experiement + Description
-- Name column DerivedColumn
-- [] for Description is treated as a column not as a key word

SELECT * FROM dbo.RunValues
ORDER BY RunId, [Time]

SELECT RunId, AVG(Value) as AvgTemp
FROM dbo.RunValues
GROUP BY RunId

SELECT * FROM dbo.Experiements
SELECT * FROM dbo.Runs

SELECT E.Experiment, R. *
FROM Runs R
INNER JOIN Experiements E ON E.ExperiementId = R.ExperiementId

-- JOINS returns combined results from multiple tables
-- With JOIN you alias the the tables followed by a .

SELECT E.Experiment, MIN(R.StartTime) as MinStartTime
FROM Runs R
INNER JOIN Experiments E ON E.ExperiementId = R.ExperiementId
GROUP BY E.Experiments
ORDER BY MinStartTime ASC



