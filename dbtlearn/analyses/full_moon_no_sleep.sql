WITH mart_fullmoon_reviews AS (
    SELECT * FROM {{ ref('mart_full_moon_reviews')}}
)
SELECT 
    is_full_moon,
    review_sentiment,
    Count(*) as review 
FROM 
    mart_full_moon_reviews
GROUP BY 
    is_full_moon,
    review_sentiment
ORDER BY 
    is_full_moon,
    review_sentiment