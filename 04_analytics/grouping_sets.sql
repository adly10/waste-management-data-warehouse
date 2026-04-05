-- GROUPING SETS Query
SELECT 
    f.stationid,
    t.trucktype,
    SUM(f.wastecollected) AS total_waste
FROM FactTrips f
JOIN DimTruck t 
    ON f.truckid = t.truckid
GROUP BY GROUPING SETS (
    (f.stationid, t.trucktype),
    (f.stationid),
    (t.trucktype),
    ()
);
