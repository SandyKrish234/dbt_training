select 
o.order_id,
o.order_date,
c.customerid,
c.CustomerName,
p.productid,
p.productname,
p.category,
p.subcategory,
(o.order_selling_price - o.order_cost_price) as profit 
from 
{{ ref('RAW_ORDERS') }} as o left join {{ ref('RAW_CUSTOMER') }} as c on c.customerid=o.customer_id
left join {{ ref('RAW_PRODUCTS') }} as p on p.productid=o.product_id