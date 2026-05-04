--Create New DataBase
CREATE DATABASE ANB_Analysis;

USE ANB_Analysis;

SELECT * FROM  AB_NYC_clean;

--Top Neighborhoods by Price
SELECT TOP 10
	neighbourhood_group,
	neighbourhood,
	ROUND(AVG(COALESCE(price, 0)),2 ) AS AvgPrice
FROM AB_NYC_clean
GROUP BY neighbourhood_group, neighbourhood
ORDER BY AvgPrice DESC

--Most Active Hosts
SELECT TOP 10
	host_id,
	host_name,
	COUNT(*) AS total_listing
FROM  AB_NYC_clean
GROUP BY host_id, host_name
ORDER BY total_listing DESC

--Room Type Distribution

SELECT 
	room_type,
	COUNT(*) AS total_room
FROM AB_NYC_clean
GROUP BY room_type
ORDER BY total_room DESC


--Price vs Reviews Insights
SELECT 
	CASE 
		WHEN price < 100 THEN 'LOW'
		WHEN price BETWEEN 100 AND 300 THEN 'MEDIUM'
		ELSE 'HIGH'
	END AS price_category,
	ROUND(AVG(CAST(number_of_reviews as int) ),2) AS AvgReviews
FROM AB_NYC_clean
GROUP BY CASE 
		WHEN price < 100 THEN 'LOW'
		WHEN price BETWEEN 100 AND 300 THEN 'MEDIUM'
		ELSE 'HIGH'
	END 

ORDER BY price_category DESC

--Availability Trends
SELECT 
CASE 
	WHEN availability_365 <= 0 THEN 'Not Available'
	WHEN availability_365 <= 100 THEN 'low Availability'
	WHEN availability_365 <= 300 THEN 'Medium Availability'
	ELSE 'High Availability'

END AS Availability_Category,
COUNT(*) AS total_count

FROM AB_NYC_clean

GROUP BY 
CASE 
	WHEN availability_365 <= 0 THEN 'Not Available'
	WHEN availability_365 <= 100 THEN 'low Availability'
	WHEN availability_365 <= 300 THEN 'Medium Availability'
	ELSE 'High Availability'

END 

ORDER BY Availability_Category DESC

--Average Price By Room_type
SELECT 
	room_type,
	ROUND(AVG(COALESCE(price, 0)), 2) AS AvgPrice,
	MAX(price) AS MaximumPrice
FROM AB_NYC_clean

GROUP BY room_type

ORDER BY AvgPrice DESC

--Best Value listings
SELECT 
	CASE 
		WHEN price <= 100 THEN 'Low Price'
		WHEN price BETWEEN 101 AND 300 THEN 'Medium Price'
		ELSE 'High Price'
	END AS price_category,
COUNT(number_of_reviews) AS total_reviews
FROM AB_NYC_clean

GROUP BY 	CASE 
		WHEN price <= 100 THEN 'Low Price'
		WHEN price BETWEEN 101 AND 300 THEN 'Medium Price'
		ELSE 'High Price'
	END 

ORDER BY total_reviews DESC

--Review Activity By Neighborhood Group
SELECT 
	neighbourhood_group,
	COUNT(number_of_reviews) AS total_reviews_count

FROM AB_NYC_clean

GROUP BY neighbourhood_group

ORDER BY total_reviews_count DESC


--Listings with zero review 
SELECT TOP 5
	neighbourhood,
	neighbourhood_group, 
	COUNT(number_of_reviews) AS total_Zero_reviews

FROM AB_NYC_clean

WHERE number_of_reviews = 0

GROUP BY neighbourhood, neighbourhood_group

ORDER BY total_Zero_reviews DESC


--Monthly Review Trends

SELECT TOP 5

	 MONTH(last_review) AS Month,
	 COUNT(number_of_reviews) AS Total_by_Months
FROM AB_NYC_clean

WHERE  MONTH(last_review) BETWEEN 1 AND 12

GROUP BY  MONTH(last_review)


ORDER BY Total_by_Months DESC


--Seasons vs PRICE 
SELECT 
		CASE 
			 WHEN MONTH(last_review) BETWEEN 3 AND 5 THEN 'Spring'
			 WHEN MONTH(last_review)  BETWEEN 6 AND 8 THEN 'Summer'
			  WHEN MONTH(last_review) BETWEEN 9 AND 11 THEN 'Fall'
			 ELSE 'Winter'
		 END AS seasons,
	ROUND(AVG(price), 0) AS AvgPrice,
	COUNT(number_of_reviews) AS total_reviews
FROM AB_NYC_clean

WHERE  MONTH(last_review) BETWEEN 1 AND 12

GROUP BY  CASE 
			 WHEN MONTH(last_review) BETWEEN 3 AND 5 THEN 'Spring'
			 WHEN MONTH(last_review)  BETWEEN 6 AND 8 THEN 'Summer'
			  WHEN MONTH(last_review) BETWEEN 9 AND 11 THEN 'Fall'
			 ELSE 'Winter'
		 END


ORDER BY AvgPrice DESC
