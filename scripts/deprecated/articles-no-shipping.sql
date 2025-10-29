use d0332813;

select s_articles_attributes.articledetailsID,
       s_articles_attributes.shipstatus,
       s_articles_details.id,
       s_articles_details.ordernumber
from s_articles_details
    left join s_articles_attributes
        on s_articles_details.id = s_articles_attributes.articledetailsID
    where s_articles_attributes.shipstatus = 1
      and s_articles_attributes.shipprice = 0
    group by s_articles_details.ordernumber;