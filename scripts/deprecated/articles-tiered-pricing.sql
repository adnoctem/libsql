use d0332813;

select count(*),
       s_articles_prices.articledetailsID,
       s_articles_details.id,
       s_articles_details.ordernumber
from s_articles_details
    inner join s_articles_prices
        on s_articles_details.id = s_articles_prices.articledetailsID
    group by s_articles_prices.articledetailsID
having count(*) > 4;
