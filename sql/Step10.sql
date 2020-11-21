/*************** Case Project 5-1: Implementing a New Database ****************/
/*  Step 10:
 *  Create a SELECT statement that lists the total inventory on hand (expressed
 *  as UnitPrice * UnitsOnHand) for each ProductCategory.
 *  --> Only return records where the total inventory on hand for a product category
 *      is greater than $150.
 *  --> Order the output by total inventory on hand in descending order.
 *  --> Use a column alias to assign any calculated columns a meaningful name.
 ******************************************************************************/
USE ProductInformation;

/* Products with their TotalInventoryOnHand */
SELECT 
	Product.ProductID,
	ProductCategoryID,
	UnitPrice,
	UnitsOnHand,
	UnitPrice * UnitsOnHand AS TotalInventoryOnHand
FROM Product
LEFT OUTER JOIN Inventory
ON Product.ProductID = Inventory.ProductID
ORDER BY ProductCategoryID ASC;

/* Combine total inventory table with Product Categories */
SELECT * 
FROM ProductCategory
LEFT OUTER JOIN (
	SELECT 
		Product.ProductID,
		ProductCategoryID,
		UnitPrice,
		UnitsOnHand,
		UnitPrice * UnitsOnHand AS TotalInventoryOnHand
	FROM Product
	LEFT OUTER JOIN Inventory
	ON Product.ProductID = Inventory.ProductID
) ProductWithInventory
ON ProductWithInventory.ProductCategoryID = ProductCategory.ProductCategoryID
ORDER BY ProductCategory.ProductCategoryID ASC;

/* Combine total inventory table with Product Categories */
SELECT 
	ProductCategory.ProductCategoryID,
	ProductCategory.Description,
	SUM(TotalInventoryOnHand) AS SumTotalInventoryOnHand
FROM ProductCategory
LEFT OUTER JOIN (
	SELECT 
		Product.ProductID,
		ProductCategoryID,
		UnitPrice,
		UnitsOnHand,
		UnitPrice * UnitsOnHand AS TotalInventoryOnHand
	FROM Product
	LEFT OUTER JOIN Inventory
	ON Product.ProductID = Inventory.ProductID
) ProductWithInventory
ON ProductWithInventory.ProductCategoryID = ProductCategory.ProductCategoryID
GROUP BY ProductCategory.ProductCategoryID, ProductCategory.Description
HAVING SUM(TotalInventoryOnHand) > 150
ORDER BY SumTotalInventoryOnHand DESC;