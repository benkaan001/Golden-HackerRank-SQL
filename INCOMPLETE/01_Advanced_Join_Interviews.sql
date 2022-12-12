SELECT c.contest_id, c.hacker_id, c.name,
       SUM(s.total_submissions), SUM(s.total_accepted_submissions),
       SUM(v.total_views), SUM(v.total_unique_views)
FROM contests c
JOIN colleges col
ON col.contest_id = c.contest_id
JOIN challenges chal
ON chal.college_id = col.college_id
JOIN view_stats v
ON v.challenge_id = c.challenge_id
JOIN submission_stats s
ON s.challenge_id = v.challenge_id
GROUP BY c.contest_id, c.hacker_id, c.name
HAVING (SUM(s.total_submissions) + SUM(s.total_accepted_submissions) +
SUM(v.total_views) + SUM(v.total_unique_views)) <> 0
ORDER BY c.contest_id;

/*
Resulting in 47 records, but not passing the case test. Not sure why. LEFT-JOIN no change.
Not clear about the definition of a challenge and contest.
Re-read the Note in the description.

FIRST - LAST RECORDS

845     579     Rose    2566    841     2747    957
19575   17562   Lori    4871    1458    5692    1695

*/