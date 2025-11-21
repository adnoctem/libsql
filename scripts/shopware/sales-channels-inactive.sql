-- variables
SET @sales_channel := '';

select sales_channel.id
into @sales_channel
from shopware.sales_channel
where not active;

-- select @sales_channel as '';

-- NOTE: @sales_channel now has the (string) value '019a258c-cecd-72e6-a7e7-3fb63ad1dd9e'. To use it in a query
--          said string represenstation needs to be converted to binary again. Like so:
--
-- ref: https://stackoverflow.com/questions/28251144/inserting-and-selecting-uuids-as-binary16
--
-- select *
-- from shopware.customer
-- where sales_channel_id = UNHEX(REPLACE('019a258c-cecd-72e6-a7e7-3fb63ad1dd9e', '-', ''));

select *
from shopware.customer
where sales_channel_id = @sales_channel;