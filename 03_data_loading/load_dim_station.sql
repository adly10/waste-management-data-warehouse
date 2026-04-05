-- Load DimStation
BULK INSERT DimStation
FROM 'C:\DWH\DimStation.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
