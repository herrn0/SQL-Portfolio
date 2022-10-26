SELECT ntd.title, ntd.cast, nc.genre, nc."Hidden Gem Score", nc."Rotten Tomatoes Score", nc.boxoffice
FROM netflix_title_data AS ntd
LEFT JOIN netflix_critic nc
ON ntd.title = nc.title
WHERE nc."Rotten Tomatoes Score"  > 70
AND nc."IMDb Votes" > 500
AND nc.genre NOT LIKE '%Documentary%'
AND nc."Country Availability" LIKE '%United States%'
ORDER BY nc."Hidden Gem Score" DESC;
