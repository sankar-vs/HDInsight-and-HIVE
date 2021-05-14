DROP TABLE IF EXISTS day_wise;

CREATE EXTERNAL TABLE day_wise(
        DateDayWise DATE,
        ConfirmedCases INT,
        ConfirmedDeaths INT,
        RecoverdCases INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION 'wasbs:///hadoopcluster@mydemostorage1234.blob.core.windows.net/processed/day_wise.csv';

--Load data Into HIVE table
LOAD DATA INPATH "wasbs:///hadoopcluster@mydemostorage1234.blob.core.windows.net/processed/day_wise.csv" INTO TABLE day_wise;

--Total Recored from the Table
SELECT *
FROM day_wise LIMIT 10;

SELECT COUNT(*) AS TotalRecords
FROM day_wise LIMIT 10;

--Days which have large Deaths/Recovered/ConfirmedCases
SELECT DateDayWise, ConfirmedDeaths AS MostConfirmedDeaths
FROM day_wise
ORDER BY ConfirmedDeaths DESC LIMIT 10;

SELECT DateDayWise, RecoverdCases AS MostRecoverdCases
FROM day_wise
ORDER BY RecoverdCases DESC LIMIT 10;

SELECT DateDayWise, ConfirmedCases AS MostConfirmedCases
FROM day_wise
ORDER BY ConfirmedCases DESC LIMIT 10;

--Days which have least Deaths/Recovered/ConfirmedCases
SELECT DateDayWise, ConfirmedDeaths AS LeastConfirmedDeaths
FROM day_wise
ORDER BY ConfirmedDeaths ASC LIMIT 10;

SELECT DateDayWise, RecoverdCases AS LeastRecoverdCases
FROM day_wise
ORDER BY RecoverdCases ASC LIMIT 10;

SELECT DateDayWise, ConfirmedCases AS LeastConfirmedCases
FROM day_wise
ORDER BY ConfirmedCases ASC LIMIT 10;
