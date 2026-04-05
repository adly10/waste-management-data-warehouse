-- Load DimTruck
BULK INSERT DimTruck
FROM 'C:\DWH\DimTruck.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
