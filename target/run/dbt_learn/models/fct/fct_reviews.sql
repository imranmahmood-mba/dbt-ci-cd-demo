
  
    

        create or replace transient table airbnb.raw.fct_reviews
         as
        ( 
WITH src_reviews AS (
    SELECT * FROM airbnb.raw.src_reviews
)
SELECT * FROM src_reviews WHERE review_text is not null 

        );
      
  