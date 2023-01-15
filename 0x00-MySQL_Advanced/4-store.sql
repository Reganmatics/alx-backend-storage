-- Task 4. Buy buy buy
DELIMITER $$
CREATE TRIGGER update_item_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items SET quantity = quantity - NEW.quantity
    WHERE id = NEW.item_id;
END$$
DELIMITER ;
