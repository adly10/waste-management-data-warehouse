-- Fact Table: Trips
CREATE TABLE FactTrips (
    Tripid INT PRIMARY KEY,
    Dateid INT,
    Stationid INT,
    Truckid INT,
    Wastecollected DECIMAL(10,2),

    FOREIGN KEY (Dateid) REFERENCES DimDate(dateid),
    FOREIGN KEY (Stationid) REFERENCES DimStation(stationid),
    FOREIGN KEY (Truckid) REFERENCES DimTruck(truckid)
);
