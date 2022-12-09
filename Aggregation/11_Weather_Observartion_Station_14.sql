/*

Query the greatest value of the Northern Latitudes (LAT_N) from STATION
that is less than 137.2345.
Truncate your answer to  4 decimal places.


STATION TABLE:

Field       Type
ID          NUMBER
CITY        VARCHAR(21)
STATE       VARCHAR(2)
LAT_N       NUMBER      -- Northern Latitude
LONG_W      NUMBER      -- Western Longtitude

*/

SELECT ROUND(MAX(LAT_N),4)
FROM station
WHERE LAT_N < 137.2345;