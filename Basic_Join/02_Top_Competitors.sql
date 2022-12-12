/*
    CONSTRAINTS:
        Order output in DESC order by total number of challenges
        If more than one hacker received full score, then sort them
        by ASC hacker_id
*/
SELECT h.hacker_id, h.name
FROM submissions s
JOIN challenges c
ON s.challenge_id = c.challenge_id
JOIN difficulty d
ON d.difficulty_level = c.difficulty_level
JOIN hackers h
ON h.hacker_id = s.hacker_id
WHERE c.difficulty_level = d.difficulty_level AND s.score = d.score
/* the hacker's score must match the max scores given in the difficulty table */
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.challenge_id) > 1
ORDER BY COUNT(s.hacker_id) DESC, s.hacker_id ASC;