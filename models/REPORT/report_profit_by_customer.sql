select 
customerid,customername,sum(profit) as total_profit
from
{{ ref('STG_ORDERS') }}
group by
customerid,customername