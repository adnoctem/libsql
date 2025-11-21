-- variables
SET @image_path = '/wp-content/uploads/2024/07/some_picture_i_need_the_id_for.jpg';
SET @image_url = '';

SELECT CONCAT('<HOSTNAME>', @image_path) into @image_url;

select * from RtoLnMeqposts 
         where guid COLLATE utf8mb4_unicode_ci = 
               @image_url COLLATE utf8mb4_unicode_ci;