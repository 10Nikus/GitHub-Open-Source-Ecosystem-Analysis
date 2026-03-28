
SELECT 
  name as programming_language,
  COUNT(name) as repositories_count, 
  AVG(bytes) AS average_size_of_repo
FROM `bigquery-public-data.github_repos.languages`, 
UNNEST(language)
GROUP BY name 
HAVING repositories_count > 10000 
ORDER BY average_size_of_repo DESC