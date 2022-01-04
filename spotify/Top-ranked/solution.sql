SELECT 
     distinct song_name
FROM billboard_top_100_year_end
WHERE 
    year_rank = 1 AND
    DATE_PART('year', CURRENT_DATE) - year <= 30
