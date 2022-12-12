/*

Sample Input
N   P
1   2
3   2
6   8
9   8
2   5
8   5
5   NULL


Sample Output
1   Leaf
2   Inner
3   Leaf
5   Root
6   Leaf
8   Innner
9   Leaf

*/



SELECT n,
    CASE
        WHEN p IS NOT NULL THEN 'Root'
        WHEN n IN (SELECT p FROM bst WHERE p IS NOT NULL) THEN 'Inner'
        ELSE 'Leaf'
    END AS texty
FROM bst
ORDER BY n;

