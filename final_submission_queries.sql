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

-- these are used to show the initial structure of the tables, which are then used in the inital EBD diagram
    

DROP TABLE IF EXISTS melbor_venhouse

Select  "Suburb", "Venuecategory", COUNT("Suburb")
From melbor_venhouse
group by   "Suburb", "Venuecategory"
order by "Suburb"   

SELECT "Suburb", MAX("Price") AS "MAX price"
FROM melbor_housing
GROUP BY "Suburb";

SELECT melbor_venue."Venue", melbor_venue."Venuecategory", melbor_venue."Suburb", melbor_housing."Price", melbor_housing."Rooms"
FROM melbor_venue
LEFT JOIN melbor_housing ON 
	melbor_venue."Suburb" = melbor_housing."Suburb"
	and melbor_venue."Latitude" = melbor_housing."Lattitude"  
	and melbor_venue."Longitude" = melbor_housing."Longtitude"
	where melbor_housing."Rooms" >3 ;
    
SELECT "Suburb", count("Venuecategory") AS "MAX category"
FROM melbor_venue
GROUP BY "Suburb";

SELECT "Suburb", MAX("Price") AS "MAX price"
FROM melbor_housing
GROUP BY "Suburb";