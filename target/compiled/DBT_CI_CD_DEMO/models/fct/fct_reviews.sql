 
WITH src_reviews AS (
    SELECT * FROM airbnb.raw.src_reviews
)
SELECT * FROM src_reviews WHERE review_text is not null 

 AND review_date > ( select max(review_date) from airbnb.raw.fct_reviews ) 
