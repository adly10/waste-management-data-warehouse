-- Dimension: Date
CREATE TABLE DimDate (
    dateid INT PRIMARY KEY,
    date DATE,
    Year INT,
    Quarter INT,
    QuarterName VARCHAR(10),
    Month INT,
    Monthname VARCHAR(20),
    Day INT,
    Weekday INT,
    WeekdayName VARCHAR(20)
);
