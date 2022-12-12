SELECT h.hacker_id, h.name, COUNT(c.challenge_id)
FROM hackers h
JOIN challenges c
ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING COUNT(c.challenge_id) =
    (
        WITH challenge_cte(challenge_count) AS (
            SELECT COUNT(challenge_id)
            FROM challenges
            GROUP BY hacker_id
            ORDER BY COUNT(challenge_id) DESC
        )
        SELECT MAX(challenge_count)
        FROM challenge_cte
    )
ORDER BY COUNT(hacker_id) DESC;

/*
So far only getting those with SUM(COUNT(challenge_id)) = MAX(COUNT(challenge_id)), which is 50
Need to figure out the second constraint
*/