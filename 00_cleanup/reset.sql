-- Reset database (optional)
DROP TABLE IF EXISTS FactTrips;
DROP TABLE IF EXISTS DimDate;
DROP TABLE IF EXISTS DimTruck;
DROP TABLE IF EXISTS DimStation;

DROP VIEW IF EXISTS dbo.max_waste_stats;
