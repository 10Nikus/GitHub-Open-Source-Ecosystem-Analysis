SELECT 
  EXTRACT(YEAR FROM committer.date) as commit_year,
  COUNT(*) AS commits_count 
FROM `bigquery-public-data.github_repos.sample_commits` 
GROUP BY commit_year  