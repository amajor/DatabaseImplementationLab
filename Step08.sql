/*************** Case Project 5-1: Implementing a New Database ****************/
/*  Step 8:
 *  Create a SELECT query that lists the Product Descriptions and the total
 *  inventory on hand (expressed as UnitPrice * UnitsOnHand). Use a column alias
 *  to assign any calculated columns a meaningful name in the result set.
 ******************************************************************************/
USE ProductInformation;

SELECT 
	Description,
	UnitPrice,
	UnitsOnHand,
	UnitPrice * UnitsOnHand AS TotalInventoryOnHand
FROM Product
LEFT OUTER JOIN Inventory
ON [Product].[ProductID] = [Inventory].[ProductID];