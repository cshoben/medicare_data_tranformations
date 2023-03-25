

SELECT COUNT(*), person_id
FROM db_cpc
WHERE last_bc_login IS NOT null
GROUP BY person_id
ORDER BY count DESC

SELECT *
FROM db_cpc
WHERE last_bc_login IS null AND bc_registered = 1

SELECT *
FROM db_cpc
WHERE last_bc_login IS NOT null AND bc_registered = 0


SELECT *
FROM db_cpc
WHERE person_id = 'p70306216437'