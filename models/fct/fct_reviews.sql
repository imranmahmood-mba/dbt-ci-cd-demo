{{ 
    config(
    materialized = 'incremental',
    on_schema_change = 'fail'
    ) 
}} WITH src_reviews AS (
    SELECT * FROM {{ ref('src_reviews') }}
),

max_date AS (
    SELECT max(review_date) AS max_review_date FROM {{ this }}
)

SELECT * FROM src_reviews WHERE
    review_text IS NOT null
    {% if is_incremental() %}
        AND review_date > (SELECT max_date.max_review_date FROM max_date)
    {% endif %}
