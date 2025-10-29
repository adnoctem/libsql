-- variables
SET @sales_channel := '';
SET @migration_sales_channel := '';

-- get migration Sales Channel ID
select sales_channel.id
into @migration_sales_channel
from shopware.sales_channel
where not active;

-- get active Sales Channel ID
select sales_channel.id
into @sales_channel
from shopware.sales_channel
where active = 1
and updated_at is not NULL;

-- select @migration_sales_channel as '';
-- select @sales_channel as '';

-- NOTE: @sales_channel now has the (string) value '019a258c-cecd-72e6-a7e7-3fb63ad1dd9e'. To use it in a query
--          said string represenstation needs to be converted to binary again. Like so:
--
-- ref: https://stackoverflow.com/questions/28251144/inserting-and-selecting-uuids-as-binary16
--
-- select *
-- from shopware.customer
-- where sales_channel_id = UNHEX(REPLACE('019a258c-cecd-72e6-a7e7-3fb63ad1dd9e', '-', ''));

-- update customers
update shopware.customer
set sales_channel_id = @sales_channel
where sales_channel_id = @migration_sales_channel;

-- update newsletter recipients
update shopware.newsletter_recipient
set sales_channel_id = @sales_channel
where sales_channel_id = @migration_sales_channel;

-- update newsletter orders
update shopware.order
set sales_channel_id = @sales_channel
where sales_channel_id = @migration_sales_channel;

-- update product reviews
update shopware.product_review
set sales_channel_id = @sales_channel
where sales_channel_id = @migration_sales_channel;