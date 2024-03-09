
select P.PRODUCT_CODE, sum(P.PRICE * O.SALES_AMOUNT) as SALES
from PRODUCT P join (select PRODUCT_ID, SALES_AMOUNT
                     from OFFLINE_SALE) O
                     on P.PRODUCT_ID = O.PRODUCT_ID
group by P.PRODUCT_ID
order by SALES desc, P.PRODUCT_CODE