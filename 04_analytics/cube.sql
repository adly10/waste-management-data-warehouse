-- CUBE Query
SELECT 
    d.year,
    s.city,
    f.stationid,
    AVG(f.wastecollected) AS avg_waste
FROM FactTrips f
JOIN DimDate d 
    ON f.dateid = d.dateid
JOIN DimStation s 
    ON f.stationid = s.stationid
GROUP BY CUBE (
    d.year,
    s.city,
    f.stationid
);
