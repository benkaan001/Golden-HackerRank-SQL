/*
Consider  P1(a,c) and P2(b,d) to be two points on a 2D plane
where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N)
and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and P2 and
format your answer to display 4 decimal digits.



Euclidean Distance Formula:

Let point p have Cartesian coordinates(p1,p2) and
let point q have coordinates (q1,q2).
Then the distance between p and q is given by:
          ______________________
d(p,q) = √ (q1-p1)^2 + (q2-p2)^2


STATION TABLE:

Field       Type
ID          NUMBER
CITY        VARCHAR(21)
STATE       VARCHAR(2)
LAT_N       NUMBER      -- Northern Latitude
LONG_W      NUMBER      -- Western Longtitude

*/



SELECT ROUND(SQRT((POWER((MAX(LAT_N) - MIN(LAT_N)), 2) + POWER((MAX(LONG_W) - MIN(LONG_W)), 2))), 4)
FROM station