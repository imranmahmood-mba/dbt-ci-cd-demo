
    
    

select
    c_custkey as unique_field,
    count(*) as n_records

from TECHNOVATION.DEV.src_customers
where c_custkey is not null
group by c_custkey
having count(*) > 1


