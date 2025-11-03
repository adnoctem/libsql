-- variables
SET @raw_image_id := '';

select *
from shopware.media
where id like UNHEX(@raw_image_id);