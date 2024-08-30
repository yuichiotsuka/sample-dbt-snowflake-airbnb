
SELECT
    *

FROM
    {{ ref('dim_listings_cleansed') }} l

WHERE
    EXISTS (
        SELECT 1
        FROM {{ ref('fct_reviews') }} r
        WHERE r.listing_id = l.listing_id
        AND r.review_date <= l.created_at
    )

LIMIT 1
