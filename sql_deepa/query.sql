SELECT Suburb, count(category) AS "MAX category"
FROM melbourne_venues
GROUP BY Suburb;

SELECT Suburb, MAX(price) AS "MAX price"
FROM melb_data
GROUP BY Suburb;
