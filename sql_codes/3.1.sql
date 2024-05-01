-- 3.1
EXPLAIN ANALYZE
SELECT * FROM Food_Item WHERE photo_url LIKE "%http://weber.info%";
CREATE INDEX idx_food_item_photo_url ON Food_Item(photo_url);
EXPLAIN ANALYZE
SELECT * FROM Food_Item WHERE photo_url LIKE "%http://weber.info%";
