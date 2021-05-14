DROP TABLE IF EXISTS country_wise;

CREATE EXTERNAL TABLE country_wise(
Country STRING,
Continent STRING,
Population INT,
TotalCases INT,
TotalDeaths INT,
TotalRecovered INT,
ActiveCases INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION 'wasbs:///hadoopcluster@mydemostorage1234.blob.core.windows.net/processed_input/worldometer.csv';

-- Loading data into HIVE table
LOAD DATA INPATH "wasbs:///hadoopcluster@mydemostorage1234.blob.core.windows.net/processed_input/worldometer.csv" INTO TABLE country_wise;

--Total Records In the HIVE Table country_wise
SELECT *
FROM country_wise LIMIT 10;

SELECT COUNT(*) AS TotalRecords
FROM country_wise;

--Top 10 Countries Most Affected By Deaths
SELECT Country AS CountriesMostAffected, TotalDeaths
FROM country_wise
ORDER BY TotalDeaths DESC LIMIT 10;

--Top 10 Countries Least Affected By Deaths
SELECT Country AS CountriesLeastAffected, TotalDeaths
FROM country_wise
Order BY TotalDeaths ASC LIMIT 10;

--Top 10 Countries having Large Recovery Rate
SELECT Country AS CountriesWithLargeRecovery, TotalRecovered
FROM country_wise
ORDER BY TotalRecovered DESC LIMIT 10;

--Top 10 Countries having Least Recovery Rate
SELECT Country AS CountriesWithLeastRecovery, TotalRecovered
FROM country_wise
ORDER BY TotalRecovered ASC LIMIT 10;
