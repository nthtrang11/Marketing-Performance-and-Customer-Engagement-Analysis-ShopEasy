SELECT *
FROM [dbo].[engagement_data]

-- Query to clean and normalize the engagement_data table
SELECT EngagementID, ContentID, CampaignID, ProductID,
	-- Replaces 'Socialmedia' with 'Social Media' and uppercase all content type
	UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType,
	-- Extracts	the Views part from ViewsClickCombined
	LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS Views,
	-- Extracts	the Clicks part from ViewsClickCombined
	RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS Clicks,
	Likes,
	-- Converts the EngagementDate to the dd.MM.yyyy format
	FORMAT(CONVERT(DATE, EngagementDate), 'dd.MM.yyyy') AS EngagementDate
FROM dbo.engagement_data