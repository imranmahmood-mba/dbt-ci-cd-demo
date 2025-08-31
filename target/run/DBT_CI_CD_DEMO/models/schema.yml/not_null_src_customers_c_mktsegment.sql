
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select c_mktsegment
from TECHNOVATION.DEV.src_customers
where c_mktsegment is null



  
  
      
    ) dbt_internal_test