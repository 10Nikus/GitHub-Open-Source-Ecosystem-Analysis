SELECT 
  name as programming_language, 
  AVG(LENGTH(message)) as average_commit_length,
  COUNT(*) as total_commits 
FROM `bigquery-public-data.github_repos.sample_commits` AS sc
INNER JOIN `bigquery-public-data.github_repos.languages` AS l ON sc.repo_name = l.repo_name,
UNNEST(language)
GROUP BY name
HAVING total_commits > 10000
ORDER BY average_commit_length DESC
