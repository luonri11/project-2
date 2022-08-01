-- Identify the price of the property from the melb_data table for all the venues in melbourne_venues
--SELECT melbourne_venues.venue, melbourne_venues.category, melbourne_venues.suburb, melb_data.price
--FROM melbourne_venues
--LEFT JOIN melb_data ON melbourne_venues.suburb = melb_data.suburb 
--	and melbourne_venues.latitude = melb_data.lattitude  
--	and melbourne_venues.longitude = melb_data.longtitude;

-- Look for venues where price is less than $2M and has more than 4 rooms
--SELECT melbourne_venues.venue, melbourne_venues.category, melbourne_venues.suburb, melb_data.price
--FROM melbourne_venues
--LEFT JOIN melb_data ON melbourne_venues.suburb = melb_data.suburb 
	--and melbourne_venues.latitude = melb_data.lattitude  
	--and melbourne_venues.longitude = melb_data.longtitude
--where melb_data.price < '2000000' and melb_data.rooms > 4	
	
	;

	-- Identify the price of the property from the melbour_housing table for all the venues in melbor_venue
SELECT melbor_venue."Venue", melbor_venue."Venuecategory", melbor_venue."Suburb", melbor_housing."Price"
FROM melbor_venue
LEFT JOIN melbor_housing ON 
	melbor_venue."Suburb" = melbor_housing."Suburb"
	and melbor_venue."Latitude" = melbor_housing."Lattitude"  
	and melbor_venue."Longitude" = melbor_housing."Longtitude";