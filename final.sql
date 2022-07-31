-- DROP TABLE IF EXISTS melb_data;
-- CREATE TABLE melb_data (
--     id SERIAL PRIMARY KEY,
--     Suburb VARCHAR   NOT NULL,
--     Address VARCHAR(30)   NOT NULL,
--     Rooms INT   NOT NULL,
--     Type VARCHAR NOT  NULL,
--     Price money   NOT NULL,
--     Method VARCHAR NOT  NULL,
--     Seller VARCHAR NOT  NULL,
--     Date DATE   NOT NULL,
--     Distance FLOAT,
--     Postcode VARCHAR NOT  NULL,
--     Bedroom INT ,
--     Bathroom INT ,
--     Car INT   ,
--     Landsize FLOAT   NOT NULL,
--     BuildingArea FLOAT,
--     YearBuilt INT,
--     CouncilArea VARCHAR ,
--     Lattitude FLOAT   NOT NULL,
--     Longtitude FLOAT   NOT NULL,
--     Regionname VARCHAR   NOT NULL,
--     Propertycount INT   NOT NULL
    

--     );

-- DROP TABLE IF EXISTS melbourne_venues;
-- CREATE TABLE melbourne_venues (
--     id SERIAL PRIMARY KEY,
--     Street VARCHAR   NOT NULL,
--     Suburb VARCHAR   NOT NULL,
--     Latitude FLOAT   NOT NULL,
--     Longitude FLOAT   NOT NULL,
--     Venue VARCHAR   NOT NULL,
--     Venue_Lattitude FLOAT   NOT NULL,
--     venue_Longtitude FLOAT   NOT NULL,
--     category VARCHAR   NOT NULL
    
    

-- );
-- select * from melbourne_venues
-- SELECT Suburb, count(category) AS "MAX category"
-- FROM melbourne_venues
-- GROUP BY Suburb;

-- SELECT Suburb, MAX(price) AS "MAX price"
-- FROM melb_data
-- GROUP BY Suburb;
-- SELECT melbourne_venues.venue, melbourne_venues.category, melbourne_venues.suburb, melb_data.price
-- FROM melbourne_venues
-- LEFT JOIN melb_data ON melbourne_venues.suburb = melb_data.suburb 
-- 	and melbourne_venues.latitude = melb_data.lattitude  
-- 	and melbourne_venues.longitude = melb_data.longtitude;

-- -- Look for venues where price is less than $2M and has more than 4 rooms
-- SELECT melbourne_venues.venue, melbourne_venues.category, melbourne_venues.suburb, melb_data.price
-- FROM melbourne_venues
-- LEFT JOIN melb_data ON melbourne_venues.suburb = melb_data.suburb 
-- 	and melbourne_venues.latitude = melb_data.lattitude  
-- 	and melbourne_venues.longitude = melb_data.longtitude
-- where melb_data.price < '2000000' and melb_data.rooms > 4	
	
-- 	;
select* from melbor_house
SELECT COUNT(DISTINCT Suburb)
FROM melb_data;
select*from melbor_venhouse