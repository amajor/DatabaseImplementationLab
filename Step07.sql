/*************** Case Project 5-1: Implementing a New Database ****************/
/*  Step 7:
 *  Using a LEFT OUTER JOIN, retrieve all Product Descriptions that have no 
 *  associated inventory.
 ******************************************************************************/
USE ProductInformation;

SELECT Description
FROM Product
LEFT OUTER JOIN Inventory
ON [Product].[ProductID] = [Inventory].[ProductID]
WHERE InventoryID IS NULL;