SELECT 
  EXTRACT(DAYOFWEEK FROM committer.date) AS day_of_week,
  EXTRACT(HOUR FROM committer.date) as hour,
  COUNT(*) as commit_count
FROM `bigquery-public-data.github_repos.sample_commits` 
GROUP BY 
  day_of_week,
  hour
ORDER BY 
  day_of_week,
  hour  