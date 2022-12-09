/*

Query the sum of Northern Latitudes (LAT_N) from STATION
having values greater than 38.7880 and less than 137.2345.
Truncate your answer to 4 decimal places.

STATION TABLE:

Field       Type
ID          NUMBER
CITY        VARCHAR(21)
STATE       VARCHAR(2)
LAT_N       NUMBER      -- Northern Latitude
LONG_W      NUMBER      -- Western Longtitude

*/

SELECT ROUND(SUM(LAT_N),4)
FROM station
WHERE ROUND(LAT_N,4) > 38.7880 AND ROUND(LAT_N,4) < 137.2345;
