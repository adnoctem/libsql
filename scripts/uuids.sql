/*
  Categories
*/
set @category_id = '';

select category_id
from shopware.category_translation
where name like 'Home'
group by name
into @category_id;

-- select @category_id AS '';

/*
  Sales Channel
*/
set @sales_channel_id = '';

select sales_channel_id
from shopware.sales_channel_translation
         inner join shopware.sales_channel
                    on sales_channel_id = sales_channel.id
where active
  and name like 'Storefront'
into @sales_channel_id;

-- select @sales_channel_id AS '';

/*
  Currency
*/
set @currency_id = '';

select id
from shopware.currency
where iso_code like 'EUR'
into @currency_id;

-- select @currency_id AS '';

/*
  Tax
*/

-- id for '19%'
set @tax_id_19 = '';

select id
from shopware.tax
where tax_rate = CAST(19 as decimal)
into @tax_id_19;

-- id for '7%'
set @tax_id_7 = '';

select id
from shopware.tax
where tax_rate = CAST(7 as decimal)
into @tax_id_7;

-- id for '0%'
set @tax_id_0 = '';

select id
from shopware.tax
where tax_rate = CAST(0 as decimal)
into @tax_id_0;

-- select @tax_id_19 AS '';
-- select @tax_id_7 AS '';
-- select @tax_id_0 AS '';

/*
  Language
*/

set @language_id_en = '';

select id
from shopware.language
where name = 'English'
into @language_id_en;

set @language_id_de = '';

select id
from shopware.language
where name = 'Deutsch'
into @language_id_de;

-- select @language_id_en AS '';
-- select @language_id_de AS '';

/*
  Images
*/

set @image_folder_id = '';

select id
from shopware.media_default_folder
where entity = 'product'
into @image_folder_id;

-- select @image_folder_id AS '';

/*
  print IDs
*/

-- select @category_id, @sales_channel_id, @currency_id, @tax_id_19, @tax_id_7, @tax_id_0, @language_id_en, @language_id_de, @image_folder_id AS '';

select HEX(REPLACE(@category_id, '-', '')),
       HEX(REPLACE(@sales_channel_id, '-', '')),
       HEX(REPLACE(@currency_id, '-', '')),
       HEX(REPLACE(@tax_id_19, '-', '')),
       HEX(REPLACE(@tax_id_7, '-', '')),
       HEX(REPLACE(@tax_id_0, '-', '')),
       HEX(REPLACE(@language_id_de, '-', '')),
       HEX(REPLACE(@language_id_en, '-', '')),
       HEX(REPLACE(@image_folder_id, '-', ''));