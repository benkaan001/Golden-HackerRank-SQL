/*

Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION
that is less than 137.2345.
Round your answer to 4 decimal places.


STATION TABLE:

Field       Type
ID          NUMBER
CITY        VARCHAR(21)
STATE       VARCHAR(2)
LAT_N       NUMBER      -- Northern Latitude
LONG_W      NUMBER      -- Western Longtitude

*/

SELECT ROUND(LONG_W, 4)
FROM station
WHERE LAT_N = (SELECT MAX(LAT_N) FROM station WHERE LAT_N < 137.2345);