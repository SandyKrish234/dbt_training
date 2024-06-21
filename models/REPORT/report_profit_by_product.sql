select productid,
productname,
category,
subcategory,
sum(profit) as total_profit
from {{ ref('STG_ORDERS') }}
group by 
productid,
productname,
category,
subcategory
