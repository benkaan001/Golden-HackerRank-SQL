
/*
    Students -> id(int), name(string), marks(int)

    Grades
    Grade   Min_Mark  Max_Mark
    1       0           9
    2       10          19
    3       20          29
    4       30          39
    5       40          49
    6       50          59
    7       60          69
    8       70          79
    9       80          89
    10      90          100

    If the grade is less than 8, print NULL instead of student name.
    Order by grade in DESC order
    If two students have the same marks, order by name alphabetically  - in ASC order
    For null-named students, order by grades in DESC order if two students have the same grade,
    order them by their marks in ASC order


*/

SELECT IF(g.grade < 8, NULL, s.name), g.grade, s.name
FROM students s
JOIN grades g
WHERE s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY g.grade DESC, s.name ASC






/*

More verbose altrenative that also passes the test case(s).

*/

SELECT s.name, g.grade, s.marks
FROM students s
JOIN grades g
ON s.marks >= g.min_mark AND s.marks <= g.max_mark
WHERE s.marks > 69
ORDER BY g.grade DESC, s.name ASC;

SELECT NULL, g.grade, s.marks
FROM students s
JOIN grades g
ON s.marks >= g.min_mark AND s.marks <= g.max_mark
WHERE s.marks < 70
ORDER BY g.grade DESC, s.marks ASC;
