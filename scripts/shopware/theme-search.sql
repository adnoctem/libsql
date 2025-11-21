-- variables
SET @theme_technical_name := '';

select config_values
from shopware.theme
where technical_name like @theme_technical_name;