-- Load FactTrips
BULK INSERT FactTrips
FROM 'C:\DWH\FactTrips.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
