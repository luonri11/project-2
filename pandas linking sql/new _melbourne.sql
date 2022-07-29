
CREATE TABLE melbourne_housing (
    Suburb VARCHAR   NOT NULL,
    Address VARCHAR(30)   NOT NULL,
    Price money   NOT NULL,
    CouncilArea VARCHAR 
    );


CREATE TABLE melbourne_venue (
    Suburb VARCHAR   NOT NULL,    
    Venue VARCHAR   NOT NULL,   
    Venuecategory VARCHAR   NOT NULL

);
SELECT * FROM melbourne_venue