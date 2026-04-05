-- View: Max Waste Statistics
CREATE VIEW dbo.max_waste_stats
AS
SELECT 
    s.city,
    f.stationid,
    t.trucktype,
    MAX(f.wastecollected) AS max_waste
FROM FactTrips f
JOIN DimStation s 
    ON f.stationid = s.stationid
JOIN DimTruck t 
    ON f.truckid = t.truckid
GROUP BY 
    s.city,
    f.stationid,
    t.trucktype;
