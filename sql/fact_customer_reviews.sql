SELECT *
FROM [dbo].[customer_reviews]

-- Query to clean whitespace issues in the ReviewText column
SELECT ReviewID, CustomerID, ProductID, ReviewDate, Rating,
	(
        SELECT STRING_AGG(value, ' ')
        FROM STRING_SPLIT(ReviewText, ' ')
        WHERE value <> ''
    ) AS ReviewText
FROM dbo.customer_reviews