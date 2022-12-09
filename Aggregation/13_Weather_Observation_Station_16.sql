/*
Query the smallest Northern Latitude (LAT_N) from STATION
that is greater than 38.7780.
Round your answer to 4 decimal places.


STATION TABLE:

Field       Type
ID          NUMBER
CITY        VARCHAR(21)
STATE       VARCHAR(2)
LAT_N       NUMBER      -- Northern Latitude
LONG_W      NUMBER      -- Western Longtitude

*/

SELECT ROUND(MIN(LAT_N),4)
FROM station
WHERE LAT_N > 38.7780;