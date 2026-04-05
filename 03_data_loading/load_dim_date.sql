-- Load DimDate
BULK INSERT DimDate
FROM 'C:\DWH\DimDate.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
