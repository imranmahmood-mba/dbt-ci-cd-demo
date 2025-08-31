
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Check if the total price is negetive.
select orders.o_totalprice
from TECHNOVATION.DEV.src_orders as orders
where orders.o_totalprice < 0
  
  
      
    ) dbt_internal_test