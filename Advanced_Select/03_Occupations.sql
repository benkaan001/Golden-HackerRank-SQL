SET @doc=0, @prof=0, @sing=0, @act=0;

SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor)
FROM (
  SELECT
    CASE
        WHEN occupation = 'Doctor' THEN (@doc := @doc+1)
        WHEN occupation = 'Professor' THEN (@prof := @prof+1)
        WHEN occupation = 'Singer' THEN (@sing := @sing+1)
        WHEN occupation = 'Actor' THEN (@act := @act+1)
    END AS rownumber,
    CASE
        WHEN occupation = 'Doctor' THEN Name
    END AS Doctor,
    CASE
        WHEN occupation = 'Professor' THEN Name
    END AS Professor,
    CASE
        WHEN occupation = 'Singer' THEN Name
    END AS Singer,
    CASE
        WHEN occupation = 'Actor' THEN Name
    END AS Actor
  FROM occupations
  ORDER BY Name
    ) temp_table
GROUP BY rownumber;


/*

Explanation

The first column is an alphabetically ordered list of Doctor names.
The second column is an alphabetically ordered list of Professor names.
The third column is an alphabetically ordered list of Singer names.
The fourth column is an alphabetically ordered list of Actor names.
The empty cell data for columns with less than the maximum number of
names per occupation (in this case, the Professor and Actor columns)
are filled with NULL values.

Aamina Ashley Christeen Eve
Julia Belvet Jane Jennifer
Priya Britney Jenny Ketty
NULL Maria Kristeen Samantha
NULL Meera NULL NULL
NULL Naomi NULL NULL
NULL Priyanka NULL NULL

*/