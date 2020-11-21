/*************** Case Project 5-1: Implementing a New Database ****************/
/*  Step 6:
 *  Using a DELETE statement that contains a subquery in the WHERE clause,
 *  delete the inventory record(s) for the Product Description
 *  'Nonstick saucepan'
 ******************************************************************************/
USE ProductInformation;

/* Test our condition to confirm the data we'll remove */
SELECT * FROM Product WHERE Description = 'Nonstick saucepan'; -- This returns ProductID = 10
SELECT * FROM Inventory; -- We will want the record where ProductID = 10, InventoryID = 8

/* See the products with removed data in context */
SELECT * FROM Inventory
WHERE ProductID IN (
	SELECT ProductID FROM Product WHERE Description = 'Nonstick saucepan'
);

/* Remove the data */
DELETE FROM Inventory
WHERE ProductID IN (
	SELECT ProductID FROM Product WHERE Description = 'Nonstick saucepan'
);

/* Confirm inventory for ProductID = 10, InventoryID = 8 is now gone */
SELECT * FROM Inventory; -- We will want the record where ProductID = 10