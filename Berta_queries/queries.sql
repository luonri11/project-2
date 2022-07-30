-- Identify the price of the property from the melb_data table for all the venues in melbourne_venues
SELECT melbourne_venues.venue, melbourne_venues.category, melbourne_venues.suburb, melb_data.price
FROM melbourne_venues
LEFT JOIN melb_data ON melbourne_venues.suburb = melb_data.suburb 
	and melbourne_venues.latitude = melb_data.lattitude  
	and melbourne_venues.longitude = melb_data.longtitude;

