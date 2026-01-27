SELECT *
FROM [dbo].[customer_journey];

-- Common Table Expression (CTE) to identify and tag duplicate records
WITH DuplicateRecords AS (
	SELECT JourneyID, CustomerID, ProductID, VisitDate, Stage, Action, Duration,
		-- Use ROW_NUMBER() to assign a unique row number to each record within the partition defined below
		ROW_NUMBER() OVER(
			-- PARTITION BY group the rows based on the specified columns that should be unique
			PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action
			-- ORDER BY defines how to order the rows within each partition (usually by a unique identifier like JourneyID)
			ORDER BY JourneyID
		) AS row_num
	FROM dbo.customer_journey
)

-- Select all records from the CTE where row_num > 1, which indicates duplicate entries
SELECT *
FROM DuplicateRecords
WHERE row_num > 1
ORDER BY JourneyID;


-- Outer query selects the final cleaned and standardized data
SELECT JourneyID, CustomerID, ProductID, VisitDate, Stage, Action, 
	-- Replaces missing duration with the average duration for the corresponding 
	COALESCE(Duration, avg_duration) AS Duration
FROM (
	-- Sub query to process and clean data
	SELECT JourneyID, CustomerID, ProductID, VisitDate, 
		-- Standardize stage values to avoid duplicates caused by case differences
		UPPER(Stage) AS Stage,
		Action, Duration,
		-- Calculate the avg duration for each date, using a window function
		AVG(Duration) OVER (PARTITION BY VisitDate) AS avg_duration,
		-- Identify duplicate records within the same customer journey context
		ROW_NUMBER() OVER(
			PARTITION BY CustomerID, ProductID, VisitDate, UPPER(Stage), Action
			ORDER BY JourneyID
		) AS row_num
	FROM dbo.customer_journey
	) AS subquery
-- Keep only the first occurrence of each duplicate group identified in the subquery
WHERE row_num = 1;