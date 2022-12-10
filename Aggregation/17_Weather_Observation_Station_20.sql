/*

A median is defined as a number separating the higher half of a data set from the lower half.
Query the median of the Northern Latitudes (LAT_N) from STATION
and round your answer to 4 decimal places.


STATION TABLE:

Field       Type
ID          NUMBER
CITY        VARCHAR(21)
STATE       VARCHAR(2)
LAT_N       NUMBER      -- Northern Latitude
LONG_W      NUMBER      -- Western Longtitude

*/

SET @rownum := - 1;

SELECT ROUND(LAT_N, 4)
FROM (
    SELECT LAT_N, (@rownum := @rownum + 1) AS rownum
    FROM station
    ORDER BY LAT_N
) AS sub
WHERE sub.rownum IN ( FLOOR(@rownum / 2), CEIL(@rownum / 2));



SELECT COUNT(*)
FROM station;    /* Find out the total count of records, which returns 449*/

SELECT ROUND(LAT_N, 4)
FROM station
ORDER BY LAT_N
LIMIT 1 OFFSET 249; /* Return the median record which is (449-1)/2 */

