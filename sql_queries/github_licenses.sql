SELECT 
  license,
  COUNT(*) as license_count 
 FROM `bigquery-public-data.github_repos.licenses` 
 GROUP BY license
 ORDER BY license_count DESC