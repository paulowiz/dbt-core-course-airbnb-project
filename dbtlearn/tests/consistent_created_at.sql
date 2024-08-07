WITH reviews AS (
    SELECT 
        * 
    FROM 
        {{ ref('fct_reviews') }}
    
),
listings_cleansed AS (
    SELECT 
        * 
    FROM 
        {{ ref('dim_listings_cleansed') }}
    
)


SELECT 
    r.review_date,
    lc.created_at,
    r.listing_id

FROM reviews r
INNER JOIN listings_cleansed lc 
ON lc.listing_id = r.listing_id 
and DATE(r.review_date) <= DATE(lc.created_at)