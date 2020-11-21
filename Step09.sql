/*************** Case Project 5-1: Implementing a New Database ****************/
/*  Step 9:
 *  Create a SELECT statement that returns the top two products with the most
 *  inventory units on hand.
 ******************************************************************************/
USE ProductInformation;

SELECT TOP (2) 
	Product.ProductID,
	Description,
	Color,
	UnitPrice,
	UnitsOnHand
FROM Product
LEFT OUTER JOIN Inventory
ON [Product].[ProductID] = [Inventory].[ProductID]
ORDER BY UnitsOnHand DESC;