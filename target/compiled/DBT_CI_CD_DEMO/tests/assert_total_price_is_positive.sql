-- Check if the total price is negetive.
select orders.o_totalprice
from TECHNOVATION.DEV.src_orders as orders
where orders.o_totalprice < 0